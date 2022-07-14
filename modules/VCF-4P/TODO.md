# TO BE DONE

## Calibration
### Scale
* Done: Approximate scale calibration using keyboard CV
* TODO: Measure total resistance of pot + resistor - Pot range seems insufficient
* TODO: Determine appropriate resistor & pot values
### Tuning
* TODO: Try to tune bottom note to something appropriate
* TODO: Increase input resistor to get 16-25 Hz @ 0V - try 330K or so

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