`timescale 1ns/1ns
module AND2 (A1, A2, Z);
  input A1;
  input A2;
  output Z;

  and(Z, A1, A2);

endmodule
