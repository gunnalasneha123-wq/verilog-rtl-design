module ringcounter ( input clk,
input PRE,
input clr,
output reg [3:0] Q);
always @(posedge clk) begin
if ( !clr)
Q <= 4'b0000;
else if (!PRE)
begin
Q <= 4'b1000;
end
else 
begin
Q[3] <= Q[0];
Q[2] <= Q[3];
Q[1] <= Q[2];
Q[0] <= Q[1];
end
end
endmodule
