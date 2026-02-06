`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 17:35:11
// Design Name: 
// Module Name: binary_gray
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


module binary_gray #( parameter WIDTH = 4)(
    input  wire [WIDTH-1:0] b,
    output reg  [WIDTH-1:0] g
);

integer i;

always @(*) begin
    // MSB remains same
    g[WIDTH-1] = b[WIDTH-1];

    // Remaining bits
    for (i = 0; i < WIDTH-1; i = i + 1) begin
        g[i] = b[i+1] ^ b[i];
    end
end

endmodule

