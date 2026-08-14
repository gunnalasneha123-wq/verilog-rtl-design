
module and1(input a,input b,
	output and1,
	output or1, 
	output xor1 ,
       	output xnor1,
       	output nand1,
       	output nor1,
	output not1);
assign and1 = a & b;
assign or1 = a | b;
assign xor1 = a ^ b;
assign xnor1 = ~(a^b);
assign nand1 = ~(a & b);
assign nor1 = ~ ( a | b);
assign not1 = ~ (a);
endmodule
