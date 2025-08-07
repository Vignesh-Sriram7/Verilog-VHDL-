module counter(Q, clock, clear);
output reg [3:0]Q;
input clock, clear;

always @(posedge clear or negedge clock)
begin
    if(clear)
    Q<=0;
    else
    Q <= (Q+1)%16;
end
endmodule