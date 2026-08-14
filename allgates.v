module allgates ( input [3:0] a , input [3:0] b, output reg [3:0] y);
always @ (*) begin
case ({a,b})
8'b00000000:y = a ^ b ;
8'b00010001:y = ~ (a ^ b);
8'b00100010:y = ~ (a & b);
8'b00110011:y = ~ (a | b);
endcase
end
endmodule
