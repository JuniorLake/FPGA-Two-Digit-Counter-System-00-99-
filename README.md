# FPGA Two-Digit Counter System (00–99)

## Overview
This project implements a fully functional two-digit counter system on an FPGA using SystemVerilog. The system supports counting from 00 to 99 across two independent displays and allows user interaction through push buttons and switches.

The design demonstrates modular hardware development, sequential logic, and real-time user input handling on FPGA hardware.

---

## Features
- Two independent 2-digit counters (Display A and Display B)
- Counts from 00 to 99 with automatic rollover
- Increment modes:
  - +1 (Push Button 1)
  - +2 (Push Button 2)
- Switch-controlled routing:
  - Select whether Display A or Display B is updated
- Global reset (Clear button)
- Output displayed on 7-segment displays

---

## System Architecture

The system is composed of multiple reusable modules:

- **BCD Counter (0–9)**  
  Counts a single digit using synchronous sequential logic.

- **Two-Digit Counter Module**  
  Combines two BCD counters (units + tens) to form a 00–99 counter.

- **Single Pulse Generator**  
  Converts mechanical button presses into clean, single clock pulses.

- **Dual Increment Logic**  
  Uses combinational logic to support incrementing by 1 or 2.

- **BCD to 7-Segment Display Converter**  
  Converts binary values into display outputs.

---

## How It Works

- The system runs on a 50 MHz FPGA clock.
- Push buttons are processed through pulse generators to avoid multiple triggers.
- A switch determines which display (A or B) receives the increment signal.
- The counter increases by either 1 or 2 depending on the button pressed.
- When the count exceeds 99, it resets to 00.
- A clear button resets both displays instantly.

---

## Technologies Used

- **SystemVerilog** – hardware design and RTL implementation  
- **FPGA Development Tools:** Intel Quartus  
- **Target Hardware:** Cyclone IV FPGA (DE2-115 board)

---

## Key Learning Outcomes

- Designed and implemented synchronous sequential logic systems  
- Built modular and hierarchical FPGA designs  
- Worked with clock signals, reset logic, and state transitions  
- Integrated multiple subsystems into a complete working design  
- Gained hands-on experience with FPGA deployment and testing  

---

## Project Structure

Lab4/
│── lab4.sv # Top-level design
│── twoBCDcounters.sv # Two-digit counter module
│── counter0to9.sv # Single digit BCD counter
│── singlepulse.sv # Pulse generator (+1)
│── singlepulse2.sv # Pulse generator (+2)
│── bcd2display.bdf # Display conversion
│── README.md


---

## Future Improvements

- Add increment by 3 (additional button logic)
- Implement independent reset for each display
- Extend system into a timer or scoreboard application
- Improve display control and multiplexing

---

## Demo (Optional)

https://github.com/JuniorLake/FPGA-Two-Digit-Counter-System-00-99-/blob/main/2-digit%20BCD%20counter%20demo%20done%20video.mp4



---

## Author
**Junior Ismael Lake Humphrey**
