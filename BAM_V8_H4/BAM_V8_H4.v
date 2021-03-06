/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 19:06:45 2020
/////////////////////////////////////////////////////////////

`timescale 1ps/1ps

module AND2_21 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module FA_21 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

endmodule


module CSA_Cell_21 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_21 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_21 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_17 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
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
  FA_17 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
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


module FA_1 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_1 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_1 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_1 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_1 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_2 ( A, B, CI, S, CO_BAR );
  input A, B, CI;
  output S, CO_BAR;
  wire   n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(CO_BAR) );
  XOR2_X1 U3 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_2 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_2 ( X, Y, S_in, C_in, S_out, C_out_BAR );
  input X, Y, S_in, C_in;
  output S_out, C_out_BAR;
  wire   C_out, And_XY;
  assign C_out_BAR = C_out;

  AND2_2 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_2 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .S(S_out), .CO_BAR(C_out) );
endmodule


module FA_3 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_3 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_3 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_3 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_3 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_4 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module AND2_4 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_4 ( X, Y, S_in, C_in, S_out, C_out );
  input X, Y, S_in, C_in;
  output S_out, C_out;
  wire   And_XY;

  AND2_4 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_4 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
endmodule


module FA_5 ( A, B, CI, S, CO_BAR );
  input A, B, CI;
  output S, CO_BAR;
  wire   n1;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n1) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n1), .B2(CI), .ZN(CO_BAR) );
  XOR2_X1 U3 ( .A1(n1), .A2(CI), .Z(S) );
endmodule


module AND2_5 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module CSA_Cell_5 ( X, Y, S_in, C_in, S_out, C_out_BAR );
  input X, Y, S_in, C_in;
  output S_out, C_out_BAR;
  wire   C_out, And_XY;
  assign C_out_BAR = C_out;

  AND2_5 U0 ( .A1(X), .A2(Y), .Z(And_XY) );
  FA_5 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .S(S_out), .CO_BAR(C_out) );
endmodule


module FA_8 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
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
  FA_8 U1 ( .A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out) );
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


module FA_6 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
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
  FA_6 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_12 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
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
  FA_12 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_14 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
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
  FA_14 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_15 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
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
  FA_15 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
endmodule


module FA_16 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   i_16, i_22;
  assign CO = i_16;
  assign S = i_22;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(i_16) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(i_22) );
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
  FA_16 U1 ( .A(And_XY), .B(S_in), .CI(1'b0), .CO(C_out), .S(S_out) );
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


module FA_7 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

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
  FA_7 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_13 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

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
  FA_13 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_18 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

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
  FA_18 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_19 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

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
  FA_19 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module FA_20 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   A;
  assign S = A;

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
  FA_20 U1 ( .A(And_XY), .B(1'b0), .CI(1'b0), .S(S_out) );
endmodule


module CSA_Mult_8bits ( A, B, P );
  input [7:0] A;
  input [7:0] B;
  output [15:0] P;
  wire   S_44, S_45, S_46, S_47, S_53, C_53, S_54, C_54, S_55, C_55, S_56,
         C_56, S_57, S_62, C_62, S_63, C_63, S_64, C_64, S_65, C_65, S_66,
         C_66, S_67, C_71, S_72, C_72, S_73, C_73, S_74, C_74, S_75, C_75,
         S_76, C_76, S_77, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48;
  assign P[0] = 1'b0;
  assign P[1] = 1'b0;
  assign P[2] = 1'b0;
  assign P[3] = 1'b0;
  assign P[4] = 1'b0;
  assign P[5] = 1'b0;
  assign P[6] = 1'b0;
  assign P[7] = 1'b0;

  CSA_Cell_21 U36 ( .X(A[4]), .Y(B[4]), .S_in(1'b0), .C_in(1'b0), .S_out(S_44)
         );
  CSA_Cell_20 U37 ( .X(A[4]), .Y(B[5]), .S_in(1'b0), .C_in(1'b0), .S_out(S_45)
         );
  CSA_Cell_19 U38 ( .X(A[4]), .Y(B[6]), .S_in(1'b0), .C_in(1'b0), .S_out(S_46)
         );
  CSA_Cell_18 U39 ( .X(A[4]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_47)
         );
  CSA_Cell_17 U43 ( .X(A[5]), .Y(B[3]), .S_in(S_44), .C_in(1'b0), .S_out(S_53), 
        .C_out(C_53) );
  CSA_Cell_16 U44 ( .X(A[5]), .Y(B[4]), .S_in(S_45), .C_in(1'b0), .S_out(S_54), 
        .C_out(C_54) );
  CSA_Cell_15 U45 ( .X(A[5]), .Y(B[5]), .S_in(S_46), .C_in(1'b0), .S_out(S_55), 
        .C_out(C_55) );
  CSA_Cell_14 U46 ( .X(A[5]), .Y(B[6]), .S_in(S_47), .C_in(1'b0), .S_out(S_56), 
        .C_out(C_56) );
  CSA_Cell_13 U47 ( .X(A[5]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_57)
         );
  CSA_Cell_12 U50 ( .X(A[6]), .Y(B[2]), .S_in(S_53), .C_in(1'b0), .S_out(S_62), 
        .C_out(C_62) );
  CSA_Cell_11 U51 ( .X(A[6]), .Y(B[3]), .S_in(S_54), .C_in(C_53), .S_out(S_63), 
        .C_out(C_63) );
  CSA_Cell_10 U52 ( .X(A[6]), .Y(B[4]), .S_in(S_55), .C_in(C_54), .S_out(S_64), 
        .C_out(C_64) );
  CSA_Cell_9 U53 ( .X(A[6]), .Y(B[5]), .S_in(S_56), .C_in(C_55), .S_out(S_65), 
        .C_out(C_65) );
  CSA_Cell_8 U54 ( .X(A[6]), .Y(B[6]), .S_in(S_57), .C_in(C_56), .S_out(S_66), 
        .C_out(C_66) );
  CSA_Cell_7 U55 ( .X(A[6]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_67)
         );
  CSA_Cell_6 U57 ( .X(A[7]), .Y(B[1]), .S_in(S_62), .C_in(1'b0), .S_out(P[8]), 
        .C_out(C_71) );
  CSA_Cell_5 U58 ( .X(A[7]), .Y(B[2]), .S_in(S_63), .C_in(C_62), .S_out(S_72), 
        .C_out_BAR(C_72) );
  CSA_Cell_4 U59 ( .X(A[7]), .Y(B[3]), .S_in(S_64), .C_in(C_63), .S_out(S_73), 
        .C_out(C_73) );
  CSA_Cell_3 U60 ( .X(A[7]), .Y(B[4]), .S_in(S_65), .C_in(C_64), .S_out(S_74), 
        .C_out(C_74) );
  CSA_Cell_2 U61 ( .X(A[7]), .Y(B[5]), .S_in(S_66), .C_in(C_65), .S_out(S_75), 
        .C_out_BAR(C_75) );
  CSA_Cell_1 U62 ( .X(A[7]), .Y(B[6]), .S_in(S_67), .C_in(C_66), .S_out(S_76), 
        .C_out(C_76) );
  CSA_Cell_0 U63 ( .X(A[7]), .Y(B[7]), .S_in(1'b0), .C_in(1'b0), .S_out(S_77)
         );
  INV_X1 U31 ( .I(S_76), .ZN(n39) );
  XOR2_X1 U32 ( .A1(C_73), .A2(S_74), .Z(n45) );
  AOI21_X1 U33 ( .A1(C_71), .A2(S_72), .B(S_73), .ZN(n30) );
  INV_X1 U34 ( .I(S_73), .ZN(n46) );
  NAND2_X1 U35 ( .A1(C_71), .A2(S_72), .ZN(n47) );
  OAI22_X1 U40 ( .A1(C_72), .A2(n30), .B1(n46), .B2(n47), .ZN(n44) );
  AND2_X1 U41 ( .A1(n45), .A2(n44), .Z(n31) );
  AOI21_X1 U42 ( .A1(S_74), .A2(C_73), .B(n31), .ZN(n42) );
  INV_X1 U48 ( .I(n42), .ZN(n33) );
  OR2_X1 U49 ( .A1(S_75), .A2(n33), .Z(n32) );
  AOI22_X1 U56 ( .A1(S_75), .A2(n33), .B1(C_74), .B2(n32), .ZN(n40) );
  AND2_X1 U64 ( .A1(n39), .A2(n40), .Z(n34) );
  OAI22_X1 U65 ( .A1(n39), .A2(n40), .B1(C_75), .B2(n34), .ZN(n37) );
  OR2_X1 U66 ( .A1(C_76), .A2(S_77), .Z(n35) );
  AOI22_X1 U67 ( .A1(C_76), .A2(S_77), .B1(n37), .B2(n35), .ZN(n36) );
  INV_X1 U68 ( .I(n36), .ZN(P[15]) );
  XOR2_X1 U70 ( .A1(C_71), .A2(S_72), .Z(P[9]) );
  XNOR2_X1 U71 ( .A1(S_77), .A2(C_76), .ZN(n38) );
  XNOR2_X1 U72 ( .A1(n38), .A2(n37), .ZN(P[14]) );
  XNOR2_X1 U73 ( .A1(n40), .A2(n39), .ZN(n41) );
  XOR2_X1 U74 ( .A1(n41), .A2(C_75), .Z(P[13]) );
  XNOR2_X1 U75 ( .A1(n42), .A2(S_75), .ZN(n43) );
  XOR2_X1 U76 ( .A1(n43), .A2(C_74), .Z(P[12]) );
  XOR2_X1 U77 ( .A1(n45), .A2(n44), .Z(P[11]) );
  XOR2_X1 U78 ( .A1(n46), .A2(C_72), .Z(n48) );
  XNOR2_X1 U79 ( .A1(n48), .A2(n47), .ZN(P[10]) );
endmodule

