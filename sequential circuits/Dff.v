module Dff(input D,
input enable,
input clk,
output reg Q);
always @(posedge clk) begin
if ( enable) 
Q <= D;
end
endmodule
