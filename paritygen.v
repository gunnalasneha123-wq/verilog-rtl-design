module paritygen(input clk,
input rst,
input [7:0] txdata,
input load,
input parity_sel,
output reg parity_bit);
always@(posedge clk) begin
if (rst) begin
parity_bit <= 1'b0;
end
else if (load) begin
parity_bit <= ~(^txdata);
else 
parity_bit <= (^txdata);
end
end
endmodule
