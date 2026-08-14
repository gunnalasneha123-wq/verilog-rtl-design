module Dff_tb;
reg clk;
reg enable;
reg  D;
wire Q;
Dff dut ( .clk(clk), .enable(enable), .D(D), .Q(Q) );
initial clk = 0;
always #5 clk = ~clk;
initial begin
$monitor ("Time=%0t enable=%b D=%b Q=%b clk=%b",$time,enable,Q,D,clk);
enable = 1; #10;
D = 1; #10;
$finish;
end
endmodule
