module programcounter (clock, reset, PCin, PCout);
input clock, reset;
input [7:0]PCin;
output reg [7:0]Pcout;

always @(posedge clock) begin
    if(reset ==1)
    Pcout <= 0;
    else
    Pcout = Pcin + 4;
end

endmodule
