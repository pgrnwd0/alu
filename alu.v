`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2025 10:47:50 AM
// Design Name: 
// Module Name: alu
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


module alu(input [15:0] x, y,
            input nx, zx, ny, zy, f, no,
            output [15:0] out,
            output zr, ng
);

wire [15:0] m1, m2, m3, m4, m5, m6, xsumy, xandy;
assign m1 = (zx) ? 0 : x;
assign m2 = (nx) ? ~m1 : m1;

assign m3 = (zy) ? 0 : y;
assign m4 = (ny) ? ~m3 : m3;

assign xsumy = m2 + m4;
assign xandy = m2&m4;

assign m5 = (f) ? xsumy : xandy;
assign out = (no) ? ~m5 : m5;

assign ng = out[15];
assign zr = out == 0;    
endmodule
