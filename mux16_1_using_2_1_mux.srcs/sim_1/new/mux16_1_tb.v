`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 10:00:59
// Design Name: 
// Module Name: mux16_1_tb
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


module mux16_1_tb;
reg [15:0]in;
reg [3:0]sel;
reg en;
wire out;
integer i;

mux16_1 m1(out,in,sel,en);

initial begin
in=16'haaaa;
en=1;
for(i=0;i<16;i=i+1)
begin
sel=i;#5;
end
#5 $finish;
end

endmodule
