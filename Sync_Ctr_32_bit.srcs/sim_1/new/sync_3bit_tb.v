`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2023 10:34:52
// Design Name: 
// Module Name: sync_3bit_tb
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


module sync_3bit_tb;
reg clk,rst;
wire [31:0]count;

Sync_32_bit_Ctr c1(.count(count),.clk(clk),.rst(rst));

initial 
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial 
begin
rst=1'b1;
#5
rst =1'b0;
#5 rst=1'b1;
#5 rst=1'b0;

$display ("T=%2d,Count=%d",$time,count);
#100 $finish;
end
    
endmodule
