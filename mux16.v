`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2025 11:26:01 AM
// Design Name: 
// Module Name: mux16
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


module mux16(a,b,c,d,sel1, sel2,out);
    input a , b, c, d, sel1, sel2;
    output out;
    
    wire m1;
    mux2to1 mux1 (
    .a(a),
    .b(b),
    .sel(sel1), 
    .out(m1));
    
    wire m2;
    mux2to1 mux2 (
    .a(c),
    .b(d),
    .sel(sel2), 
    .out(m2));
    
    mux2to1 mux3 (
    .a(m1),
    .b(m2),
    .sel(sel2), 
    .out(out));
    
    
endmodule
