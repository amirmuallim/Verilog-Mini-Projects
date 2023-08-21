`timescale 1ns / 1ps



module fa_16bit_tb;
reg [15:0]a,b;
reg cin;
wire [15:0]sum;
wire cout;
wire zero,parity,overflow,sign;

fa_16bit f1(.sum(sum[15:0]),.cout(cout),.a(a[15:0]),.b(b[15:0]),.cin(cin)
            ,.zero(zero),.parity(parity),.overflow(overflow),.sign(sign));

initial begin 
a=16'd574; 
b=16'd31;
cin=1'b0;

#5 a=16'd425;
   b=16'hffff;

#5 a=16'd5;
   b=16'hfffa;

#5 a=0;
   b=0;
   
#5 a=16'hffff;
   b=16'hffff;

   
#5 $finish;
end

endmodule
