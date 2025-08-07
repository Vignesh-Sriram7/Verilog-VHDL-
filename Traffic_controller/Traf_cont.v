`define TRUE 1'b1
`define FALSE 1'b0
`define RED 2'd0
`define YELLOW 2'd1
`define GREEN 2'd2

`define S0 3'd0
`define S1 3'd1
`define S2 3'd2
`define S3 3'd3
`define S4 3'd4

`define Y2RDELAY 3
`define R2GDELAY 2

module sign_traf_cont(hghwy, cntry, X, clock, clear);
output reg [1:0] hghwy, cntry;

input X;
input clock, clear;

reg [2:0] state, next_state;

initial
begin
    state = `S0;
    next_state = `S0;
    hghwy = `GREEN;
    cntry = `RED;
end

always @ (posedge clock)
begin
    state = next_state;
end

always @ (state)
begin
    case(state)
    `S0: begin
        hghwy = `GREEN;
        cntry = `RED;
    end
    
    `S1: begin
        hghwy = `YELLOW;
        cntry = `RED;
    end
    `S2: begin
        hghwy = `RED;
        cntry = `RED;
    end
    `S3: begin
        hghwy = `RED;
        cntry = `GREEN;
    end
    `S4: begin
        hghwy = `RED;
        cntry = `YELLOW;
    end
    endcase
end

always @ (state or clear or X)
begin
    if(clear)
    next_state = `S0;
    else
    case(state)
    `S0: if(X)
            next_state = `S1;
            else
            next_state = `S0;

    `S1:    begin
            repeat (`Y2RDELAY) @(posedge clock);
            next_state = `S2;
    end

    `S2: begin
            repeat (`R2GDELAY)@ (posedge clock);
            next_state = `S3;
    end
    `S3: if(X)
            next_state = `S3;
            else
            next_state = `S4;
    `S4: begin
            repeat (`Y2RDELAY)@(posedge clock);
            next_state = `S0;
    end

    default : next_state = `S0;
    endcase
end
endmodule

