# Four-Pole VCF

## 10HP Eurorack Module

_A low-pass filter using the SSI2140 chip_

<img src="VCF-4P.jpg" style="float:right">

### Features
- Four-pole, 24 db/octave low-pass filter made with an [SSI2140 IC](https://soundsemiconductor.com/downloads/ssi2140datasheet.pdf)
- Self-oscillates at maximum resonance
- Two CV inputs for cutoff frequency. One is (approximately) 1V/octave and the other has an input attenuator.
- CV input with attenuator for resonance control

### Notes
This module requires a 16-pin Eurorack power cable, but it does not depend on +5V power from the Eurorack system.

A custom PCB design is used for the main board, but the front panel, the PCB for the controls, and the board-to-board connectors come from a Delptronics Module Construction Set (10 HP). The main PCB layout is provided in KiCad and gerber formats.

(TBD) The PCBs that I used can be ordered from OSH Park. The designs are here:
- [Controls board](https://oshpark.com/shared_projects/zzz)
- [Middle board](https://oshpark.com/shared_projects/zzz)
- [Back board](https://oshpark.com/shared_projects/zzz)

Please note that I am a hobbyist, not a trained electronics engineer. No guarantees!

### Software Used

* [KiCad](https://www.kicad.org/) 6.0.4

<hr /><div><div style="float:left; padding-right:10px;"><img src="https://i0.wp.com/www.oshwa.org/wp-content/uploads/2014/03/oshw-logo-100-px.png" width=71 height=75 /></div><div style="xfloat:left; padding-left:10px;"><a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0;" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />© 2022 Len Popp CC BY<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</div></div>