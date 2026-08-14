module sipo_tb;
reg rst;
reg clk;
reg sin;
wire [3:0] Q;
wire [3:0] sout;
sipo dut ( .sin(sin), .rst(rst), .clk(clk), .Q(Q), .sout(sout) );
initial 
clk = 0;
always #5 clk = ~clk;
initial 
begin
$monitor ( "Time = %0t rst=%b sin=%b Q=%b sout=%b clk=%b ",$time,rst,sin,Q,sout,clk);
rst = 1;
#10 rst = 0;
sin = 1; #10;
sin = 0; #10;
sin = 1; #10;
sin = 0; #10;
#1;
$finish;
end
endmodule
