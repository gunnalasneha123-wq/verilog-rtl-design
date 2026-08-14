module demux(
input a,
input [1:0] s,
output reg [3:0] y);
always@ (*)
begin
case({s})
2'b00:y = 4'b0000;
2'b01:y = 4'b0001;
2'b10:y = 4'b0010;
2'b11:y = 4'b0011;
endcase
end
endmodule
