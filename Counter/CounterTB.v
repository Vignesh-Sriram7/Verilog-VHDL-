module CounterTB;
    wire [3:0] Q;
    reg clock, clear;

    counter c1(Q, clock, clear);

    initial begin

    $dumpfile("CounterTB.vcd");  // Specify dump file name

    $dumpvars(0, CounterTB);  // Dump all signals in the testbench

    end

    initial begin
    clock = 0;
    forever #5 clock = ~clock;
    end

    initial begin
    // Initialize
    clear = 1;
    #10;

    // Release clear
    clear = 0;
    
    // Run for several clock cycles
    #100;

    // Assert clear again
    clear = 1;
    #10;
    clear = 0;

    // Run again
    #50;

    // Finish simulation
    #1000 $finish;
  end
    initial begin
    $display($time, "value of clear=%b, Q=%b", clear, Q);
    end
endmodule