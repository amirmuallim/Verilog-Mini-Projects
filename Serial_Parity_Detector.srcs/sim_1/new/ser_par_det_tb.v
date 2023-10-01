`timescale 1ns / 1ps



module ser_par_det_tb;
reg x,clk;
wire z;

ser_par_det d1(.x(x),.clk(clk),.z(z));

initial clk=1'b0;
always #5 clk=~clk;

initial begin
x=1;
#5 x=0;
#5 x=1;
#5 x=1;
#5 x=1;
#5 x=0;
#5 $finish;
end



endmodule
