# TO BE DONE

## Calibration
### Scale
* Done: Approximate scale calibration using keyboard CV
* Done:: Measure total resistance of pot + resistor - Pot range may be insufficient
* * 47K + 10K works best, but may need to be adjusted due to variance of SSI2140 tempco resistor
### Tuning
* Tuning to 4.088 Hz @ 0 V gives a good range for the cutoff pot
* Done: Increase input resistor a bit to get a good adjustment range
* * 160K + 10K works

## Resonance Issue
* PROBLEM: Resonance works fine for saw & triangle wave input but does almost nothing to a square wave!
* Done: Try reducing input level by increasing R7 - Fixed! (but see below)
* Self-resonance output level is much lower than full audio output level
* TODO: Check if that's still true after all adjustments

## Audio Input
* (see above for resonance issue)
* TODO: Adjust input stage gain & output
* * Test with 100K input atten pot & 30-36K resistor
* * Measure onset of clipping with sq wave & high resonance

## Audio Output
* TODO: Adjust output gain. (It's OK now but check again after changing input & resonance.)
* PROBLEM: Output voltage offset 0.4V - Why?? Can fix? Need AC coupling?
