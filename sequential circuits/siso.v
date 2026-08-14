module siso( input Sin, input clk ,input rst, output reg [3:0] Q,output Sout );
assign Sout = Q[0];
always @(posedge clk) begin
if (rst == 0)
Q <= 4'b0000;
else 
Q[3] <= Sin;
Q[2] <= Q[3];
Q[1] <= Q[2];
Q[0] <= Q[1];
end
endmodule
