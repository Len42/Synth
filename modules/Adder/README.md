# Precision Adder / Unity-Gain Mixer

## 4HP Eurorack Module

<img src="title.jpg" style="float:right">

### Features
- Two 3:1 mixing channels usable for CV or audio signals
- All inputs are mixed equally, _i.e._ added together
- Precision design handles pitch CVs accurately
- Blinking lights show when a channel is active and whether it's a CV or audio signal

### Notes
The precision op-amps and resistors are relatively expensive. For a less precise, less expensive module, you can replace:
- U1, U4 with TL074
- U2 with TL072
- all 0.1% resistors with 1% resistors

PCB layouts are provided in KiCad and gerber formats. A PCB layout for a drilled front panel (with no labels) is also included.

(TBD) The PCBs that I used can be ordered from OSH Park. The designs are here:
- [Controls board](https://oshpark.com/shared_projects/zzz)
- [Middle board](https://oshpark.com/shared_projects/zzz)
- [Back board](https://oshpark.com/shared_projects/zzz)

Please note that I am a hobbyist, not a trained electronics engineer. No guarantees!

### Software Used

* [KiCad](https://www.kicad.org/) 6.0.8

<hr /><div><div style="float:left; padding-right:10px;"><img src="https://i0.wp.com/www.oshwa.org/wp-content/uploads/2014/03/oshw-logo-100-px.png" width=71 height=75 /></div><div style="xfloat:left; padding-left:10px;"><a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0;" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />© 2022 Len Popp CC BY<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</div></div>