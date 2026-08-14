module synchcounter(
input clk,
input [3:0] T,
output reg [3:0] Q,
output reg [3:0] Q_bar,
output reg [3:0] Qout);
integer i;
always @(posedge clk) begin	
if ( T == 4'b0000) begin
Q <= 4'b0000;
Q_bar <= ~Q;
Qout <= 4'b0000;
end
else 
Q = Q+1;
Q_bar <= ~(Q+1);
Qout <= (Q+1);
end
endmodule
