# TO BE DONE

## Calibration
### Scale
* Done: Approximate scale calibration using keyboard CV
* TODO: Measure total resistance of pot + resistor - Pot range seems insufficient
* TODO: Determine appropriate resistor & pot values
### Tuning
* Tuning to 4.088 Hz @ 0 V gives a good range for the cutoff pot
* TODO: Increase input resistor a bit to get a good adjustment range
* * nominally 153K
* * try 160K


## Resonance Issue
* PROBLEM: Resonance works fine for saw & triangle wave input but does almost nothing to a square wave!
* TODO: Try reducing input level by increasing R7
* Self-resonance output level is much lower than full audio output level
* TODO: Check if that's still true after all adjustments

## Audio Input
* (see above for resonance issue)
* TODO: Adjust input stage gain & output

## Audio Output
* TODO: Adjust output gain. (It's OK now but check again after changing input & resonance.)
* PROBLEM: Output voltage offset 0.4V - Why?? Can fix? Need AC coupling?
