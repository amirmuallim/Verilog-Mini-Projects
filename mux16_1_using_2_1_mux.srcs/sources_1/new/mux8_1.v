`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 09:49:13
// Design Name: 
// Module Name: mux8_1
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


module mux8_1(output out,
              input [7:0]in,
              input [2:0]sel,
              input en);
wire w1,w2,w3,nots2;

not n1(nots2,sel[2]);
mux4_1 m1(w1,in[3:0],sel[1:0],nots2);
mux4_1 m2(w2,in[7:4],sel[1:0],sel[2]);
or o1(w3,w1,w2);
and a1(out,w3,en);
              
endmodule
