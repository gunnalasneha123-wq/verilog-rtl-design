module allgates_tb;
reg [3:0] a;
reg [3:0] b;
wire [3:0] y;
allgates dut (.a(a), .b(b), .y(y));
initial begin
$monitor( "Time = %0t a = %b b = %b y = %b ", $time,a,b,y);
a = 4'b0000; b = 4'b0000;  #2;
a = 4'b0001; b = 4'b0001;  #2;
a = 4'b0010; b = 4'b0010;  #2;
a = 4'b0011; b = 4'b0011;  #2;
$finish;
end
endmodule
