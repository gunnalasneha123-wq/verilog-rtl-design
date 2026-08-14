module USR_tb;
reg clk;
reg enable;
reg [3:0] D;
reg serial_right;
reg serial_left;
reg s0;
reg s1;
wire [3:0] Q;
USR dut ( .clk(clk), .enable(enable), .D(D), .serial_right(serial_right), .serial_left(serial_left), .s0(s0), .s1(s1), .Q(Q) );
initial clk = 0;
always #5 clk = ~clk;
initial begin
enable = 1'b1;
D = 4'b1101;
serial_right = 1'b1;
serial_left = 1'b0; 
s0 = 1; s1 = 0; #10; // parallel load
s0 = 0; s1 = 0; #20; // siso right shift
s0 = 0; s1 = 1; #20; // siso left shift
s0 = 1; s1 = 1; #20; // hold
$finish;
end
endmodule
