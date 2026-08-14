module sipo( input rst,
input clk,
input sin,
output reg [3:0] Q,
output  [3:0] sout);
assign sout = Q;
always @ (posedge clk)
begin
if ( rst == 1)
Q <= 4'b0000;
else begin
Q[3] <= sin;
Q[2] <= Q[3];
Q[1] <= Q[2];
Q[0] <= Q[1];
end
end
endmodule
