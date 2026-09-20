`timescale 1ns / 1ps

module xor_gate_tb;

    reg a;
    reg b;
    wire y;

    xor_gate uut (
        .y(y),
        .a(a),
        .b(b)
    );

    initial begin
        $dumpfile("xor_gate_simulation.vcd");
        $dumpvars(0, xor_gate_tb);
        $monitor("Time = %0d ns | Input A = %b, B = %b | Output Y = %b", $time, a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule
