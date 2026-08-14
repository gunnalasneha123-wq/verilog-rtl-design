module piso_tb;
reg [3:0] I;
reg clk;
reg control;
reg enable;
wire [3:0] q;
piso dut (.I(I), .clk(clk), .control(control), .enable(enable), .q(q) );
initial clk = 0;
always #5 clk = ~clk;
initial begin
$monitor("Time=%0t clk=%b enable=%b control=%b I=%b q=%b",$time,clk,enable,control,I,q);
 #10 enable = 1;
 I = 4'b1100; #10;
control = 0; #10;
control = 1; #40;
$finish;
end
endmodule
