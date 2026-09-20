module xor_gate (output y, input a, input b);
  wire not_a;
  wire not_b;
  wire and_first;
  wire and_second;

  not (not_a, a);
  not (not_b, b);

  and (and_first, a, not_b);
  and (and_second, not_a, b);

  or (y, and_first, and_second);
endmodule