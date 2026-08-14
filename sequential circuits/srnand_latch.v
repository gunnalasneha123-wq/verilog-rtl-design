module srnor_latch(
input s,
input r,
output reg q,
output reg q_bar); 
reg p = 1;
always @ (*) begin
case({s,r})
2'b00:begin q <= 1'bx; q_bar <= ~p; end
2'b01:begin q <= 1'b0; q_bar <= ~q; end
2'b10:begin q <= 1'b1; q_bar <= ~q; end
2'b11:begin q <= p;    q_bar <= ~p; end
endcase
end
endmodule
