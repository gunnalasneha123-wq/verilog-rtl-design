module asynchcounter_tb;
reg rst;
reg clk;
wire [3:0] Q;
wire [3:0] Q_bar;
asynchcounter dut(.rst(rst), .clk(clk), .Q(Q), .Q_bar(Q_bar));
always #5 clk = ~clk;
initial begin
$display("Time=%0t rst=%b clk=%b Q=%b Q_bar=%b",$time,rst,clk,Q,Q_bar);
clk = 0; 
rst = 0;
#10 rst = 1;
#100;
$finish;
end
endmodule
