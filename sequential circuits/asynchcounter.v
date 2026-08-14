module asynchcounter(input rst,
input clk,
output [3:0] Q,
output [3:0] Q_bar);
jkff ff0 (.rst(rst), .clk(clk), .q(Q[0]), .q_bar(Q_bar[0]) );
jkff ff1 (.rst(rst), .clk(Q[0]), .q(Q[1]), .q_bar(Q_bar[1]) );
jkff ff2 (.rst(rst), .clk(Q[1]), .q(Q[2]), .q_bar(Q_bar[2]) );
jkff ff3 (.rst(rst), .clk(Q[2]), .q(Q[3]), .q_bar(Q_bar[3]) );
endmodule
