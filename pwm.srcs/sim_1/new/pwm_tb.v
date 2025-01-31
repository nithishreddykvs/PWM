`timescale 1ns / 1ps

module PWM_tb;

    // Inputs
    reg clk;
    reg rst;
    reg increase;
    reg decrease;

    // Outputs
    wire pwm_out;

    // Instantiate the PWM module
    PWM uut (
        .clk(clk),
        .rst(rst),
        .increase(increase),
        .decrease(decrease),
        .pwm_out(pwm_out)
    );

    // Clock generation (50MHz clock)
    initial begin
        clk = 0;
        forever #10 clk = ~clk; // Toggle clock every 10ns (50MHz)
    end

    // Test sequence
    initial begin
        // Initialize inputs
        rst = 1;        // Assert reset
        increase = 0;
        decrease = 0;

        // Release reset after 100ns
        #100;
        rst = 0;

        // Wait for a few clock cycles
        #100;

        // Press the increase button to increase duty cycle by 10%
        increase = 1;
        #20;            // Hold the button for 20ns
        increase = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;
        
        increase = 1;
        #20;            // Hold the button for 20ns
        increase = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;
        
        increase = 1;
        #20;            // Hold the button for 20ns
        increase = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;
        
        increase = 1;
        #20;            // Hold the button for 20ns
        increase = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;
        
        increase = 1;
        #20;            // Hold the button for 20ns
        increase = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;
        
        increase = 1;
        #20;            // Hold the button for 20ns
        increase = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;
        
        

        // Press the decrease button to decrease duty cycle by 10%
        decrease = 1;
        #20;            // Hold the button for 20ns
        decrease = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;
        
        decrease = 1;
        #20;            // Hold the button for 20ns
        decrease = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;
        
        decrease = 1;
        #20;            // Hold the button for 20ns
        decrease = 0;

        // Wait for a few clock cycles to observe the PWM output
        #200;

        // End simulation
        $stop;
    end

endmodule