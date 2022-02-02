# VCO Calibration Procedure

This is the procedure for adjusting the VCO to get accurate 1-volt-per-octave tracking and a reasonable tuning range.

## Required Equipment
Either:
- Precision voltage source, adjustable from 0V to +10V. An accurate 1V/octave keyboard or MIDI-CV converter can be used.
- Precision frequency counter or music tuner.

Or:
- Stable (but non-precision) voltage source, e.g. from a voltage regulator. +5V and +10V (approximately) are required. 
- Precision voltmeter.
- Precision frequency counter. (Not a music tuner – the frequencies will not necessarily be exact musical note pitches.)

## Calibration Parameters

Three appropriate pitch control voltages and corresponding frequencies must be selected:
- Low note with 0V CV input, e.g. C0 (16.35 Hz) or A0 (27.5 Hz).
- Middle note with +5V CV input, e.g. C5 or A5. If the +5V is not precise (e.g. it’s from a voltage regulator), calculate the frequency corresponding to the actual measured voltage.
- High note with +10 CV input, e.g. C10 or A10. If the +10V is not precise, calculate the frequency corresponding to the actual measured voltage.

Examples:

<table>
<tr><th>Low note</th><th>CV source</th><th>Freq. at 0V</th><th>Freq. at 5V</th><th>Freq. at 10V</th></tr>
<tr><td>C0</td><td>precise</td><td>16.3516 Hz</td><td>523.251 Hz</td><td>16744.0 Hz</td></tr>
<tr><td>C0</td><td>approximate</td><td>16.3516 Hz</td><td>52x.x Hz</td><td>167xx Hz</td></tr>
<tr><td>A0</td><td>precise</td><td>27.50 Hz</td><td>880.0 Hz</td><td>28160.0 Hz</td></tr>
<tr><td>A0</td><td>approximate</td><td>27.xx Hz</td><td>88x.x Hz</td><td>281xx Hz</td></tr>
</table>

Other appropriate voltages may be used instead of 5V and 10V.

## Preparation

Connect a waveform output (sawtooth, triangle, or pulse) to the frequency counter or tuner.

Do not connect the voltage source to the CV input yet.

Leave the other inputs & outputs unconnected.

Set the Range switch to the low (bass) setting, the Coarse Tuning knob fully CCW, and Fine Tuning to the centre.

## Trimming the VCO

Adjust the trimmer potentiometers on the module's circuit board as follows:

1. _Adjust low note:_ With the controls set as above and no voltage applied to the CV input, adjust the PITCH trimmer (RV11) so that the output frequency equals the chosen low note frequency.
1. _Adjust scaling:_ Set the voltage source to +5 V and connect it to the 1V/Octave CV input. Adjust the SCALE trimmer (RV9) so that the output frequency equals the chosen middle note frequency.
1. _Repeat_ the above steps until both the low and middle frequencies are correct.
1. _Adjust high frequency compensation:_ Set the voltage source to +10 V and adjust the HF TRIM trimmer (RV10) so that the output frequency equals the chosen high note frequency.
1. _Repeat_ the above steps until all three frequencies are correct.

<hr /><div><div style="float:left; padding-right:10px;"><img src="https://i0.wp.com/www.oshwa.org/wp-content/uploads/2014/03/oshw-logo-100-px.png" width=71 height=75 /></div><div style="xfloat:left; padding-left:10px;"><a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0;" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />© 2022 Len Popp CC BY<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</div></div>