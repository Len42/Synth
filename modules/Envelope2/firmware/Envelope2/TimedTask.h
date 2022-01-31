/*
Timed Task Arduino Library

Copyright 2021 Len Popp

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#ifndef _Timed_Task_h_
#define _Timed_Task_h_

//#include "Arduino.h"

// Abstract class for timed tasks.

class TimedTask
{
public:
  TimedTask(unsigned interval)
    : dtInterval(interval), tPrevious(0) { }

  virtual void Task(unsigned long tNow) = 0;

  void Tick(unsigned long tNow)
  {
    if (tNow - tPrevious >= dtInterval) {
      tPrevious = tNow;
      Task(tNow);
    }
  }
  
private:  
  unsigned dtInterval;
  unsigned long tPrevious;
};

#endif // _Timed_Task_h_
