module mod10counter_tb;
reg clk;
wire [3:0] Q;
wire [3:0] Q_bar;
mod10counter dut ( .clk(clk), .Q(Q), .Q_bar(Q_bar) );
initial begin
clk = 0;
$monitor("Time=%0t clk=%b Q=%b Q_bar=%b",$time,clk,Q,Q_bar);
#200;
$finish;
end
always #5 clk = ~clk;
endmodule
