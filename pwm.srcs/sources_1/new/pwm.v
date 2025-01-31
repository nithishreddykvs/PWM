`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 21:01:17
// Design Name: 
// Module Name: PWM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module PWM (
    input clk,          // 50MHz clock input
    input rst,          // Reset signal
    input increase,     // Button to increase duty cycle
    input decrease,     // Button to decrease duty cycle
    output reg pwm_out  // PWM output signal
);

    reg [3:0] counter;  // 4-bit counter for PWM timing (0 to 9)
    reg [3:0] duty_cycle; // 4-bit duty cycle register (0 to 9, representing 0% to 90%)

    // Debounced signals for increase and decrease buttons
    reg increase_db, decrease_db;

    // Debouncing logic for buttons
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            increase_db <= 0;
            decrease_db <= 0;
        end else begin
            increase_db <= increase;
            decrease_db <= decrease;
        end
    end

    // Duty cycle adjustment logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            duty_cycle <= 0; // Reset duty cycle to 0%
        end else begin
            if (increase_db && !decrease_db && duty_cycle < 9) begin
                duty_cycle <= duty_cycle + 1; // Increase duty cycle by 10%
            end else if (decrease_db && !increase_db && duty_cycle > 0) begin
                duty_cycle <= duty_cycle - 1; // Decrease duty cycle by 10%
            end
        end
    end

    // Counter logic for PWM signal generation
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
        end else begin
            if (counter == 9) begin
                counter <= 0; // Reset counter after reaching 9
            end else begin
                counter <= counter + 1; // Increment counter
            end
        end
    end

    // PWM signal generation logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pwm_out <= 0;
        end else begin
            if (counter < duty_cycle) begin
                pwm_out <= 1; // Set PWM output HIGH
            end else begin
                pwm_out <= 0; // Set PWM output LOW
            end
        end
    end

endmodule