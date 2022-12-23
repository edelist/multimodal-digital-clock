# multimodal-digital-clock

The multimodal digital clock has four modes: 24-hour clock, 12-hour clock, stopwatch and timer. Designed for the Nexys A7 Artix-7 FPGA. Modes are toggled between using two switches acting as a 2-bit select line for a mode-select multiplexer. Please reference the constraints file for the programming of the buttons and switches.

24/12 hour clocks
- Set hours, minutes, seconds using three buttons that store the inputted time
- Start button used to start the clock from the inputted time
- Global reset resets time and inputted (stored) time

Stopwatch
- Global reset resets stopwatch to 00:00:00
- Holding "start" button initiates time incrementing
- Releasing "start" button pauses time incrementing

Timer
- Set hours, minutes, seconds using three buttons that store the inputted time
- Start button used to start the timer from the inputted time
- Global reset resets time and inputted (stored) time

When FPGA is connect to a monitor via VPA port, the display reads in the format: hh:mm:ss
