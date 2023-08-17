`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 09:29:09
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(output out,
              input [3:0]in,
              input [1:0]sel,
              input en);
              
wire nots0,w1,w2,w3;

not n1(nots1,sel[1]);
mux2_1 m1(w1,in[1:0],sel[0],nots1);
mux2_1 m2(w2,in[3:2],sel[0],sel[1]);
or o1(w3,w1,w2);
and a1(out,w3,en);
              
              
endmodule
