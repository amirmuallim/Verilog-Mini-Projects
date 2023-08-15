`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2023 10:17:20
// Design Name: 
// Module Name: Sync_32_bit_Ctr
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


module Sync_32_bit_Ctr
        //#(parameter N=32)
        (output reg [32-1:0]count,
        input clk,
        input rst);
 //reg count;
 
 always @(posedge clk or posedge rst)
 begin
 if(rst)
 count<=0;
 else
 count<=count+1;
 end

endmodule
