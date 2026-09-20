`timescale 1ps/1ps
module tb_and_gate;
  reg a, b;
  wire y1, y2, y3;

  and_structural u1(.a(a), .b(b), .y(y1));
  and_dataflow u2(.a(a), .b(b), .y(y2));
  and_behavioral u3(.a(a), .b(b), .y(y3));

  initial begin
    $dumpfile("tb_and_gate.vcd");
    $dumpvars(0, tb_and_gate);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
  end

  always @(*) begin
    $display("t= %0t\t a= %b\t  b= %b\t  struct= %b\t  dataflow= %b\t  behav= %b",
      $time, a, b, y1, y2, y3);
    if (!(y1 === y2 && y2 === y3))
      $display("MISMATCH DETECTED at t=%0t", $time);
  end
endmodule