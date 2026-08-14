module pri_encoder(input [3:0] A,
output reg [1:0] D);
always @ (*)
begin
casez ({A})
4'b1xxx:D = 2'b11;
4'b01xx:D = 2'b01;
4'b001x:D = 2'b10;
4'b000x:D = 2'b00;
4'b0000:D = 2'bxx;
endcase
end
endmodule
