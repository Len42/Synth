// Timed Task Library

#ifndef _Timed_Task_h_
#define _Timed_Task_h_

//#include "Arduino.h"

// Class for timed tasks.
class TimedTask
{
public:
  typedef void (*Task)(unsigned long tNow);

  TimedTask(unsigned interval, Task task)
    : dtInterval(interval), pfnTask(task), tPrevious(0) { }

  void Tick(unsigned long tNow)
  {
    if (tNow - tPrevious >= dtInterval) {
      tPrevious = tNow;
    if (pfnTask != NULL)
      pfnTask(tNow);
    }
  }
  
private:  
  unsigned dtInterval;
  Task pfnTask;
  unsigned long tPrevious;
};

#endif // _Timed_Task_h_
