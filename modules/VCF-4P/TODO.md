# TO BE DONE

Note: prototype4 represents current breadboard prototype (July 15)

## Calibration
### Scale
* Done: Approximate scale calibration using keyboard CV
* Done:: Measure total resistance of pot + resistor - Pot range may be insufficient
* * 47K + 10K works best, but may need to be adjusted due to variance of SSI2140 tempco resistor
* Done: Re-check!
### Tuning
* Tuning to 4.088 Hz @ 0 V gives a good range for the cutoff pot
* Done: Increase input resistor a bit to get a good adjustment range
* * 160K + 10K works
* Done: Re-check!

## Resonance Issue
* PROBLEM: Resonance works fine for saw & triangle wave input but does almost nothing to a square wave!
* FIXED: Reduce input level by increasing R7
* Self-resonance output level is much lower than full audio output level - That's OK, I think?
* Done: Adjust Q compensation resistor
* Done: Check if that's still true after all adjustments

## Audio Input & Output
* (see above for resonance issue)
* Done: REMOVE Drive/Level control! It's too fiddly to get right.
* Done: Adjust input stage gain & output
* * In main schematic, change input resistor to 36K, with no level/drive pot
* Done: Adjust output gain
* * 160K/30K works well
* PROBLEM: Output voltage offset 0.4V - Why?? Can fix? Need AC coupling?
* * TODO: Test AC coupling cap & bleeder
* TODO: What happens to output level when 220R resistors are changed to 200R as in schematic?
