`timescale 1ns/1ps
module dmux_1to8_tb();
    reg i;
    reg [2:0] sel;
    wire [7:0] y;

    // Instantiate the 1-to-8 demultiplexer
    dmux_1to8 DUT (i, sel, y);

    initial begin
        // Initial values
        i = 0;
        sel = 3'b000;
    end

    initial begin
        // Apply test cases
        i = 1; sel = 3'b000; #10;
        i = 1; sel = 3'b001; #10;
        i = 1; sel = 3'b010; #10;
        i = 0; sel = 3'b011; #10;
        i = 1; sel = 3'b100; #10;
        i = 1; sel = 3'b101; #10;
        i = 1; sel = 3'b110; #10;
        i = 0; sel = 3'b111; #10;

        #10;  // Ensure output settles
        $finish;
    end
endmodule
