module jkff_tb;
reg rst;
reg clk;
wire q;
wire q_bar;
jkff dut(.rst(rst), .clk(clk), .q(q), .q_bar(q_bar));
always #5 clk = ~clk;
initial begin
$monitor("Time=%0t rst=%b clk=%b q=%b q_bar=%b",$time,rst,clk,q,q_bar);
clk = 0;
rst = 0;
#10 rst = 1;
#20;
$finish;
end
endmodule
