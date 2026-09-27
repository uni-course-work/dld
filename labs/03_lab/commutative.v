module commutative (
  input a, b,
  output left1, right1, left2, right2, equal1, equal2
);
  assign left1 = a | b;
  assign right1 = b | a;
  assign left2 = a & b;
  assign right2 = b & a;
  assign equal1 = (left1 == right1);
  assign equal2 = (left2 == right2);
endmodule