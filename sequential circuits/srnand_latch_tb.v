module srnand_latch_tb;
reg s;
reg r;
wire q;
wire q_bar;
srnor_latch dut ( .s(s), .r(r), .q(q), .q_bar(q_bar) );
initial begin
$monitor("Time = %0t s=%b r=%b q=%b q_bar=%b",$time,s,r,q,q_bar);
s <= 0; r <= 0; #10
s <= 0; r <= 1; #10
s <= 1; r <= 0; #10
s <= 1; r <= 1; #10
$finish;
end
endmodule
