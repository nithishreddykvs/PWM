# PWM
Pulse Width Modulation (PWM) Generator
This repository contains the Verilog implementation of a Pulse Width Modulation (PWM) generator. The PWM generator is designed to control the duty cycle of a signal using buttons, making it suitable for applications like motor speed control, LED brightness adjustment, and more.

Features
Adjustable Duty Cycle:

The duty cycle can be adjusted from 0% to 90% in 10% increments.

Two buttons (increase and decrease) are used to adjust the duty cycle.

Debouncing Logic:

Mechanical button presses are debounced using D flip-flops to ensure stable input signals.

Clock Division:

A 50MHz input clock is divided down to generate a 5MHz PWM output signal.

Reset Functionality:

A reset signal initializes the system, setting the duty cycle to 0%.

Simulation Testbench:

A testbench is provided to simulate and verify the functionality of the PWM generator.

Repository Contents
Verilog Code:

PWM.v: The main PWM generator module.

PWM_tb.v: Testbench for simulating the PWM generator.

Documentation:

README.md: Overview of the project, features, and usage instructions.

PWM.pdf: Detailed explanation of the PWM design and implementation.

Simulation Results:

Screenshots or waveform files showing the simulation results.

How It Works
Clock Input:

The design uses a 50MHz clock input.

The clock is divided down to generate a 5MHz PWM output signal.

Duty Cycle Control:

The duty cycle is stored in a 4-bit register.

Pressing the increase button increments the duty cycle by 10%.

Pressing the decrease button decrements the duty cycle by 10%.

PWM Signal Generation:

A counter compares its value to the duty cycle register.

If the counter value is less than the duty cycle, the PWM output is HIGH.

Otherwise, the PWM output is LOW.

Debouncing:

Button inputs are debounced to filter out noise and ensure stable operation.

Usage
Simulation:

Use a simulation tool like Vivado or ModelSim to run the testbench (PWM_tb.v).

Verify the PWM output waveform and duty cycle adjustment.

Synthesis:

Synthesize the PWM.v module for implementation on an FPGA.

Testing:

Connect the PWM output to a load (e.g., LED or motor) and test the functionality using the increase and decrease buttons.

Simulation Results
Default Duty Cycle: 0% (PWM output is LOW).

After Increasing Duty Cycle: PWM output stays HIGH for a longer duration.

After Decreasing Duty Cycle: PWM output stays HIGH for a shorter duration.

Dependencies
Simulation Tools:

Vivado (Xilinx) or ModelSim (Mentor Graphics).

FPGA Boards:

Compatible with any FPGA board that supports Verilog.

Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details.

Author
Nithish Reddy KVS
nithishreddy.k.v.s@gmail.com

