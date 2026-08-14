module decoder3to8(
 input a,
input b,
input c,
output reg [7:0] y);
integer i;
always @(*)
begin
for ( i = 0;i<8;i = i+1)
y[i] = 1'b1;
end
endmodule
