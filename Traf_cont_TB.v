`timescale 1ns / 1ps
`define TRUE 1'b1
`define FALSE 1'b0
module stimulus;

wire [1:0] Main_sig, cntry_sig;
reg car_on_cntry_rd;
reg clock, clear;

sign_traf_cont sc(Main_sig, cntry_sig, car_on_cntry_rd, clock, clear);

initial
$monitor($time, "Main Sig = %b cntry sig = %b car on cntry = %b", Main_sig, cntry_sig, car_on_cntry_rd);

initial
begin 
    clock = `FALSE;
    forever #5 clock = ~clock;
end

initial
begin
    clear = `TRUE;
    repeat (5) @(negedge clock);
    clear =`FALSE;
end

initial
begin
car_on_cntry_rd = `FALSE;

#200 car_on_cntry_rd = `TRUE;
#100 car_on_cntry_rd = `FALSE;

#200 car_on_cntry_rd = `TRUE;
#100 car_on_cntry_rd = `FALSE;

#200 car_on_cntry_rd = `TRUE;
#100 car_on_cntry_rd = `FALSE;

#100 $stop;

end

endmodule