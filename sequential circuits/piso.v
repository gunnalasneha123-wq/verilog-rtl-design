module piso ( input [3:0]I,
input clk,
input enable,
input control,
output  [3:0]q,
output dout);
assign dout = q[0];
wire mux0out;
wire mux1out;
wire mux2out;
wire mux3out;
mux1 m0 ( .I(I[3]), .Q(1'b0), .control(control), .mux1out(mux0out) );
mux1 m1 ( .I(I[2]), .Q(q[3]), .control(control), .mux1out(mux1out) );
mux1 m2 ( .I(I[1]), .Q(q[2]), .control(control), .mux1out(mux2out) );
mux1 m3 ( .I(I[0]), .Q(q[1]), .control(control), .mux1out(mux3out) );

Dff ff3 (.D(mux0out), .clk(clk), .enable(enable),   .Q(q[3]));
Dff ff2 (.D(mux1out), .clk(clk), .enable(enable), .Q(q[2]));
Dff ff1 (.D(mux2out), .clk(clk), .enable(enable), .Q(q[1]));
Dff ff0 (.D(mux3out), .clk(clk), .enable(enable), .Q(q[0]));
endmodule
