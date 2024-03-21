# Analog VCO

## 10HP Eurorack Module

<img src="VCO-2131.jpg" style="float:right">

### Features
- Analog VCO with sawtooth, triangle, and square/pulse outputs
- Sub-oscillator square wave output
- Pitch, modulation, PWM, and sync CV inputs
- Coarse/fine tuning knobs and +/- 2-octave switch
- Based on an [SSI2131 VCO chip](https://soundsemiconductor.com/downloads/ssi2131datasheet.pdf)
- Volt-per-octave tracking over 10 octaves
- 1V/octave input can default to the Eurorack bus CV line (jumper-selectable) - more info [here](https://lenp.net/synth/eurorack-bus-cv-gate.html)

### Notes
This module requires a 16-pin Eurorack power cable, but it does not depend on +5V power from the Eurorack system.

[Here are instructions for calibration](https://lenp.net/synth/vco-calibration.html) of the VCO for proper 1V/octave tracking.

PCB layouts are provided in KiCad and gerber formats.
A drilling template is provided for the front panel.

The PCBs that I used can be ordered from OSH Park. The designs are here:
- [Controls board](https://oshpark.com/shared_projects/8MjA3NoD)
- [Middle board](https://oshpark.com/shared_projects/c16FyR7y) (Note: This is an older version of the PCB. The sub-oscillator circuit does not work on this version.)
- [Back board](https://oshpark.com/shared_projects/S84ptGBY)

Please note that I am a hobbyist, not a trained electronics engineer. No guarantees!

### Software Used

[KiCad](https://www.kicad.org/) 6.0.8

<hr /><div><div style="float:left; padding-right:10px;"><img src="https://i0.wp.com/www.oshwa.org/wp-content/uploads/2014/03/oshw-logo-100-px.png" width=71 height=75 /></div><div style="xfloat:left; padding-left:10px;"><a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0;" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />© 2022 Len Popp CC BY<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</div></div>