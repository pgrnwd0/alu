`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2025 02:43:02 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
reg [15:0] x, y;
wire [15:0] out;
wire ng, zr;
reg nx, zx, ny, zy, f, no;

alu uut (
    .x(x),
    .y(y),
    .nx(nx),
    .zx(zx),
    .ny(ny),
    .zy(zy),
    .f(f),
    .no(no),
    .out(out),
    .zr(zr),
    .ng(ng));
    
initial begin
    x = 16'b0000000000000000; y=16'b0000000000000000;  nx = 0; zx = 0; ny = 0; zy = 0; f = 0; no = 0; #10;
    x = 16'b0000000000000010; y=16'b0000000000000001; nx = 0; zx = 0; ny = 0; zy = 0; f = 1; no = 0; #10;
    x = 16'b0000000000000010; y=16'b0000000000000001; nx = 0; zx = 1; ny = 0; zy = 1; f = 1; no = 0; #10;
    x = 16'b0000000000000011; y=16'b1111111111111111;  nx = 0; zx = 0; ny = 1; zy = 0; f = 1; no = 0; #10; 
    x = 16'b1111111111111111; y=16'b0000000000000001;  nx = 1; zx = 0; ny = 0; zy = 0; f = 1; no = 0; #10;
    x = 16'b0000000000000000; y=16'b1111111111111111;  nx = 0; zx = 0; ny = 0; zy = 0; f = 1; no = 1; #10;
    x = 16'b0000000000000010; y=16'b0000000000000100;  nx = 1; zx = 0; ny = 0; zy = 0; f = 1; no = 1; #10;
    x = 16'b0000000000000010; y=16'b0000000000000001;  nx = 1; zx = 0; ny = 0; zy = 0; f = 1; no = 1; #10;
    end

endmodule
