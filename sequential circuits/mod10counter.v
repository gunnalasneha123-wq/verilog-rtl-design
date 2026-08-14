module mod10counter(input clk,
output [3:0] Q,
output [3:0] Q_bar);
wire nandclr;
nandclr  nc1  ( .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3), .clr(clr) );
jkff ff0 ( .rst(nandclr), .clk(clk), .q(Q[0]), .q_bar(Q_bar[0]) );
jkff ff1 ( .rst(nandclr), .clk(Q_bar[0]), .q(Q[1]), .q_bar(Q_bar[1]) );
jkff ff2 ( .rst(nandclr), .clk(Q_bar[1]), .q(Q[2]), .q_bar(Q_bar[2]) );
jkff ff3 ( .rst(nandclr), .clk(Q_bar[2]),  .q(Q[3]), .q_bar(Q_bar[3]) );
endmodule
