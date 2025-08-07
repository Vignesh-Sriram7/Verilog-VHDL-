module inst_mem(instr, clock, addr);

input wire [7:0] Addr [31:0];
input clock;
output reg [7:0] instr [31:0];

reg [7:0] mem [31:0];

initial begin
    $readmemh(" ", mem);
end

always @ (posedge clk)
begin
    instr <= mem[addr[31:2]];
end
endmodule