`timescale 1ns / 1ps



module fa_16bit(output [15:0]sum,
                input [15:0]a,
                input [15:0]b,
                input cin,
                output cout,
                output zero,
                output parity,
                output overflow,
                output sign
                 );

wire c1,c2,c3;                

fa_cla_4bit f1(sum[3:0],c1,a[3:0],b[3:0],1'b0),
            f2(sum[7:4],c2,a[7:4],b[7:4],c1),                
            f3(sum[11:8],c3,a[11:8],b[11:8],c2),
            f4(sum[15:12],cout,a[15:12],b[15:12],c3);
            
assign zero=~|sum;
assign parity=~^sum; // even parity
assign overflow=(~sum[15]&a[15]&b[15])|(sum[15]&~a[15]&~b[15]);
assign sign=sum[15];
                
endmodule
