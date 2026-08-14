module asynchudcounter_tb;
reg clk;
reg rst;
reg M;
wire [3:0] Q;
wire [3:0] Q_bar;
asynchudcounter dut (.clk(clk), .rst(rst), .M(M), .Q(Q), .Q_bar(Q_bar) );
initial begin
$display("Time=%0t clk=%b rst=%b M=%b Q=%b Q_bar=%b",$time,clk,rst,M,Q,Q_bar);
rst = 0;
clk = 0;
 rst = 1; #10;
M = 0; #10;
$finish;
end
always #5 clk = ~clk;
endmodule
