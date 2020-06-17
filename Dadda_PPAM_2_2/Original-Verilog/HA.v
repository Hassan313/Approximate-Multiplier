`timescale 1ps/1ps

module HA (A, B, CO, S);
  input A;
  input B;
  output CO;
  output S;

  and(CO, A, B);
  xor(S, A, B);



endmodule

