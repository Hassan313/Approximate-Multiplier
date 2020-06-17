
module HA_X1 (A, B, CO, S);
  input A;
  input B;
  output CO;
  output S;

  and(CO, A, B);
  xor(S, A, B);



endmodule

