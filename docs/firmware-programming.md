# Firmware Programming

Some of my modules ([Envelope2][], [LFO-DigiVC][]) use an ATmega328P microcontroller chip running firmware that is programmed using the Arduino development environment. The firmware source code is provided as an Arduino sketch. There are a couple of ways to program the firmware onto the microcontroller.

## Programming the Microcontroller In Place

The module has a serial programming header so that it can be programmed just like an Arduino board. This is the way that I did it.

You will need:
1. an ATmega328P microcontroller that is pre-programmed with the Arduino bootloader (available [here][ATmega-Arduino], [here][ATmega-Adafruit], or [here][ATmega-Sparkfun])
1. an FTDI USB to TTL serial cable, 5-volt version (available [here][FTDI-Adafruit] or [here][FTDI-Sparkfun])
1. a computer running the Arduino software ([download][Arduino-download])

To program the module's firmware:
1. **Important:** Make sure the module is **not** powered. Either turn off the Eurorack system's power or unplug the Eurorack power cable from the module.
1. Connect the module to the computer using the FTDI USB-serial cable. The header connector on the cable connects to the 6-pin header on the module. Make sure it's connected the right way around! (The black wire is ground.)
1. On the computer, run the Arduino IDE software and load the appropriate sketch (.ino file) for the module.
1. In the Tools menu, select these settings:
    - Board: "Arduino Duemilanove or Diecimila" or "Arduino Uno" depending on which bootloader is on the chip
	- Processor: "ATmega328P"
	- Port: the port corresponding to the FTDI USB-serial cable
1. Select the Sketch > Upload command to compile and upload the firmware.
1. Unplug the FTDI cable and re-connect the module's power cable.

## Otherwise...

There are other ways to get the firmware onto the microcontroller chip. For example, you can program the firmware onto an Arduino-compatible dev board that has a removable ATmega328P chip (e.g. [Arduino UNO][] or similar) then put the chip into your module. Or, you can program the Arduino bootloader onto the chip &mdash; there are various ways to do this &mdash; and then follow the procedure above.

For more information on how to program microcontrollers using the Arduino development environment, see the [Arduino][] web site.

[Envelope2]: https://github.com/Len42/Synth-pub/tree/main/modules/Envelope2
[LFO-DigiVC]: https://github.com/Len42/Synth-pub/tree/main/modules/LFO-DigiVC
[ATmega-Arduino]: https://store-usa.arduino.cc/collections/accessories/products/atmega328-microcontroller-bootloader-uno
[ATmega-Adafruit]: https://www.adafruit.com/product/123
[ATmega-Sparkfun]: https://www.sparkfun.com/products/10524
[FTDI-Adafruit]: https://www.adafruit.com/product/70
[FTDI-Sparkfun]: https://www.sparkfun.com/products/9718
[Arduino-download]: https://www.arduino.cc/en/software
[bootloader]: https://docs.arduino.cc/hacking/software/Bootloader
[Arduino UNO]: https://docs.arduino.cc/hardware/uno-rev3
[Arduino]: https://docs.arduino.cc/

© 2022 Len Popp CC BY
