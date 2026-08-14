module mux41(
input [3:0] a,
input [1:0] s,
output reg y);
always@ (*)
begin
if ( s[0] == 0 && s[1] == 0 ) 
y = a[0];
else if ( s[0] == 0 && s[1] == 1 )
y = a[1];
else if ( s[0] == 1 && s[1] == 0 )
y = a[2];
else if ( s[0] == 1 && s[1] == 1 )
y = a[3];
end
endmodule
