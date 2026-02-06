`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 18:23:02
// Design Name: 
// Module Name: gray_to_binary_tb
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


module gray_to_binary_tb;
parameter WIDTH = 4;
reg [WIDTH-1:0] gr;
wire [WIDTH-1:0] bi;

integer i;

gray_binary #(.WIDTH(WIDTH)) dut ( .b(bi), .g(gr));
initial begin
for ( i = 0; i < (1 << WIDTH); i = i + 1) begin 
 gr = i[WIDTH-1:0];
 #5;
end 
 $finish;
end

endmodule
