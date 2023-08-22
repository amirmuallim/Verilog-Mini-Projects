`timescale 1ns / 1ps



module majority_16bit_tb;

reg [15:0]in;
wire out;


majority_16bit f1(in,out);

initial begin
in=16'haaaa;
#5 in=16'ha0a0;
#5 in=16'hffff;
#5 $finish;
end

endmodule
