module disp_mux ( input wire clk, reset, 
input [7:0] in0, in1, in2, in3,
output reg [7:0] sseg.
output reg [3:0]an);


localparam N = 18;

reg [N-1:0] q_reg;
wire [N-1:0] q_next;

always @ (posedge clk or posedge reset)
    begin
        if(reset)
            q_reg <= 0;
        else
            q_reg <= q_next;
    end

    assign q_next = q_reg+1;

    always @ *
    begin
        case (q_reg[N-1:N-2])
        2'b00    : begin 
                    an = 4'1110;
                    sseg = in0;
        end

        2'b01    : begin 
                    an = 4'1101;
                    sseg = in1;
        end 

        2'b10    : begin 
                    an = 4'1011;
                    sseg = in2;
        end
        
        default:    : begin 
                    an = 4'0111;
                    sseg = in3;
        end
        
        
        endcase
    end
    endmodule