module tb_commutative;
  reg a, b;
  wire left1, right1, left2, right2, equal1, equal2;

  commutative uut (a, b, left1, right1, left2, right2, equal1, equal2);

  initial begin
    $dumpfile("tb_commutative.vcd");
    $dumpvars(0, tb_commutative);
    $monitor("A = %b B = %b | left = %b  right = %b | equal = %b", a, b, left1, right1, equal1);
    $monitor("A = %b B = %b | left = %b  right = %b | equal = %b", a, b, left2, right2, equal2);
    
    a = 0; b = 0; # 10;
    a = 0; b = 1; # 10;
    a = 1; b = 0; # 10;
    a = 1; b = 1; # 10;
    $finish;
  end
endmodule