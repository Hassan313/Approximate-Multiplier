`timescale 1ps/1ps

module FA (A, B, CI, CO, S);
  input A;
  input B;
  input CI;
  output CO;
  output S;

  or(CO, i_16, i_17);
  and(i_16, A, B);
  and(i_17, CI, i_18);
  or(i_18, A, B);
  xor(S, CI, i_22);
  xor(i_22, A, B);
  
endmodule

