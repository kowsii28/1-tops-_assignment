`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2026 14:13:01
// Design Name: 
// Module Name: up_down_counter
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

module up_down_counter #(
    parameter WIDTH = 4
)(
    input  wire              reset_n,
    input  wire              dir,
    input  wire              clk,
    output reg  [WIDTH-1:0]  y
);
always @(posedge clk) begin
    if (reset_n) begin
        y <= {WIDTH{1'b0}};
    end else if (dir) begin
        y <= y + {{(WIDTH-1){1'b0}}, 1'b1};
    end else begin
        y <= y - {{(WIDTH-1){1'b0}}, 1'b1};
    end
end
endmodule
