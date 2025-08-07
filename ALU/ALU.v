module ALU_fun(out,a,b,sel);

input  [3:0] a, b;
output reg [4:0] out;
input [2:0] sel;

always @ (a or b or sel)

begin
    out = ALU(a, b, sel);
end

function [4:0] ALU;
input [3:0] A, B, SEL;

begin
    case(SEL)
    3'b000 : ALU= A;
    3'b001 : ALU= A+B;
    3'b010 : ALU= A-B;
    3'b011 : ALU= A/B;
    3'b100 : ALU= A%B;
    3'b101 : ALU= A<<1;
    3'b110 : ALU= A>>1;
    3'b111 : ALU= A>B;
    default: ALU= 1'bx;
    endcase
end
endfunction

endmodule