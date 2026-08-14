module pri_encoder_tb;
reg [3:0] A;
wire [1:0] D;
pri_encoder dut ( .A(A), .D(D) );
initial begin
$monitor ("Time = %0t A = %b D = %b",$time,A,D);
A = 4'b1xxx; #10;
A = 4'b01xx; #10;
A = 4'b001x; #10;
A = 4'b0001; #10;
A = 4'b0000; #10;
$finish;
end
endmodule
