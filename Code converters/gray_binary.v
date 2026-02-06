`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 18:19:06
// Design Name: 
// Module Name: gray_binary
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


module gray_binary #( parameter WIDTH = 4) (
    input  wire [WIDTH-1:0] g,
    output reg  [WIDTH-1:0] b
);

integer i;

always @(*) begin
    // MSB remains same
    b[WIDTH-1] = g[WIDTH-1];

    // Remaining bits
    for (i = WIDTH-2; i >= 0; i = i - 1) begin
        b[i] = b[i+1] ^ g[i];
end
end
endmodule
