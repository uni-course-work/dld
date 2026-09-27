`timescale 1ps/1ps

module tb_de_morgan;
  reg a, b;
  wire left1, right1, left2, right2, equal1, equal2;
  de_morgan uut(a, b, left1, right1, left2, right2, equal1, equal2);

  initial begin
    $dumpfile("tb_de_morgan.vcd");
    $dumpvars(0, tb_de_morgan);
    $monitor("A = %b B = %b | left = %b right = %b | equal = %b", a, b, left1, right1, equal1);
    $monitor("A = %b B = %b | left = %b right = %b | equal = %b", a, b, left2, right2, equal2);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
  end
endmodule