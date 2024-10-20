# Arithmetic-logic-unit-with-FSM
This project demonstrates the design and implementation of an Arithmetic Logic Unit (ALU) using Finite State Machine (FSM) in VHDL. The ALU performs basic arithmetic and logical operations, while the FSM handles the control flow and state transitions. This project was built as part of an embedded systems course focused on FPGA design using VHDL.
# Features
Arithmetic Operations: Addition, Subtraction, Multiplication, and Division
Logical Operations: AND, OR, XOR, NOT
Control via FSM: Finite State Machine for state transitions and operation control
Modular Design: ALU and FSM modules are implemented separately for flexibility and scalability
FPGA Deployment: Designed to be synthesized and run on an FPGA
# Project Structure
alu.vhd: Contains the VHDL code for the ALU, which performs arithmetic and logic operations.
fsm.vhd: Contains the VHDL code for the FSM, which manages the control logic and operation sequencing.
testbench.vhd: Testbench for simulating and verifying the ALU and FSM functionality.
constraints.xdc: Constraints file for mapping inputs/outputs to FPGA pins.
# Getting Started
Clone this repository:

bash
Copy code
git clone https://github.com/harikrishnan178/Arithmetic-logic-unit-with-FSM
Open the project in your preferred VHDL simulation or synthesis tool (e.g., Xilinx Vivado, ModelSim).

Run the testbench to verify the functionality of the ALU with FSM.

Synthesize and implement the design on an FPGA.

# Dependencies
VHDL: Ensure you have a VHDL-compatible simulator (e.g., ModelSim, Vivado).
FPGA Toolchain: For synthesis and implementation on an FPGA board (e.g., Xilinx Vivado).
# How It Works
The ALU accepts two operands and an operation code (opcode) to perform the selected operation.
The FSM controls the operation sequence based on input conditions and transitions between states.
Each state in the FSM corresponds to a specific operation, and the FSM ensures correct operation flow.
# Future Improvements
Extend the ALU to handle more complex operations such as floating-point arithmetic.
Optimize the FSM for lower latency and faster transitions.
Implement error detection and handling for divide-by-zero and overflow conditions.
# License
This project is licensed under the MIT License.

