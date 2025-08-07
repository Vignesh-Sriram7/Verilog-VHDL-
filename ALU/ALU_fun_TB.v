module ALU_TB;

reg [3:0]a,b;
wire [4:0] outp;
reg [2:0] sel;

ALU_fun A1(outp,a,b,sel);

initial
$monitor($time, "a = %b b = %b sel = %b output = %b", a, b, sel, outp);

initial
begin
    a=4'b0;
    b=4'b0;
    sel=3'b0;
end

initial
begin
    #100 a = 4'b1111;
    #200 b = 4'b0001;
    #100 sel = 3'b001;
    #100 sel = 3'b011;
    #100 sel = 3'b101;
    #100 sel = 3'b100;
    #100 sel = 3'b110;
    #100 sel = 3'b111;

    #1000;
    $finish;
end

endmodule
