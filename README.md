PWM - Pulse Width Modulation Generator

This repository contains the Verilog implementation of a Pulse Width Modulation (PWM) generator. The PWM generator allows users to control the duty cycle of a signal using buttons, making it suitable for applications such as motor speed control, LED brightness adjustment, and more.

📌 Features

✅ Adjustable Duty Cycle

The duty cycle can be adjusted from 0% to 90% in 10% increments.
Two buttons (increase and decrease) control the duty cycle.

✅ Debouncing Logic

Mechanical button presses are debounced using D flip-flops to ensure stable input signals.

✅ Clock Division

A 50MHz input clock is divided down to generate a 5MHz PWM output signal.

✅ Reset Functionality

A reset signal initializes the system, setting the duty cycle to 0%.

✅ Simulation Testbench

A testbench is provided to simulate and verify the functionality of the PWM generator.

⚙️ How It Works

🔹 Clock Input

The design uses a 50MHz clock input.
The clock is divided down to generate a 5MHz PWM output signal.

🔹 Duty Cycle Control

The duty cycle is stored in a 4-bit register.
Pressing the increase button → increments duty cycle by 10%.
Pressing the decrease button → decrements duty cycle by 10%.

🔹 PWM Signal Generation

A counter compares its value to the duty cycle register.
If the counter value < duty cycle, the PWM output is HIGH.
Otherwise, the PWM output is LOW.

🔹 Debouncing

Button inputs are debounced to filter out noise and ensure stable operation.

🚀 Usage

🔹 Simulation

Use a simulation tool like Vivado or ModelSim to run the testbench (PWM_tb.v).
Verify the PWM output waveform and duty cycle adjustments.

🔹 Synthesis

Synthesize the PWM.v module for implementation on an FPGA.

🔹 Testing

Connect the PWM output to a load (e.g., LED or motor).
Use the increase and decrease buttons to adjust the PWM duty cycle.

📊 Simulation Results

✅ Default Duty Cycle: 0% → PWM output is LOW.

✅ After Increasing Duty Cycle: PWM output stays HIGH for a longer duration.

✅ After Decreasing Duty Cycle: PWM output stays HIGH for a shorter duration.

📂 Dependencies

🔹 Simulation Tools

Vivado (Xilinx) or ModelSim (Mentor Graphics)

🔹 FPGA Boards

Compatible with any FPGA board that supports Verilog

🤝 Contributing

Contributions are welcome! 🎉

If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

👤 Author

Nithish Reddy KVS

📧 Email: nithishreddy.k.v.s@gmail.com
