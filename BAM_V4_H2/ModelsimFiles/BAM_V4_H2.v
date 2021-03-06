/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 19:00:47 2020
/////////////////////////////////////////////////////////////


module AND2_44 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module FA_44 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module CSA_Cell_44 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_44 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_44 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_38 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
endmodule


module AND2_38 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_38 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_38 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_38 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_30 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_30 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_30 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_30 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_30 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_1 ( A, B, CI, S, CO_BAR );
  input A, B, CI;
  output S, CO_BAR;
  wire   n1;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n1) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n1), .B2(CI), .ZN(CO_BAR) );
  XOR2_X1 U3 ( .A1(n1), .A2(CI), .Z(S) );
endmodule


module AND2_1 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_1 ( X, Y, S_in, C_in, S_out, C_out_BAR );
  input X, Y, S_in, C_in;
  output S_out, C_out_BAR;
  wire   C_out, And_XY;
  assign C_out_BAR = C_out;

  AND2_1 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_1 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .S(S_out), .CO_BAR(C_out) );
endmodule


module FA_2 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_2 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_2 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_2 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_2 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_3 ( A, B, CI, S, CO_BAR );
  input A, B, CI;
  output S, CO_BAR;
  wire   n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(CO_BAR) );
  XOR2_X1 U3 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_3 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_3 ( X, Y, S_in, C_in, S_out, C_out_BAR );
  input X, Y, S_in, C_in;
  output S_out, C_out_BAR;
  wire   C_out, And_XY;
  assign C_out_BAR = C_out;

  AND2_3 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_3 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .S(S_out), .CO_BAR(C_out) );
endmodule


module FA_4 ( A, B, CI, S, CO_BAR );
  input A, B, CI;
  output S, CO_BAR;
  wire   n1;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n1) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n1), .B2(CI), .ZN(CO_BAR) );
  XOR2_X1 U3 ( .A1(n1), .A2(CI), .Z(S) );
endmodule


module AND2_4 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_4 ( X, Y, S_in, C_in, S_out, C_out_BAR );
  input X, Y, S_in, C_in;
  output S_out, C_out_BAR;
  wire   C_out, And_XY;
  assign C_out_BAR = C_out;

  AND2_4 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_4 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .S(S_out), .CO_BAR(C_out) );
endmodule


module FA_5 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_5 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_5 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_5 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_5 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_6 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_6 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_6 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_6 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_6 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_7 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_7 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_7 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_7 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_7 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_9 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_9 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_9 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_9 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_9 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_10 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_10 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_10 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_10 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_10 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_11 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_11 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_11 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_11 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_11 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_12 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_12 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_12 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_12 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_12 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_13 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_13 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_13 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_13 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_13 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_14 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_14 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_14 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_14 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_14 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_15 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_15 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_15 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_15 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_15 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_17 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_17 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_17 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_17 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_17 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_18 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_18 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_18 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_18 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_18 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_19 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_19 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_19 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_19 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_19 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_20 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_20 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_20 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_20 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_20 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_21 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_21 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_21 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_21 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_21 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_22 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_22 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_22 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_22 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_22 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_23 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_23 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_23 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_23 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_23 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_25 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_25 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_25 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_25 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_25 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_26 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_26 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_26 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_26 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_26 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_27 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_27 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_27 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_27 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_27 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_28 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_28 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_28 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_28 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_28 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_29 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_29 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_29 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_29 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_29 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_31 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
endmodule


module AND2_31 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_31 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_31 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_31 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_33 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
endmodule


module AND2_33 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_33 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_33 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_33 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_34 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
endmodule


module AND2_34 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_34 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_34 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_34 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_35 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
endmodule


module AND2_35 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_35 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_35 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_35 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_36 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
endmodule


module AND2_36 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_36 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_36 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_36 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_37 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
endmodule


module AND2_37 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_37 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_37 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_37 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_0 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_0 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_0 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_0 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_0 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_8 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_8 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_8 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_8 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_8 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_16 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_16 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_16 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_16 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_16 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_24 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_24 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_24 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_24 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_24 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_32 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_32 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_32 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_32 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_32 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_39 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_39 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_39 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_39 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_39 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_40 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_40 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_40 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_40 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_40 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_41 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_41 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_41 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_41 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_41 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_42 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_42 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_42 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_42 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_42 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_43 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module AND2_43 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_43 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_43 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_43 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module CSA_Mult_8bits ( A, B, P );
  input [7:0] A;
  input [7:0] B;
  output [15:0] P;
  wire   S_22, S_23, S_24, S_25, S_26, S_27, S_31, C_31, S_32, C_32, S_33,
         C_33, S_34, C_34, S_35, C_35, S_36, C_36, S_37, C_40, S_41, C_41,
         S_42, C_42, S_43, C_43, S_44, C_44, S_45, C_45, S_46, C_46, S_47,
         C_50, S_51, C_51, S_52, C_52, S_53, C_53, S_54, C_54, S_55, C_55,
         S_56, C_56, S_57, C_60, S_61, C_61, S_62, C_62, S_63, C_63, S_64,
         C_64, S_65, C_65, S_66, C_66, S_67, C_70, S_71, C_71, S_72, C_72,
         S_73, C_73, S_74, C_74, S_75, C_75, S_76, C_76, S_77, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53;
  assign P[0] = 1'b0;
  assign P[1] = 1'b0;
  assign P[2] = 1'b0;
  assign P[3] = 1'b0;

  CSA_Cell_44 U18 ( .X(A[2]), .Y(B[2]), .S_in(1'b0), .C_in(1'b0), .S_out(S_22)
         );
  CSA_Cell_43 U19 ( .X(A[2]), .Y(B[3]), .S_in(1'b0), .C_in(1'b0), .S_out(S_23)
         );
  CSA_Cell_42 U20 ( .X(A[2]), .Y(B[4]), .S_in(1'b0), .C_in(1'b0), .S_out(S_24)
         );
  CSA_Cell_41 U21 ( .X(A[2]), .Y(B[5]), .S_in(1'b0), .C_in(1'b0), .S_out(S_25)
         );
  CSA_Cell_40 U22 ( .X(A[2]), .Y(B[6]), .S_in(1'b0), .C_in(1'b0), .S_out(S_26)
         );
  CSA_Cell_39 U23 ( .X(A[2]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_27)
         );
  CSA_Cell_38 U25 ( .X(A[3]), .Y(B[1]), .S_in(S_22), .C_in(1'b0), .S_out(S_31), 
        .C_out(C_31) );
  CSA_Cell_37 U26 ( .X(A[3]), .Y(B[2]), .S_in(S_23), .C_in(1'b0), .S_out(S_32), 
        .C_out(C_32) );
  CSA_Cell_36 U27 ( .X(A[3]), .Y(B[3]), .S_in(S_24), .C_in(1'b0), .S_out(S_33), 
        .C_out(C_33) );
  CSA_Cell_35 U28 ( .X(A[3]), .Y(B[4]), .S_in(S_25), .C_in(1'b0), .S_out(S_34), 
        .C_out(C_34) );
  CSA_Cell_34 U29 ( .X(A[3]), .Y(B[5]), .S_in(S_26), .C_in(1'b0), .S_out(S_35), 
        .C_out(C_35) );
  CSA_Cell_33 U30 ( .X(A[3]), .Y(B[6]), .S_in(S_27), .C_in(1'b0), .S_out(S_36), 
        .C_out(C_36) );
  CSA_Cell_32 U31 ( .X(A[3]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_37)
         );
  CSA_Cell_31 U32 ( .X(A[4]), .Y(B[0]), .S_in(S_31), .C_in(1'b0), .S_out(P[4]), 
        .C_out(C_40) );
  CSA_Cell_30 U33 ( .X(A[4]), .Y(B[1]), .S_in(S_32), .C_in(C_31), .S_out(S_41), 
        .C_out(C_41) );
  CSA_Cell_29 U34 ( .X(A[4]), .Y(B[2]), .S_in(S_33), .C_in(C_32), .S_out(S_42), 
        .C_out(C_42) );
  CSA_Cell_28 U35 ( .X(A[4]), .Y(B[3]), .S_in(S_34), .C_in(C_33), .S_out(S_43), 
        .C_out(C_43) );
  CSA_Cell_27 U36 ( .X(A[4]), .Y(B[4]), .S_in(S_35), .C_in(C_34), .S_out(S_44), 
        .C_out(C_44) );
  CSA_Cell_26 U37 ( .X(A[4]), .Y(B[5]), .S_in(S_36), .C_in(C_35), .S_out(S_45), 
        .C_out(C_45) );
  CSA_Cell_25 U38 ( .X(A[4]), .Y(B[6]), .S_in(S_37), .C_in(C_36), .S_out(S_46), 
        .C_out(C_46) );
  CSA_Cell_24 U39 ( .X(A[4]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_47)
         );
  CSA_Cell_23 U40 ( .X(A[5]), .Y(B[0]), .S_in(S_41), .C_in(C_40), .S_out(P[5]), 
        .C_out(C_50) );
  CSA_Cell_22 U41 ( .X(A[5]), .Y(B[1]), .S_in(S_42), .C_in(C_41), .S_out(S_51), 
        .C_out(C_51) );
  CSA_Cell_21 U42 ( .X(A[5]), .Y(B[2]), .S_in(S_43), .C_in(C_42), .S_out(S_52), 
        .C_out(C_52) );
  CSA_Cell_20 U43 ( .X(A[5]), .Y(B[3]), .S_in(S_44), .C_in(C_43), .S_out(S_53), 
        .C_out(C_53) );
  CSA_Cell_19 U44 ( .X(A[5]), .Y(B[4]), .S_in(S_45), .C_in(C_44), .S_out(S_54), 
        .C_out(C_54) );
  CSA_Cell_18 U45 ( .X(A[5]), .Y(B[5]), .S_in(S_46), .C_in(C_45), .S_out(S_55), 
        .C_out(C_55) );
  CSA_Cell_17 U46 ( .X(A[5]), .Y(B[6]), .S_in(S_47), .C_in(C_46), .S_out(S_56), 
        .C_out(C_56) );
  CSA_Cell_16 U47 ( .X(A[5]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_57)
         );
  CSA_Cell_15 U48 ( .X(A[6]), .Y(B[0]), .S_in(S_51), .C_in(C_50), .S_out(P[6]), 
        .C_out(C_60) );
  CSA_Cell_14 U49 ( .X(A[6]), .Y(B[1]), .S_in(S_52), .C_in(C_51), .S_out(S_61), 
        .C_out(C_61) );
  CSA_Cell_13 U50 ( .X(A[6]), .Y(B[2]), .S_in(S_53), .C_in(C_52), .S_out(S_62), 
        .C_out(C_62) );
  CSA_Cell_12 U51 ( .X(A[6]), .Y(B[3]), .S_in(S_54), .C_in(C_53), .S_out(S_63), 
        .C_out(C_63) );
  CSA_Cell_11 U52 ( .X(A[6]), .Y(B[4]), .S_in(S_55), .C_in(C_54), .S_out(S_64), 
        .C_out(C_64) );
  CSA_Cell_10 U53 ( .X(A[6]), .Y(B[5]), .S_in(S_56), .C_in(C_55), .S_out(S_65), 
        .C_out(C_65) );
  CSA_Cell_9 U54 ( .X(A[6]), .Y(B[6]), .S_in(S_57), .C_in(C_56), .S_out(S_66), 
        .C_out(C_66) );
  CSA_Cell_8 U55 ( .X(A[6]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_67)
         );
  CSA_Cell_7 U56 ( .X(A[7]), .Y(B[0]), .S_in(S_61), .C_in(C_60), .S_out(P[7]), 
        .C_out(C_70) );
  CSA_Cell_6 U57 ( .X(A[7]), .Y(B[1]), .S_in(S_62), .C_in(C_61), .S_out(S_71), 
        .C_out(C_71) );
  CSA_Cell_5 U58 ( .X(A[7]), .Y(B[2]), .S_in(S_63), .C_in(C_62), .S_out(S_72), 
        .C_out(C_72) );
  CSA_Cell_4 U59 ( .X(A[7]), .Y(B[3]), .S_in(S_64), .C_in(C_63), .S_out(S_73), 
        .C_out_BAR(C_73) );
  CSA_Cell_3 U60 ( .X(A[7]), .Y(B[4]), .S_in(S_65), .C_in(C_64), .S_out(S_74), 
        .C_out_BAR(C_74) );
  CSA_Cell_2 U61 ( .X(A[7]), .Y(B[5]), .S_in(S_66), .C_in(C_65), .S_out(S_75), 
        .C_out(C_75) );
  CSA_Cell_1 U62 ( .X(A[7]), .Y(B[6]), .S_in(S_67), .C_in(C_66), .S_out(S_76), 
        .C_out_BAR(C_76) );
  CSA_Cell_0 U63 ( .X(A[7]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_77)
         );
  INV_X1 U80 ( .I(C_74), .ZN(n29) );
  AND2_X1 U82 ( .A1(S_71), .A2(C_70), .Z(n31) );
  XNOR2_X1 U83 ( .A1(S_72), .A2(n31), .ZN(n30) );
  XNOR2_X1 U84 ( .A1(n30), .A2(C_71), .ZN(P[9]) );
  XOR2_X1 U85 ( .A1(S_71), .A2(C_70), .Z(P[8]) );
  INV_X1 U86 ( .I(S_77), .ZN(n41) );
  INV_X1 U87 ( .I(S_75), .ZN(n46) );
  AND3_X1 U88 ( .A1(S_71), .A2(C_70), .A3(C_71), .Z(n32) );
  OAI22_X1 U89 ( .A1(S_72), .A2(n32), .B1(n31), .B2(C_71), .ZN(n52) );
  INV_X1 U90 ( .I(n52), .ZN(n34) );
  AND2_X1 U91 ( .A1(n34), .A2(C_72), .Z(n33) );
  OAI22_X1 U92 ( .A1(n34), .A2(C_72), .B1(S_73), .B2(n33), .ZN(n50) );
  INV_X1 U93 ( .I(n50), .ZN(n36) );
  INV_X1 U94 ( .I(C_73), .ZN(n49) );
  AND2_X1 U95 ( .A1(n36), .A2(S_74), .Z(n35) );
  OAI22_X1 U96 ( .A1(n36), .A2(S_74), .B1(n49), .B2(n35), .ZN(n47) );
  AND2_X1 U97 ( .A1(n46), .A2(n47), .Z(n37) );
  OAI22_X1 U98 ( .A1(n46), .A2(n47), .B1(C_74), .B2(n37), .ZN(n44) );
  AND2_X1 U99 ( .A1(n44), .A2(S_76), .Z(n39) );
  OR2_X1 U100 ( .A1(n44), .A2(S_76), .Z(n38) );
  OAI21_X1 U101 ( .A1(C_75), .A2(n39), .B(n38), .ZN(n42) );
  OR2_X1 U102 ( .A1(n41), .A2(n42), .Z(n40) );
  AOI22_X1 U103 ( .A1(n41), .A2(n42), .B1(C_76), .B2(n40), .ZN(P[15]) );
  XOR2_X1 U104 ( .A1(n41), .A2(C_76), .Z(n43) );
  XNOR2_X1 U105 ( .A1(n43), .A2(n42), .ZN(P[14]) );
  XNOR2_X1 U106 ( .A1(n44), .A2(S_76), .ZN(n45) );
  XNOR2_X1 U107 ( .A1(n45), .A2(C_75), .ZN(P[13]) );
  XOR2_X1 U108 ( .A1(n47), .A2(n46), .Z(n48) );
  XOR2_X1 U109 ( .A1(n48), .A2(n29), .Z(P[12]) );
  XNOR2_X1 U110 ( .A1(n50), .A2(n49), .ZN(n51) );
  XOR2_X1 U111 ( .A1(n51), .A2(S_74), .Z(P[11]) );
  XOR2_X1 U112 ( .A1(n52), .A2(C_72), .Z(n53) );
  XNOR2_X1 U113 ( .A1(n53), .A2(S_73), .ZN(P[10]) );
endmodule

