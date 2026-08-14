module USR(input clk,
input [3:0] D,
input serial_right,
input serial_left,
input s0,
input s1,
input enable,
output [3:0] Q);
mux4to1 mux3 ( .i0(serial_right), .i1(Q2), .i2(D3), .i3(Q3), .s0(s0), .s1(s1), .y(mux3out) );
Dff ff3 (.D(mux3out), .clk(clk), .enable(enable), .Q(Q3));
mux4to1 mux2 ( .i0(Q3), .i1(Q1), .i2(D2), .i3(Q2), .s0(s0), .s1(s1), .y(mux2out) );
Dff ff2 (.D(mux2out), .clk(clk), .enable(enable), .Q(Q2));
mux4to1 mux1 ( .i0(Q2), .i1(Q0), .i2(D1), .i3(Q1), .s0(s0), .s1(s1), .y(mux1out) );
Dff ff1 (.D(mux1out), .clk(clk), .enable(enable), .Q(Q1));
mux4to1 mux0 ( .i0(Q1), .i1(serial_left), .i2(D0), .i3(Q0), .s0(s0), .s1(s1), .y(mux0out) );
Dff ff0 (.D(mux0out), .clk(clk), .enable(enable), .Q(Q0));
endmodule
