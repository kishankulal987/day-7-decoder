`timescale 1ns / 1ps
module decoder #(parameter N=3)(input [N-1:0]in,output [(2**N)-1:0]out);
assign out=1<<in;
endmodule

module decoder_tb;
localparam N=3;
reg [N-1:0]in;
wire [(2**N)-1:0]out;
decoder m1(in,out);
initial begin
for(integer i=0;i<2**N;i=i+1)
begin
in=i;
#10;
$display("in=%b out=%b",in,out);
end
$finish;
end
endmodule
