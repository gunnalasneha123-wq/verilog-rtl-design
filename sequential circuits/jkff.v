module jkff(
input clk,
input rst,
output reg q,
output reg q_bar);
initial begin
 q = 1'b0;
 end
always @(posedge clk) begin
if (!rst)
q <= 1'b0;
else
q <= ~q;
q_bar <= q;
end
endmodule
