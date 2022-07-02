# Dual Mixer

## 8HP Eurorack Module

<img src="Mixer2.jpg" style="float:right">

### Features
- Two 3-channel mixers
- Can be used with CV or audio signals - the inputs are DC coupled
- Input attenuators and output level controls
- When output 1 is unplugged it's normalled to mix into output 2, making a 6-channel mixer
- LEDs show the audio signal level

### Notes
PCB layouts are provided in KiCad and gerber formats. A drilling template is provided for the front panel.

(TBD) The PCBs that I used can be ordered from OSH Park. The designs are here:
- [Controls board](https://oshpark.com/shared_projects/zzz)
- [Middle board](https://oshpark.com/shared_projects/zzz)
- [Back board](https://oshpark.com/shared_projects/zzz)

I have used linear potentiometers for the level controls. Audio-taper pots would be better for mixing audio signals, but this mixer is meant to work with both CVs and audio signals and I find linear pots to be a better compromise.

LEDs are used to indicate when a mixed audio signal exceeds the nominal maximum level for Eurorack, which is 10 V peak-to-peak (-5 V to +5 V). Audio signals with a greater amplitude than that may cause clipping in some modules.
The bi-colour LEDs (one for each output) are off when the signal level is very low or there is no input connected; green when there is a signal up to about 8 V p-p; yellow(ish) to orange(ish) as the signal approaches to 10 V p-p; and red above about 10 V p-p. Note that these voltage levels are approximate and the LEDs give only a rough indication of whether the audio signal level is in the appropriate range. For CV signals, the LEDs are less useful - they light up only when the mixed CV is a positive voltage.

Please note that I am a hobbyist, not a trained electronics engineer. No guarantees!

### Software Used

* [KiCad](https://www.kicad.org/) 6.0.6

<hr /><div><div style="float:left; padding-right:10px;"><img src="https://i0.wp.com/www.oshwa.org/wp-content/uploads/2014/03/oshw-logo-100-px.png" width=71 height=75 /></div><div style="xfloat:left; padding-left:10px;"><a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0;" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />© 2022 Len Popp CC BY<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</div></div>