/* 
DigiLFO - Firmware for DigiLFO Eurorack module

Runs on ATmega328 microcontroller.

Copyright 2021 Len Popp

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

#define INLINE __attribute__((always_inline))

// Macros to access flash program memory.
#define PMEMB(addr) pgm_read_byte_near(addr)
#define PMEMW(addr) pgm_read_word_near(addr)

// Macros to manipulate bits in control registers.
// setBit(), clrBit() can be used as efficient substitutes for digitalWrite().
#define setBit(xPORT, xBIT) xPORT |= (1 << (xBIT))
#define setBits(xPORT, xBITS, xMASK) xPORT = (xPORT & ~(xMASK)) | (xBITS)
#define clrBit(xPORT, xBIT) xPORT &= (~(1 << (xBIT)))

// Word32 is a 32-bit word whose individual bytes can be accessed for efficiency.
struct Word32
{
  union
  {
    uint32_t w;
    struct
    {
      uint8_t b0;
      uint8_t b1;
      uint8_t b2;
      uint8_t b3;
    };
  };
};

//
// Data tables
//

#include "numtables.h"

volatile unsigned long counterTimeTest = 0; // TODO: REMOVE - used in timeTest()

//
// I/O Definitions
//

// For some I/O pins we define both the Arduino pin number and the chip register & bit
// so that we can access the pin directly for efficiency in time-critical code.

const byte pinLED = 3;          // The LED is on a Timer2 PWM pin (output)

const byte pinSwRangeLow = 4;   // Frequency range switch - low (input)
const byte pinSwRangeHigh = 5;  // Frequency range switch - high (input)
const byte pinSwWave = 6;       // The wave-type switch (input)

// Analog CV inputs
const byte pinCVInExt = 0;
const byte pinCVInKnob = 1;
const word wCVInMax = 1227;

void initIOPins()
{
  pinMode(pinLED, OUTPUT);
  pinMode(pinSwWave, INPUT_PULLUP);
  pinMode(pinSwRangeLow, INPUT_PULLUP);
  pinMode(pinSwRangeHigh, INPUT_PULLUP);
  analogReference(DEFAULT);
}

//
// SPI Interface to DACs
//

const SPISettings settings(20000000, MSBFIRST, SPI_MODE0);

const byte pinCS1 = 9;          // SPI chip-select for DAC 1 (output)
const byte pinBitCS1 = 1;
const byte pinCS2 = 10;         // SPI chip-select for DAC 2 (output)
const byte pinBitCS2 = 2;
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
  pinMode(pinCS2, OUTPUT);
  digitalWrite(pinCS2, HIGH);
  SPI.begin();
  // SPI settings don't change so beginTransaction() is only called once to save time.
  SPI.beginTransaction(settings);
}

INLINE void SPISendToDAC(word wNum, byte pinBitCS, byte bDACUnit)
{
  // Make up the SPI command word for the MCP4821/4822 DAC
  // wNum is the value to output - only the top 12 bits are used.
  word wSPIData = wDACCmdDefault | ((word)bDACUnit << bitDACAB)| (wNum >> 4);
  //SPI.beginTransaction(settings); // moved to setup() - not necessary to do this every time
  //digitalWrite(pinCS, LOW);
  clrBit(pinPortCS, pinBitCS);
  SPI.transfer16(wSPIData);
  //digitalWrite(pinCS, HIGH);
  setBit(pinPortCS, pinBitCS);
  //SPI.endTransaction(); // don't do every time
}

//
// Digital Synthesis
//

// Timer interrupt settings
// freqTimer, compareTimer, bitsTimerPrescaler must all be set to match
const word freqTimer = 20000;           // timer interrupt frequency
const word compareTimer = 799;          // compare value for timer interrupts
const byte bitsTimerPrescaler = 0b001;  // /1 timer clock prescaler
const byte maskTimerPrescaler = 0b111;  // bit mask for setting the prescaler

Word32 phaseCurrent; // defined as Word32 so its bytes can be accessed individually.
volatile uint32_t phaseIncrement;

volatile bool fSineWaves = true;  // true: sine waves; false: saw, triangle, square waves
volatile word wLFOLED = 0;        // Current value of LFO channel 1 output, for the flashing LED

// Three different phases of sine waves are produced by offsetting the index in the lookup table.
const word phaseSine0 = 0;
const word phaseSine120 = cSineTable / 3;
const word phaseSine240 = (2 * cSineTable) / 3;
const word wLFOOutMax = 65535;

void initLFOState()
{
  // Initialize the LFO state.
  phaseCurrent.w = 0;
  phaseIncrement = 10; // arbitrary value, will be changed immediately
}

uint32_t getLFOFrequencyForCV(word wCV)
{
  // Convert a CV value (0 - 1023 from ADC) to a frequency value (Hz << 15).
  // Note that wCV may be greater than 1023, to allow greater range for the front-panel knob.
  // For the CV input, this should be scaled to 1 V/octave.
  word index = wCV >> 1;
  if (index >= cFreqMapTable) {
    // Error: FreqMapTable index out of range
    return 0;
  }
  // Interpolate between two table values.
  // FreqMapTable entries are in progmem
  word* addr = FreqMapTable + index;
  word w0 = PMEMW(addr); // FreqMapTable[index];
  word w1 = PMEMW(addr + 1); // FreqMapTable[index + 1];
  uint32_t frequency = w0;
  if (wCV & 1) {
    frequency += w1;
  } else {
    frequency *= 2;
  }
  frequency <<= 6; // frequency is defined as freqency * 32768, to line up with phase & phaseIncrement
  return frequency;
}

void setLFOFreq(uint32_t frequency)
{
  // frequency is scaled by 32768, i.e. frequency = Hz << 15.
  // For frequency of 1 Hz, phaseIncrement will be 838
  phaseIncrement = (frequency * cSineTable) / freqTimer;
}

word INLINE getCurrentLFOSine(word indexStart)
{
  // Find the appropriate table entry for the current phase.
  // Table index is taken from 9 bits in the middle of phaseCurrent.
  word index = (phaseCurrent.b2 << 1) | (phaseCurrent.b1 >> 7);
  if (index >= cSineTable) {
    // Error: SineTable index out of range
    return 0;
  }

  // Apply the given phase offset
  index += indexStart;
  index &= 511; // index = index % 512, because binary

  // Interpolate between two adjacent table entries based on
  // the next 3 bits of phaseCurrent.
  // SineTable entries are in progmem
  word* addr = SineTable + index;
  word w0 = PMEMW(addr); // SineTable[index];
  word w1 = PMEMW(addr + 1); // SineTable[index + 1];
  uint32_t value32 = w0;
  word wT = (phaseCurrent.b1 & 0x10) ? w1 : w0;
  value32 = (value32 + wT) >> 1;
  wT = (phaseCurrent.b1 & 0x20) ? w1 : w0;
  value32 = (value32 + wT) >> 1;
  wT = (phaseCurrent.b1 & 0x40) ? w1 : w0;
  value32 = (value32 + wT) >> 1;
  return (word)value32;
}

word INLINE getCurrentLFOSawtooth()
{
  return ((word)phaseCurrent.b2 << 8) | phaseCurrent.b1;
}

word INLINE getCurrentLFOSquare()
{
  return (phaseCurrent.b2 & 0x80) ? wLFOOutMax : 0;
}

word INLINE getCurrentLFOTriangle()
{
  word wLFO = ((word)phaseCurrent.b2 << 9) | ((word)phaseCurrent.b1 << 1) | (phaseCurrent.b0 >> 7);
  if (phaseCurrent.b2 & 0x80) wLFO = wLFOOutMax - wLFO;
  return wLFO;
}

// Timer Interrupt Handler

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

// This is where the LFO waveforms are calculated and output.
ISR(TIMER1_COMPA_vect)
{
  // TEST: for TimeTest
  counterTimeTest++;

  // Increment the LFO state
  phaseCurrent.w += phaseIncrement;

  // Get and output the current LFO voltages.
  word wLFO1, wLFO2, wLFO3;
  if (fSineWaves) {
    // Synthesize three sine waves with different phases.
    wLFO1 = getCurrentLFOSine(phaseSine0);
    wLFO2 = getCurrentLFOSine(phaseSine120);
    wLFO3 = getCurrentLFOSine(phaseSine240);
  } else {
    // Synthesize three other waveforms.
    wLFO1 = getCurrentLFOSawtooth();
    wLFO2 = getCurrentLFOTriangle();
    wLFO3 = getCurrentLFOSquare();
  }

  // Output the waveform voltages to the DACs.
  // Inhibit the DAC outputs and set them all at once at the end.
  //digitalWrite(pinLDAC, HIGH);
  setBit(pinPortLDAC, pinBitLDAC);
  // Send the data to the DAC chips via SPI.
  SPISendToDAC(wLFO1, pinBitCS1, bDACUnitA); // send to DAC 1 unit A
  SPISendToDAC(wLFO2, pinBitCS1, bDACUnitB); // send to DAC 1 unit B
  SPISendToDAC(wLFO3, pinBitCS2, bDACUnitA); // send to DAC 2
  // Latch the DAC outputs.
  //digitalWrite(pinLDAC, LOW);
  clrBit(pinPortLDAC, pinBitLDAC);

  wLFOLED = wLFO1; // Export one wave value so it can be used to flash an LED.
}

//
// Timed Tasks
//

// These tasks have lower priority than the LFO wave generation.
// They are executed from loop(), not from the timer interrupt.

// BlinkLFOLED - Blink the LFO indicator LED
const unsigned dtBlinkLFOLED = 3;
void BlinkLFOLED(unsigned long tNow)
{
  // Flash an LED to indicate the LFO.
  byte b = wLFOLED >> 8;
  // Light curve mapping to make the LED look nicer.
  // LEDMapTable entries are in progmem
  byte* addr = LEDMapTable + b;
  b = PMEMB(addr); // LEDMapTable[index];
  analogWrite(pinLED, b);
}
TimedTask taskBlinkLFOLED(dtBlinkLFOLED, BlinkLFOLED);

// UpdateLFOFrequency - Read the CV inputs and update the LFO frequency.
const unsigned dtUpdateLFOFrequency = 49;
void UpdateLFOFrequency(unsigned long tNow)
{
  static unsigned wCVInSave = 9999; // initialize to out-of-range value
  // The range of the ADC 0-1023 is converted to a frequency so that 
  // the external CV has a 1V/octave response.
  // Sum the three inputs to get a "pitch" value (not an exact pitch).
  unsigned wCVIn;
  // External CV input - 1V/octave over 10 octaves
  wCVIn = analogRead(pinCVInExt);
  // Front-panel knob - Scale this so it covers 8 octaves
  // rather than 10 octaves to make adjustments less fiddly.
  wCVIn += ((analogRead(pinCVInKnob) * 8) / 10);
  // Range switch - Add 2 or 4 octaves.
  if (digitalRead(pinSwRangeLow) == LOW) {
    ; // low range selected - add nothing
  } else if (digitalRead(pinSwRangeHigh) == LOW) {
    wCVIn += 410; // high range selected - add 4 octaves
  } else {
    wCVIn += 205; // mid range by default - add 2 octaves
  }
  if (wCVIn > wCVInMax) wCVIn = wCVInMax;
  // Only change the frequency if it needs to change.
  if (wCVIn != wCVInSave) {
    wCVInSave = wCVIn;
    // Get the frequency value corresponding to the input "pitch" value.
    unsigned long freqLFO = getLFOFrequencyForCV(wCVIn);
    setLFOFreq(freqLFO);
  }
}
TimedTask taskUpdateLFOFrequency(dtUpdateLFOFrequency, UpdateLFOFrequency);

// UpdateWaveType - Read the waveform-type switch.
const unsigned dtUpdateWaveType = 51;
void UpdateWaveType(unsigned long tNow)
{
  fSineWaves = (digitalRead(pinSwWave) == HIGH);
}
TimedTask taskUpdateWaveType(dtUpdateWaveType, UpdateWaveType);

// DebugOut - Debug Output
const unsigned dtDebugOut = 100;//249;
const byte cchStars = 64;
char szDebug[cchStars+1];
char achStars[cchStars+1] = "****************************************************************";
void DebugOut(unsigned long tNow)
{
  //Serial.println(wLFOLED);
  //Serial.println(phaseIncrement);
  byte bLFO = (wLFOLED >> 10);
  if (bLFO > cchStars) {
    Serial.println('??');
  } else {
    memcpy(szDebug, achStars, bLFO);
    szDebug[bLFO] = 0;
    Serial.println(szDebug);
  }
}
TimedTask taskDebugOut(dtDebugOut, DebugOut);

//
// The Usual
//

void setup()
{
  Serial.begin(115200);
  Serial.println("\nDigiLFO start");
  initLFOState();
  initIOPins();
  initSPI();
  initTimerInterrupt();
}

void loop()
{
  // Execute low-priority timed tasks
  unsigned long tNow = millis();
  taskUpdateLFOFrequency.Tick(tNow);
  taskBlinkLFOLED.Tick(tNow);
  taskUpdateWaveType.Tick(tNow);
  //taskDebugOut.Tick(tNow);
}
