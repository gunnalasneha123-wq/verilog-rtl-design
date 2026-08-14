module synchcounter_tb;
reg clk;
reg [3:0] T;
wire [3:0] Q;
wire [3:0] Q_bar;
wire [3:0] Qout;
integer i;
counter dut ( .clk(clk), .T(T), .Q(Q), .Q_bar(Q_bar), .Qout(Qout) );
initial clk = 0;
always #5 clk = ~clk;
initial begin
$monitor ( "Time = %0t Q = %b T = %b Q_bar = %b Qout = %b ", $time,T,Q,Q_bar,Qout);
for ( i = 0; i <= 15; i = i+1 ) begin
T = i; #10;
end
$finish;
end
endmodule
