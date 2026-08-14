module halfadd(
input a,
input b,
output reg sum,
output reg cout);
always @(*)begin
if(a == 0 && b == 0)begin
sum = 0;
cout = 0; 
end
else if (a == 0 && b == 1) begin
sum = 1;
cout = 0; 
end
else if ( a == 1 && b == 0)begin
sum = 1;
cout = 0;
end
else if ( a == 1 && b == 1)begin
sum = 1;
cout = 1;
   end 
  end
 endmodule
