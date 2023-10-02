`timescale 1ns / 1ps



module seq_det_0110(output reg z,
                    input x,
                    input rst,
                    input clk );
reg [1:0]PS,NS;

parameter s0=0, s1=1, s2=2, s3=3;

always @(posedge clk or rst)
if (rst) PS<=s0;
else PS<=NS;

always @(PS,x)
case (PS)
    s0:begin 
        z=0;
        NS=x?s1:s0;
        end
    s1:begin 
        z=0;
        NS=x?s2:s0;
        end
    s2:begin 
        z=x?0:1;
        NS=s0;
        end                     
 default:NS=s0;
 endcase                    
endmodule
