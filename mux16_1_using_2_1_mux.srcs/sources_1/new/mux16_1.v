`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 09:56:24
// Design Name: 
// Module Name: mux16_1
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


module mux16_1(output out,
               input [15:0]in,
               input [3:0]sel,
               input en);
wire w1,w2,w3,nots3;

not n1(nots3,sel[3]);
mux8_1 m1(w1,in[7:0],sel[2:0],nots3);
mux8_1 m2(w2,in[15:8],sel[2:0],sel[3]);
or o1(w3,w1,w2);
and a1(out,w3,en);               
               
endmodule
