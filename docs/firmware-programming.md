# Firmware Programming

Some of my modules ([Envelope2][], [LFO-DigiVC][]) use an ATmega328P microcontroller with firmware that is programmed using the Arduino development environment. The firmware source code is provided as an Arduino sketch. There are a couple of ways to program the firmware onto the microcontroller chip.

## Programming the Microcontroller In Place

The module has a serial programming header so that it can be programmed just like an Arduino board. To do this requires:
1. an ATmega328P microcontroller that is programmed with the Arduino bootloader
1. an FTDI USB to TTL serial cable (available [here][FTDI-Adafruit] or [here][FTDI-Sparkfun])
1. a computer running the Arduino software ([download][Arduino-download])

ATmega328P chips can be purchased with the Arduino bootloader pre-programmed ([here][ATmega-Adafruit] or [here][ATmega-Sparkfun]), or you can program the bootloader onto an ATmega328P chip (see [here][bootloader] for info).

TBD - instructions

## Other stuff - TBD

[Envelope2]: https://github.com/Len42/Synth-pub/tree/main/modules/Envelope2
[LFO-DigiVC]: https://github.com/Len42/Synth-pub/tree/main/modules/LFO-DigiVC
[FTDI-Adafruit]: https://www.adafruit.com/product/70
[FTDI-Sparkfun]: https://www.sparkfun.com/products/9718
[Arduino-download]: https://www.arduino.cc/en/software
[ATmega-Adafruit]: https://www.adafruit.com/product/123
[ATmega-Sparkfun]: https://www.sparkfun.com/products/10524
[bootloader]: https://docs.arduino.cc/hacking/software/Bootloader
