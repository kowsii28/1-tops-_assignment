`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2026 14:25:26
// Design Name: 
// Module Name: counter_tb
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


`timescale 1ns/1ps

module counter_tb;

    reg clk;
    reg reset;
    reg dir;
    wire [3:0] y;

    // DUT
    up_down_counter dut (
        .clk(clk),
        .reset_n(reset),
        .dir(dir),
        .y(y)
    );

    // Clock generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
      reset = 1;   
      dir   = 0;
    // Hold reset for few clocks
      #7
      reset = 0; 
        // UP COUNT:
      
        dir = 1;
        repeat (16) @(posedge clk);

        // DOWN COUNT:
   
        dir = 0;
        repeat (16) @(posedge clk);

        $stop;
    end

    // Monitor values
    initial begin
        $monitor("time=%0t | reset=%b dir=%b y=%0d (%b)",
                  $time, reset, dir, y, y);
    end

endmodule
