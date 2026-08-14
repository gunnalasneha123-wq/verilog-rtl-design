module flipflops (input a,
input b,
input s,
input r,
input j,
input k,
input d,
input t,
input clk,
input enable,
output reg y,
output reg q,
output reg q_bar);
always @(posedge clk) begin
if ( a == 0 && b == 0 ) begin
case({s,r})
2'b00:begin q <= q;    q_bar <= ~q; end
2'b01:begin q <= 1'b0; q_bar <= ~q; end
2'b10:begin q <= 1'b1; q_bar <= ~q; end
2'b11:begin q <= 1'bx; q_bar <= ~q; end
endcase
end
else if ( a == 0 && b == 1 ) begin
case({j,k})
2'b00:begin q <= q;    q_bar <= ~q; end
2'b01:begin q <= 1'b0; q_bar <= ~q; end
2'b10:begin q <= 1'b1; q_bar <= ~q; end
2'b11:begin q <= ~q;   q_bar <= ~q; end
endcase
end
else if ( a == 1 && b == 0 ) begin
if (enable == 1) begin
q <= d;
q_bar <= ~q;
end
else 
begin
q <= q;
q_bar <= ~q;
end
end
else if ( a == 1 && b == 1 ) begin
if ( t == 1) begin
q = ~t;
end
else
begin
q = t;
q_bar = ~q;
end
end
end
endmodule
