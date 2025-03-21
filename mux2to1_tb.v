`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2025 02:57:22 PM
// Design Name: 
// Module Name: mux2to1_tb
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


module mux2to1_tb();
reg [3:0] a, b;
reg sel;
wire [3:0] out;

mux2to1 uut(
    .a(a),
    .b(b),
    .sel(sel),
    .out(out));
    
initial begin
a= 4'b0000; b=4'b1111; sel=0; #10;
a= 4'b0000; b=4'b1111; sel=1; #10;
a= 4'b0000; b=4'b1111; sel=0; #10;
end

endmodule
