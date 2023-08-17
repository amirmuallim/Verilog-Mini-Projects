`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 09:20:31
// Design Name: 
// Module Name: mux2_1
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


module mux2_1(output out,
              input [1:0]in,
              input sel,
              input en);
wire w1,w2,w3,nsel;
not n1(nsel,sel);
and a1(w1,in[0],nsel);
and a2(w2,in[1],sel);
or o1(w3,w1,w2);
and a3(out,w3,en);

endmodule
