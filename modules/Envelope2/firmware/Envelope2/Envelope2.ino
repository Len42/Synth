/* 
Firmware for Envelope2 Eurorack module

Copyright 2022 Len Popp

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#include <SPI.h>
#include "TimedTask.h"

//
// Misc Definitions
//

#define _TO_STR(x) #x
#define TO_STR(x) _TO_STR(x)

static const char sCompilerVersion[] = "gcc version " TO_STR(__GNUC__) "." TO_STR(__GNUC_MINOR__) "." TO_STR(__GNUC_PATCHLEVEL__);

// Debugging flags
//#define DEBUG
#ifdef DEBUG
#define DEBUG_ERROR_COUNTER
//#define DUMMY_READS
#define DEBUG_FAKE_GATES
//#define DEBUG_ENV_DUMP
#define DEBUG_ENV_OUTPUT
//#define DEBUG_TIME_TEST
#define DEBUG_WATCHDOG
#else // !DEBUG
#define DEBUG_ERROR_COUNTER
#define DEBUG_WATCHDOG
#endif

#define INLINE __attribute__((always_inline))

// Macros to access flash program memory.
#define PMEMB(addr) pgm_read_byte_near(addr)
#define PMEMW(addr) pgm_read_word_near(addr)
#define PMEMD(addr) pgm_read_dword_near(addr)

// Macros to manipulate bits in control registers.
// setBit(), clrBit() can be used as efficient substitutes for digitalWrite().
#define setBit(xPORT, xBIT) xPORT |= (1 << (xBIT))
#define setBits(xPORT, xBITS, xMASK) xPORT = (xPORT & ~(xMASK)) | (xBITS)
#define clrBit(xPORT, xBIT) xPORT &= (~(1 << (xBIT)))

#ifdef DEBUG_TIME_TEST
volatile unsigned long counterTimeTest = 0;
#endif
#ifdef DEBUG_ERROR_COUNTER
volatile unsigned long counterErrors = 0;
#endif

// Word32 is a 32-bit word whose individual bytes can be accessed for efficiency.
struct Word32
{
  union
  {
    uint32_t dw;
    struct
    {
      uint8_t b0;
      uint8_t b1;
      uint8_t b2;
      uint8_t b3;
    };
  };
  Word32() { }
  Word32(uint32_t dw) { this->dw = dw; }
};

//
// Data tables
//

#include "numtables.h"

//
// I/O Definitions
//

// For some I/O pins we define both the Arduino pin number and the chip register & bit
// so that we can access the pin directly for efficiency in time-critical code.

// Lin/Log switch inputs
const byte pinSwLogLin1 = 4;
const byte pinSwLogLin2 = 7;

// Gate inputs (also used as interrupts)
const byte pinGate1 = 2;
const byte pinGate2 = 3;

// LED PWM outputs
const byte pinLED1 = 5;          // The LED is on a Timer0 PWM pin (output)
const byte pinLED2 = 6;          // The LED is on a Timer0 PWM pin (output)

// ADC channel selection
const byte pinChannelSel = 9;
#ifdef CHANNEL_SEL_2_PINS // if a second switch control is needed, e.g. for CD4016/4066
const byte pinChannelSel2 = 10;
#endif

void initIOPins()
{
  pinMode(pinGate1, INPUT);
  pinMode(pinGate2, INPUT);
  pinMode(pinSwLogLin1, INPUT_PULLUP);
  pinMode(pinSwLogLin2, INPUT_PULLUP);
  pinMode(pinLED1, OUTPUT);
  pinMode(pinLED2, OUTPUT);
  pinMode(pinChannelSel, OUTPUT);
#ifdef CHANNEL_SEL_2_PINS // if a second switch control is needed, e.g. for CD4016/4066
  pinMode(pinChannelSel2, OUTPUT);
#endif
  analogReference(DEFAULT);
}

#ifdef DUMMY_READS
int dummyDigitalRead(byte pin)
{
  int n;
  switch (pin) {
  case pinSwLogLin1:
  case pinSwLogLin2:
    n = HIGH; // linear envelope
    break;
  //case pinGate1:
  //case pinGate2:
  //  n = digitalRead(pin); // really read a gate signal
  //  break;
  default:
    n = LOW;
    break;
  }
  return n;
}
#endif

int readDigitalPin(byte pin)
{
  int w;
#ifdef DUMMY_READS
  w = dummyDigitalRead(pin);
#else
  w = digitalRead(pin);
#endif
  return w;
}

#ifdef DUMMY_READS
unsigned dummyAnalogRead(byte pin)
{
  unsigned w;
  switch (pin) {
    case 4:
      w = 512; // 50% sustain
      break;
    default:
      w = 621; // 0.5s A, D, R
      break;
  }
  return w;
}
#endif

unsigned readADCPin(byte pin)
{
  unsigned w;
#ifdef DUMMY_READS
  w = dummyAnalogRead(pin);
#else
  w = analogRead(pin);
#endif
  return w;
}

uint32_t readTimeInput(byte pin)
{
  // Read an A, D or R knob and return the corresponding timer increment value.
  unsigned w = readADCPin(pin);
  if (w > cTimeInputMapTable)
    w = cTimeInputMapTable;
  return PMEMD(TimeInputMapTable + w); // TimeInputMapTable[w];
}

unsigned readSustainInput(byte pin)
{
  // Read a Sustain knob and return the corresponding sustain value.
  unsigned w = readADCPin(pin);
  // Sustain range is zero to 4095.
  if (w >= 1023)
    w = 4095;
  else
    w <<= 2;
  return w;
}

//
// Envelope Implementation
//

class ADSREnvelope
{
public:
  ADSREnvelope(byte pinA, byte pinD, byte pinS, byte pinR, byte pinL, byte pinG);

  bool IsLooping() const { return fLoop; }
  word CurrentOutput() const { return wCurOut; }

  void ReadControls();
  void HandleGateInterrupt();
  void GateStart();
  void GateStop();
  void Increment();

private:
  // Parameters
  uint32_t  dwIncrAttack;   // per-tick increment for attack
  uint32_t  dwIncrDecay;    // per-tick increment for decay
  word      wSustain;       // sustain level 0-4095
  uint32_t  dwIncrRelease;  // per-tick increment for release
  bool      fLogarithmic;   // true = logarithmic, false = linear
  bool      fLoop;          // true = loop mode NOTE: not supported

  // Envelope states/phases
  typedef enum {
    stateOff, stateAttack, stateDecay, stateSustain, stateRelease
  } ADSRState;

  // Current state
  ADSRState state;          // current envelope phase/state
  Word32    dwCurPos;       // current position in the envelope curve (24 bits)
  word      wCurOut;        // current output level 0-4095
  word      wOutOffset;     // output offset, used in decay phase

  static const word wOutputRange = 4096;
  static const uint32_t dwPosRange = ((uint32_t)wOutputRange) << 12;

  // Input pins
  // Analog
  const byte  pinAttack;
  const byte  pinDecay;
  const byte  pinSustain;
  const byte  pinRelease;
  // Digital
  const byte  pinLogLin;
  const byte  pinGate;

private:
  void InitAttack();
  void IncrementAttack();
  void InitDecay();
  void IncrementDecay();
  void InitSustain();
  void UpdateSustain();
  void InitRelease();
  void IncrementRelease();
  void StopEnvelope();
  static word LookupAttackValue(word wValue);
  static word InterpolateAttackValue(word wValue);
  static word LookupDecayValue(word wValue);
  static word InterpolateDecayValue(word wValue);

// Debugging functions
public:
#ifdef DEBUG_ENV_DUMP
  void Dump();
#endif
#ifdef DEBUG_ENV_OUTPUT
  void DebugOut();
  bool fDisplayOn;
  unsigned long tStart;
#endif
};

ADSREnvelope::ADSREnvelope(byte pinA, byte pinD, byte pinS, byte pinR, byte pinL, byte pinG)
  : dwIncrAttack(512),
  dwIncrDecay(512),
  wSustain(1000),
  dwIncrRelease(512),
  fLogarithmic(false),
  fLoop(false),
  state(stateOff),
  dwCurPos(0),
  wCurOut(0),
  wOutOffset(0),
  pinAttack(pinA),
  pinDecay(pinD),
  pinSustain(pinS),
  pinRelease(pinR),
  pinLogLin(pinL),
  pinGate(pinG)
#ifdef DEBUG_ENV_OUTPUT
  ,fDisplayOn(false),
  tStart(0)
#endif
{
}

void ADSREnvelope::ReadControls()
{
  // NOTE: The correct channel must be selected in the ADC switch
  // before calling this function.
  dwIncrAttack = readTimeInput(pinAttack);
  dwIncrDecay = readTimeInput(pinDecay);
  wSustain = readSustainInput(pinSustain);
  dwIncrRelease = readTimeInput(pinRelease);
  fLogarithmic = (readDigitalPin(pinLogLin) == LOW);
}

void ADSREnvelope::HandleGateInterrupt()
{
  if (readDigitalPin(pinGate) == HIGH)
    GateStart();
  else
    GateStop();
}

void ADSREnvelope::GateStart()
{
  // Gate signal has gone high - Start the envelope!
  InitAttack();
}

void ADSREnvelope::GateStop()
{
  // Gate signal has gone low - Transition to Release state.
  // If the envelope isn't currently in an appropriate state, do nothing.
  if (state != stateOff && state != stateRelease) {
    InitRelease();
  }
}

void ADSREnvelope::Increment()
{
  switch (state) {
    case stateAttack:
      IncrementAttack();
      break;
    case stateDecay:
      IncrementDecay();
      break;
    case stateSustain:
      UpdateSustain();
      break;
    case stateRelease:
      IncrementRelease();
      break;
    case stateOff:
    default:
      // do nothing
      break;
  }
}

void ADSREnvelope::InitAttack()
{
  // Attack starts from the current output value, even if not zero.
  //wCurOut = wCurOut;
  // If starting from a non-zero value, initialize dwCurPos so that it runs the
  // last part of the attack not the first. That simplifies the Increment() code
  // and gives a nicer logarithmic curve.
  word w = wCurOut;
  if (fLogarithmic) {
    // Log curve
    w = LookupAttackValue(w) << 2;
  }
  dwCurPos.dw = ((uint32_t)w) << 12;
  wOutOffset = 0;
  state = stateAttack;
}

void ADSREnvelope::IncrementAttack()
{
  dwCurPos.dw += dwIncrAttack;
  if (dwCurPos.b3 != 0) { //if (dwCurPos.dw > dwPosRange)
    // finished this phase of the envelope
    InitDecay();
  } else {
    word w = ((uint32_t)dwCurPos.dw) >> 12;
    if (fLogarithmic) {
      // Convert to a logarithmic curve
      w = InterpolateAttackValue(w);
    }
    wCurOut = w; // w - wOutOffset but wOutOffset is 0
  }
}

void ADSREnvelope::InitDecay()
{
  // Decay should always start from the maximum output value (otherwise the decay
  // phase wouldn't have started yet).
  wCurOut = wOutputRange - 1; // max output value
  // Initialize dwCurPos so that it runs the last part of the decay curve not the first.
  // That simplifies the Increment() code and gives a nicer logarithmic curve.
  word w = wSustain;
  if (fLogarithmic) {
    // Log curve
    w = LookupDecayValue(w) << 2;
  }
  dwCurPos.dw = ((uint32_t)w) << 12;
  wOutOffset = wSustain;
  state = stateDecay;
}

void ADSREnvelope::IncrementDecay()
{
  dwCurPos.dw += dwIncrDecay;
  if (dwCurPos.b3 != 0) { //if (dwCurPos.dw > dwPosRange)
    // finished this phase of the envelope
    if (fLoop) {
      // Loop mode: No sustain phase, continue right on to release
      InitRelease();
    } else {
      // Normal mode: Start sustain phase
      InitSustain();
    }
  } else {
    word w = ((uint32_t)dwCurPos.dw) >> 12;
    if (fLogarithmic) {
      // Convert to a logarithmic curve
      w = InterpolateDecayValue(w);
    }
    wCurOut = wOutputRange - 1 - w + wOutOffset;
  }
}

void ADSREnvelope::InitSustain()
{
  wCurOut = wSustain;
  dwCurPos.dw = 0;
  state = stateSustain;
}

void ADSREnvelope::UpdateSustain()
{
  // Update the current sustain level, in case the knob setting has changed.
  wCurOut = wSustain;
}

void ADSREnvelope::InitRelease()
{
  // Release starts from the current output value, even if it's not the sustain value.
  //wCurOut = wCurOut;
  // Initialize dwCurPos so that it runs the last part of the decay curve not the first.
  // That simplifies the Increment() code and gives a nicer logarithmic curve.
  word w = wOutputRange - 1 - wCurOut;
  if (fLogarithmic) {
    // Log curve
    w = LookupDecayValue(w) << 2;
  }
  dwCurPos.dw = ((uint32_t)w) << 12;
  wOutOffset = 0;
  state = stateRelease;
}

void ADSREnvelope::IncrementRelease()
{
  dwCurPos.dw += dwIncrRelease;
  if (dwCurPos.b3 != 0) { //if (dwCurPos.dw > dwPosRange)
    // finished this phase of the envelope
    if (fLoop) {
      // Loop mode: Restart the envelope immediately.
      wCurOut = 0;
      InitAttack();
    } else {
      // Normal mode: Just stop enveloping.
      StopEnvelope();
    }
  } else {
    word w = (((uint32_t)dwCurPos.dw) >> 12);
    if (fLogarithmic) {
      // Convert to a logarithmic curve
      w = InterpolateDecayValue(w);
    }
    wCurOut = wOutputRange - 1 - w;
  }
}

void ADSREnvelope::StopEnvelope()
{
  state = stateOff;
  dwCurPos = 0;
  wCurOut = 0;
}

/*
 * LookupAttackValue
 * Look up wValue in the attack curve table and return the index of the closest (equal or greater) value.
 * This is to initialize the attack portion of the envelope when it's not starting from zero.
 */
word ADSREnvelope::LookupAttackValue(word wValue)
{
  if (wValue == 0) {
    // must be handled specially
    return 0;
  } else {
    word iLo = 0;
    word iHi = cLogAttackMapTable - 1;
    if (wValue < PMEMW(LogAttackMapTable + iHi)) { // just in case wValue is out of range
      while (iHi - iLo > 1) {
        word iNew = (iLo + iHi) >> 1;
        word wNew = PMEMW(LogAttackMapTable + iNew); // LogAttackMapTable[iNew]
        if (wNew >= wValue)
          iHi = iNew;
        else
          iLo = iNew;
      }
    }
    return iHi;
  }
}

/*
 * InterpolateAttackValue
 * Convert wValue to a logarithmic value with table lookup and interpolation.
 */
word ADSREnvelope::InterpolateAttackValue(word wValue)
{
  // Log curve - Table lookup with interpolation using the bottom 2 bits of wValue
  word* pw = LogAttackMapTable + (wValue >> 2);
  word w0 = PMEMW(pw);   // LogAttackMapTable[(wValue >> 2)]
  word w1 = PMEMW(pw+1); // LogAttackMapTable[(wValue >> 2)+1]
  word wOut = w0;
  word wT = (wValue & 1) ? w1 : w0;
  wOut = (wOut + wT) >> 1;
  wT = (wValue & 2) ? w1 : w0;
  wOut = (wOut + wT) >> 1;
  return wOut;
}

/*
 * LookupDecayValue
 * Look up wValue in the decay/release curve table and return the index of the closest (equal or greater) value.
 * This is to initialize the decay & release portions of the envelope starting from any value.
 */
word ADSREnvelope::LookupDecayValue(word wValue)
{
  if (wValue == 0) {
    // must be handled specially
    return 0;
  } else {
    word iLo = 0;
    word iHi = cLogDecayMapTable - 1;
    if (wValue < PMEMW(LogDecayMapTable + iHi)) { // just in case wValue is out of range
      while (iHi - iLo > 1) {
        word iNew = (iLo + iHi) >> 1;
        word wNew = PMEMW(LogDecayMapTable + iNew); // LogDecayMapTable[iNew]
        if (wNew >= wValue)
          iHi = iNew;
        else
          iLo = iNew;
      }
    }
    return iHi;
  }
}

/*
 * InterpolateDecayValue
 * Convert wValue to a logarithmic value with table lookup and interpolation.
 */
word ADSREnvelope::InterpolateDecayValue(word wValue)
{
  // Log curve - Table lookup with interpolation using the bottom 2 bits of wValue
  word* pw = LogDecayMapTable + (wValue >> 2);
  word w0 = PMEMW(pw);   // LogDecayMapTable[(wValue >> 2)]
  word w1 = PMEMW(pw+1); // LogDecayMapTable[(wValue >> 2)+1]
  word wOut = w0;
  word wT = (wValue & 1) ? w1 : w0;
  wOut = (wOut + wT) >> 1;
  wT = (wValue & 2) ? w1 : w0;
  wOut = (wOut + wT) >> 1;
  return wOut;
}

#ifdef DEBUG_ENV_DUMP
void ADSREnvelope::Dump()
{
  Serial.print("ADSR pins="); Serial.print(pinAttack); Serial.print(' '); Serial.print(pinDecay); Serial.print(' '); Serial.print(pinSustain); Serial.print(' '); Serial.print(pinRelease);
  Serial.print(" state="); Serial.println(state);
  Serial.print("Log="); Serial.print(fLogarithmic);
  Serial.print(" Attack="); Serial.print(dwIncrAttack);
  Serial.print(" Decay="); Serial.print(dwIncrDecay);
  Serial.print(" Sustain="); Serial.print(wSustain);
  Serial.print(" Release="); Serial.println(dwIncrRelease);
  Serial.print("CurPos="); Serial.print(dwCurPos.dw); Serial.print(" index="); Serial.println(dwCurPos.dw >> 14);
  Serial.print("CurOut="); Serial.print(wCurOut); Serial.print(" Offset="); Serial.println(wOutOffset);
  Serial.print("OutputRange="); Serial.print(wOutputRange); Serial.print(" PosRange="); Serial.println(dwPosRange);
}
#endif

#ifdef DEBUG_ENV_OUTPUT
const byte cchStars = 64;
char szDebug[cchStars+1];
char achStars[cchStars+1] = "****************************************************************";

void ADSREnvelope::DebugOut()
{
  word w = wCurOut;
  if (!fDisplayOn) {
    if (w > 0) {
      fDisplayOn = true;
      tStart = millis();
    }
  } else {
    byte bValue = (w >> 6);
    if (bValue > cchStars) {
      Serial.print("?? "); Serial.print(w);
    } else {
      memcpy(szDebug, achStars, bValue);
      szDebug[bValue] = 0;
      Serial.print(szDebug);
    }
    Serial.println();
    if (w == 0) {
      fDisplayOn = false;
#ifdef DEBUG_ENV_DUMP
      Serial.print("time: "); Serial.println(millis() - tStart);
      Dump();
#endif
    }
  }
}
#endif // DEBUG_ENV_OUTPUT

volatile ADSREnvelope envelope1(0, 1, 4, 5, pinSwLogLin1, pinGate1);

volatile ADSREnvelope envelope2(2, 3, 4, 5, pinSwLogLin2, pinGate2);

//
// SPI Interface to DACs
//

const SPISettings settings(20000000, MSBFIRST, SPI_MODE0);

const byte pinCS1 = 10;         // SPI chip-select for DAC 1 (output)
const byte pinBitCS1 = 2;
//const byte pinCS2 = 10;       // SPI chip-select for DAC 2 (output)
//const byte pinBitCS2 = 2;
// All the CS lines are on the same port, to simplify the code.
#define pinPortCS PORTB

// MCP482x DAC
const byte pinLDAC = 8;         // DAC LDAC signal (output)
#define pinPortLDAC PORTB
const byte pinBitLDAC = 0;
// SPI commands
const byte bitDACAB = 15;       // 0 = unit A, 1 = unit B
const byte bDACUnitA = 0;
const byte bDACUnitB = 1;
const byte bitDACGain = 13;     // 0 = 2x, 1 = 1x
const byte bitDACShutdown = 12; // active low
const word wDACCmdDefault = ((0 << bitDACGain) | (1 << bitDACShutdown));

void initSPI()
{
  // SPI setup
  pinMode(pinLDAC, OUTPUT);
  digitalWrite(pinLDAC, LOW);
  pinMode(pinCS1, OUTPUT);
  digitalWrite(pinCS1, HIGH);
  //pinMode(pinCS2, OUTPUT);
  //digitalWrite(pinCS2, HIGH);
  SPI.begin();
  // SPI settings don't change so beginTransaction() is only called once to save time.
  SPI.beginTransaction(settings);
}

void SPISendToDAC(word wNum, byte pinBitCS, byte bDACUnit)
{
  // Send an SPI command word to the MCP4821/4822 DAC
  word wSPIData = wDACCmdDefault | ((word)bDACUnit << bitDACAB) | wNum;
  //SPI.beginTransaction(settings); // moved to setup() - not necessary to do this every time
  clrBit(pinPortCS, pinBitCS); //digitalWrite(pinCS, LOW);
  SPI.transfer16(wSPIData);
  setBit(pinPortCS, pinBitCS); //digitalWrite(pinCS, HIGH);
  //SPI.endTransaction(); // don't do this every time
}

//
// Timer Interrupt Handler
//

// Timer interrupt settings
// freqTimer, compareTimer, bitsTimerPrescaler must all be set to match
const word freqTimer = 20000; // 24000; // 25000; // 31250; // timer interrupt frequency
const word compareTimer = 799; // 666;  // 639; // 511; // compare value for timer interrupts
const byte bitsTimerPrescaler = 0b001;  // /1 timer clock prescaler
const byte maskTimerPrescaler = 0b111;  // bit mask for setting the prescaler
// According to the datasheet, frequency = fCLK_IO / (2 * prescale * (1 + compare))
// BUG: this gives freqTimer = 10000, not 20000 as measured

void initTimerInterrupt()
{
  // Set Timer1 interrupt frequency.
  cli();
  TCCR1A = 0;
  TCCR1B = 0;
  setBit(TCCR1B, WGM12); // mode = CTC with OCR1A
  // The prescaler and compare values must be set to match freqTimer.
  setBits(TCCR1B, bitsTimerPrescaler, maskTimerPrescaler);
  OCR1A = compareTimer;
  setBit(TIMSK1, OCIE1A); // enable timer compare interrupt
  TCNT1 = 0; // initialize counter value
  sei();
}

/*
 * Timer1 Interrupt Handler
 * This is where the envelopes are calculated and output.
 */
ISR(TIMER1_COMPA_vect)
{
#ifdef DEBUG_TIME_TEST
  counterTimeTest++;
#endif

  // Output the current envelope voltages to the DACs.
  // Inhibit the DAC outputs and set them all at once.
  setBit(pinPortLDAC, pinBitLDAC); //digitalWrite(pinLDAC, HIGH);
  // Send the data to the DAC chips via SPI.
  // Note that envelope 1 is output on DAC channel B and envelope 2 is on channel A.
  SPISendToDAC(envelope1.CurrentOutput(), pinBitCS1, bDACUnitB); // send to DAC 1 unit B
  SPISendToDAC(envelope2.CurrentOutput(), pinBitCS1, bDACUnitA); // send to DAC 1 unit A
  //SPISendToDAC(wOut3, pinBitCS2, bDACUnitA); // send to DAC 2
  // Latch the DAC outputs.
  clrBit(pinPortLDAC, pinBitLDAC); //digitalWrite(pinLDAC, LOW);

  // Increment the envelope states.
  envelope1.Increment();
  envelope2.Increment();
}

//
// Gate Interrupt Handlers
//

void initGateInterrupts()
{
  // Enable external interrupts INT0 & INT1 to be triggered by gate inputs
  cli();
  setBits(EICRA, 0b0101, 0b1111); // both interrupts triggered by any change on pin
  setBits(EIMSK, 0b11, 0b11); // both interrupts enabled
  sei();
}

ISR(INT0_vect)
{
  envelope1.HandleGateInterrupt();
}


ISR(INT1_vect)
{
  envelope2.HandleGateInterrupt();
}

//
// TaskBlinkLeds - Blink the indicator LEDs
//

class TaskBlinkLeds : public TimedTask
{
public:
  static const unsigned dtBlinkLEDs = 3;

  TaskBlinkLeds() : TimedTask(dtBlinkLEDs) {}

  void Task(unsigned long tNow)
  {
    blinkLED(pinLED1, envelope1.CurrentOutput());
    blinkLED(pinLED2, envelope2.CurrentOutput());
  }

  static void blinkLED(byte pin, word wValue)
  {
    // wValue is a 12-bit DAC output value
    byte b = wValue >> 4;
    // Light curve mapping to make the LED look nicer.
    // LEDMapTable entries are in progmem
    byte* addr = LEDMapTable + b;
    b = PMEMB(addr); // LEDMapTable[index];
    analogWrite(pin, b);
  }
};

TaskBlinkLeds taskBlinkLEDs;

//
// TaskReadControls - Read the front panel controls
//

class TaskReadControls : public TimedTask
{
public:
  static const unsigned dtReadControls = 50;

  TaskReadControls() : TimedTask(dtReadControls) {}

  void Task(unsigned long tNow)
  {
    // Read the front-panel controls for each of the envelopes.
    // Note that some ADC pins are shared via a CD4016 switch
    // so the appropriate channel must be selected before reading.
#ifdef CHANNEL_SEL_2_PINS // if a second switch control is needed, e.g. for CD4016/4066
    digitalWrite(pinChannelSel2, LOW);
#endif
    digitalWrite(pinChannelSel, HIGH);
    envelope1.ReadControls();
    digitalWrite(pinChannelSel, LOW);
#ifdef CHANNEL_SEL_2_PINS // if a second switch control is needed, e.g. for CD4016/4066
    digitalWrite(pinChannelSel2, HIGH);
#endif
    envelope2.ReadControls();
  }
};

TaskReadControls taskReadControls;

#ifdef DEBUG_WATCHDOG

//
// TaskWatchdog - Task to keep an eye on processor load
//

class TaskWatchdog : public TimedTask
{
public:
  static const unsigned dtWatchdog = 10;//250;
  static const unsigned dtError = dtWatchdog + 1;

  TaskWatchdog() : TimedTask(dtWatchdog) {}

  void Task(unsigned long tNow)
  {
    static unsigned long tPrevious = 0;
    static bool fErrorsSeen = false;
    unsigned long dt = tNow - tPrevious;
    // Check if this task is executing on time. Allow 1 millisecond of slop.
    if (dt > dtError && tPrevious != 0) {
      // This task did not execute at the expected time, implying that the processor is overloaded.
      // Increment the error counter; print a message only the first time.
#ifdef DEBUG_ERROR_COUNTER
      counterErrors++;
#endif
      if (!fErrorsSeen) {
        fErrorsSeen = true;
        Serial.print("ERROR: Processor overload - dt = ");
        Serial.print(dt); Serial.print(" should be "); Serial.println(dtWatchdog);
      }
    }
    tPrevious = tNow;
  }
};

TaskWatchdog taskWatchdog;

#endif // DEBUG_WATCHDOG

#ifdef DEBUG_ERROR_COUNTER

//
// TaskCheckErrors - Check Errors
//

class TaskCheckErrors : public TimedTask
{
public:
  static const unsigned dtCheckErrors = 10;

  TaskCheckErrors() : TimedTask(dtCheckErrors) {}

  void Task(unsigned long tNow)
  {
    if (counterErrors != 0) {
      unsigned long counterT = counterErrors;
      counterErrors = 0;
      Serial.print("*** ERROR "); Serial.print(counterT); Serial.println(" ***");
    }
  }
};

TaskCheckErrors taskCheckErrors;

#endif // DEBUG_ERROR_COUNTER

#ifdef DEBUG_FAKE_GATES

//
// TaskDebugGates - Fake gate signals for debugging
//

class TaskDebugGates : public TimedTask
{
public:
  static const unsigned dtDebugGates = 2000;

  TaskDebugGates() : TimedTask(dtDebugGates) {}
  
  void Task(unsigned long tNow)
  {
    static bool fGateOn = false;
    if (!fGateOn) {
      fGateOn = true;
      if (!envelope1.IsLooping())
        envelope1.GateStart();
      if (!envelope2.IsLooping())
        envelope2.GateStart();
    } else {
      fGateOn = false;
      if (!envelope1.IsLooping())
        envelope1.GateStop();
      if (!envelope2.IsLooping())
        envelope2.GateStop();
    }
  }
};

TaskDebugGates taskDebugGates;

#endif // DEBUG_FAKE_GATES

#ifdef DEBUG_ENV_OUTPUT

//
// TaskDebugOut - Debug Output
//

class TaskDebugOut : public TimedTask
{
public:
  static const unsigned dtDebugOut = 50;//101;

  TaskDebugOut() : TimedTask(dtDebugOut) {}

  void Task(unsigned long tNow)
  {
    envelope2.DebugOut();
  }
};

TaskDebugOut taskDebugOut;

#endif // DEBUG_ENV_OUTPUT

#ifdef DEBUG_TIME_TEST

//
// TaskDebugTimeTest - Time Test
//

class TaskDebugTimeTest : public TimedTask
{
public:
  static const unsigned dtDebugTimeTest = 2010;

  TaskDebugTimeTest() : TimedTask(dtDebugTimeTest) {}

  void Task(unsigned long tNow)
  {
    Serial.print("testing...");
    unsigned long n = 100000;
    volatile unsigned long i;
    unsigned long tStart = millis();
    counterTimeTest = 0;
    for (i = 0; i < n; i++) {
      ;
    }
    unsigned long tStop = millis();
    unsigned long dt = tStop - tStart;
    Serial.print("done ");
    Serial.print(n);
    Serial.print(" iterations in ");
    Serial.print(dt);
    Serial.print(" milliseconds, ");
    unsigned long freqInterrupt = (1000 * counterTimeTest) / dt;
    Serial.print(freqInterrupt);
    Serial.println(" interrupts/s");
  }
};

TaskDebugTimeTest taskDebugTimeTest;

#endif // DEBUG_TIME_TEST


//
// The Usual
//

void setup()
{
  Serial.begin(115200);
  Serial.println("\nEnvelope2 start");
  Serial.println(sCompilerVersion);

  initIOPins();
  initSPI();
  initTimerInterrupt();
  initGateInterrupts();
  // Loop mode: Start the envelopes looping.
  // NOTE: Loop mode is not fully implemented.
  if (envelope1.IsLooping())
    envelope1.GateStart();
  if (envelope2.IsLooping())
    envelope2.GateStart();
}

void loop()
{
  // Execute timed tasks
  // These tasks are lower priority than the interrupt handlers.
  unsigned long tNow = millis();
  taskBlinkLEDs.Tick(tNow);
  taskReadControls.Tick(tNow);

  // Debugging Tasks
#ifdef DEBUG_FAKE_GATES
  taskDebugGates.Tick(tNow);
#endif
#ifdef DEBUG_ENV_OUTPUT
  taskDebugOut.Tick(tNow);
#endif
#ifdef DEBUG_ERROR_COUNTER
  taskCheckErrors.Tick(tNow);
#endif
#ifdef DEBUG_TIME_TEST
  taskDebugTimeTest.Tick(tNow);
#endif
#ifdef DEBUG_WATCHDOG
  taskWatchdog.Tick(tNow);
#endif
}
