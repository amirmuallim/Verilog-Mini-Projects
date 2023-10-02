`timescale 1ns / 1ps


module seq_det_0110_tb();
reg x,clk;
wire z;

seq_det_0110 t1(.z(z),.x(x),.clk(clk));

initial clk=1'b0;

always #5 clk=~clk;

initial begin

x=1; #5 x=0; #5 x=1; #5 x=1; #5 x=0;
x=1; #5 x=1; #5 x=0; #5 x=1; #5 x=0;

#25 $finish;
end


endmodule
