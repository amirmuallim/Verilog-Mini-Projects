`timescale 1ns / 1ps


module fa_cla_4bit(output [3:0]sum,
                   output cout,
                   input [3:0]a,
                   input [3:0]b,
                   input cin);
wire [0:3]g;
wire [0:3]p;
wire c3,c1,c2;

assign g[0]=a[0]&b[0],g[1]=a[1]&b[1],
       g[2]=a[2]&b[2],g[3]=a[3]&b[3];

assign p[0]=a[0]^b[0],p[1]=a[1]^b[1],
       p[2]=a[2]^b[2],p[3]=a[3]^b[3];

assign c1=g[0]|(p[0]&cin),
       c2=g[1]|(p[1]&g[0])|(p[1]&p[0]&cin),
       c3=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&cin),
       cout=g[3]|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&cin);
       
assign sum[0]=p[0]^cin,
       sum[1]=p[1]^c1,
       sum[2]=p[2]^c2,
       sum[3]=p[3]^c3;

                   
endmodule
