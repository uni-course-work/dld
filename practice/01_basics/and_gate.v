module and_structural(input a, b, output y);
  and (y, a, b);
endmodule

module and_dataflow(input a, b, output y);
  assign y = a & b;
endmodule;

module and_behavioral(input a, b, output y);
  reg y_reg = 0;
  always @(*) begin
    y_reg = a & b;
  end
  assign y = y_reg;
endmodule