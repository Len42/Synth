# Voltage-Controlled Digital LFO

## 4HP Eurorack Module

<img src="DigiLFO.jpg" style="float:right">

### Features
- LFO rate from approx. 0.05 Hz (20 seconds) to 200 Hz
- CV input for LFO rate, with attenuator
- Three simultaneous waveform outputs, switchable between:
    - triangle, ramp, and square, or
	- three sine waves, 120° out of phase

### Notes

The LFO is implemented by an Arduino-compatible ATmega328P microcontroller. The firmware source code is an Arduino sketch in firmware/DigiLFO/DigiLFO.ino. MakeLookupTables is a program that generates the numtables.h file that has data tables used in the firmware.

This module is built using the [Delptronics Module Construction Set](https://delptronics.com/module-construction-set.php) which includes PCBs for the front panel controls and other components. The PCB layout file is just a guide showing how I placed the components on the Delptronics boards. (It's a bit of a mess - sorry!)

Please note that I am a hobbyist, not a trained electronics engineer. No guarantees!

© 2021 Len Popp CC BY