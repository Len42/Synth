# Unity-Gain Mixer / Precision Adder

## 4HP Eurorack Module

<img src="title.jpg" style="float:right">

### Features
- Two 3:1 mixing channels usable for CV or audio signals
- All inputs are mixed equally, _i.e._ added together
- Blinking lights show when an output is active and whether it's a CV or audio signal
- _Optional:_ Precision components can be used to make a high-precision adder for CVs

### Notes
To make a high-precision adder (_e.g._ to add pitch CVs without going out of tune):
- Use precision resistors (0.1% tolerance) for all 10kΩ resistors
- Use precision op-amps for U1, U2, and U4 (but not U3, all it does is blink an LED)

Note that some precision op-amps have low bandwidth or slew rate, which can be a problem for mixing audio signals. For example, I found that the LT1013/4 is good for accurately adding pitch CVs but causes distortion of audio-frequency signals. A possible compromise is to use precision resistors and regular op-amps (TL07x).

PCB layouts are provided in KiCad and gerber formats. A PCB layout for a drilled front panel (with no labels) is also included.

The PCBs that I used can be ordered from OSH Park. The designs are here:
- [Controls board](https://oshpark.com/shared_projects/eqKM6fyu)
- [Main board](https://oshpark.com/shared_projects/4ohHbdpn)
- [Front panel](https://oshpark.com/shared_projects/z20NA99Y)

Please note that I am a hobbyist, not a trained electronics engineer. No guarantees!

### Software Used

* [KiCad](https://www.kicad.org/) 6.0.8

<hr /><div><div style="float:left; padding-right:10px;"><img src="https://i0.wp.com/www.oshwa.org/wp-content/uploads/2014/03/oshw-logo-100-px.png" width=71 height=75 /></div><div style="xfloat:left; padding-left:10px;"><a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0;" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />© 2022 Len Popp CC BY<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</div></div>