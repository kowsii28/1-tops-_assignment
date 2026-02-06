`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 17:36:40
// Design Name: 
// Module Name: binary_to_gray_tb
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


module binary_to_gray_tb;
parameter WIDTH = 4;

reg [WIDTH-1:0] bi;
wire [WIDTH-1:0] gr;

integer i;

binary_gray #(.WIDTH(WIDTH)) dut ( .b(bi), .g(gr));
initial begin
for ( i = 0; i < (1 << WIDTH); i = i + 1) begin 
 bi = i[WIDTH-1:0];
 #5;
end 
 $finish;
end

endmodule
