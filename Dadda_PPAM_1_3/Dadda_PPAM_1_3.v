/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 18:52:25 2020
/////////////////////////////////////////////////////////////

`timescale 1ps/1ps

module AND2_63 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module HA_5 ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module COMP4to2_6 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout_BAR );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout_BAR;
  wire   n2, n3, n4, n5, n6;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n2) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n2), .B2(X3), .ZN(Cout_BAR) );
  XNOR2_X1 U3 ( .A1(X3), .A2(n2), .ZN(n4) );
  INV_X1 U4 ( .I(X4), .ZN(n3) );
  XOR2_X1 U5 ( .A1(X4), .A2(n4), .Z(n6) );
  INV_X1 U6 ( .I(Cin), .ZN(n5) );
  OAI22_X1 U7 ( .A1(n4), .A2(n3), .B1(n6), .B2(n5), .ZN(Carry) );
  XOR2_X1 U8 ( .A1(n6), .A2(n5), .Z(Sum) );
endmodule


module FA ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module COMP4to2_0 ( X1, X2, X3, X4, Cout, Sum, Carry, Cin_BAR );
  input X1, X2, X3, X4, Cin_BAR;
  output Cout, Sum, Carry;
  wire   Cin, n1, n2, n3, n4, n5;
  assign Cin = Cin_BAR;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n2) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n2), .B2(X3), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(Cout) );
  XNOR2_X1 U4 ( .A1(X3), .A2(n2), .ZN(n4) );
  INV_X1 U5 ( .I(X4), .ZN(n3) );
  XOR2_X1 U6 ( .A1(X4), .A2(n4), .Z(n5) );
  OAI22_X1 U7 ( .A1(n4), .A2(n3), .B1(n5), .B2(Cin), .ZN(Carry) );
  XOR2_X1 U8 ( .A1(n5), .A2(Cin), .Z(Sum) );
endmodule


module COMP4to2_1 ( X1, X2, X3, X4, Sum, Carry, Cin_BAR, Cout_BAR );
  input X1, X2, X3, X4, Cin_BAR;
  output Sum, Carry, Cout_BAR;
  wire   Cin, n2, n3, n4, n5;
  assign Cin = Cin_BAR;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n2) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n2), .B2(X3), .ZN(Cout_BAR) );
  XNOR2_X1 U3 ( .A1(X3), .A2(n2), .ZN(n4) );
  INV_X1 U4 ( .I(X4), .ZN(n3) );
  XOR2_X1 U5 ( .A1(X4), .A2(n4), .Z(n5) );
  OAI22_X1 U6 ( .A1(n4), .A2(n3), .B1(n5), .B2(Cin), .ZN(Carry) );
  XOR2_X1 U7 ( .A1(n5), .A2(Cin), .Z(Sum) );
endmodule


module COMP4to2_2 ( X1, X2, X3, X4, Sum, Carry, Cin_BAR, Cout_BAR );
  input X1, X2, X3, X4, Cin_BAR;
  output Sum, Carry, Cout_BAR;
  wire   Cin, n2, n3, n4, n5;
  assign Cin = Cin_BAR;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n2) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n2), .B2(X3), .ZN(Cout_BAR) );
  XNOR2_X1 U3 ( .A1(X3), .A2(n2), .ZN(n4) );
  INV_X1 U4 ( .I(X4), .ZN(n3) );
  XOR2_X1 U5 ( .A1(X4), .A2(n4), .Z(n5) );
  OAI22_X1 U6 ( .A1(n4), .A2(n3), .B1(n5), .B2(Cin), .ZN(Carry) );
  XOR2_X1 U7 ( .A1(n5), .A2(Cin), .Z(Sum) );
endmodule


module COMP4to2_3 ( X1, X2, X3, X4, Sum, Carry, Cin_BAR, Cout_BAR );
  input X1, X2, X3, X4, Cin_BAR;
  output Sum, Carry, Cout_BAR;
  wire   Cin, n2, n3, n4, n5;
  assign Cin = Cin_BAR;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n2) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n2), .B2(X3), .ZN(Cout_BAR) );
  XNOR2_X1 U3 ( .A1(X3), .A2(n2), .ZN(n4) );
  INV_X1 U4 ( .I(X4), .ZN(n3) );
  XOR2_X1 U5 ( .A1(X4), .A2(n4), .Z(n5) );
  OAI22_X1 U6 ( .A1(n4), .A2(n3), .B1(n5), .B2(Cin), .ZN(Carry) );
  XOR2_X1 U7 ( .A1(n5), .A2(Cin), .Z(Sum) );
endmodule


module COMP4to2_4 ( X1, X2, X3, X4, Sum, Carry, Cin_BAR, Cout_BAR );
  input X1, X2, X3, X4, Cin_BAR;
  output Sum, Carry, Cout_BAR;
  wire   Cin, n2, n3, n4, n5;
  assign Cin = Cin_BAR;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n2) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n2), .B2(X3), .ZN(Cout_BAR) );
  XNOR2_X1 U3 ( .A1(X3), .A2(n2), .ZN(n4) );
  INV_X1 U4 ( .I(X4), .ZN(n3) );
  XOR2_X1 U5 ( .A1(X4), .A2(n4), .Z(n5) );
  OAI22_X1 U6 ( .A1(n4), .A2(n3), .B1(n5), .B2(Cin), .ZN(Carry) );
  XOR2_X1 U7 ( .A1(n5), .A2(Cin), .Z(Sum) );
endmodule


module COMP4to2_5 ( X1, X2, X3, X4, Sum, Carry, Cin_BAR, Cout_BAR );
  input X1, X2, X3, X4, Cin_BAR;
  output Sum, Carry, Cout_BAR;
  wire   Cin, n2, n3, n4, n5;
  assign Cin = Cin_BAR;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n2) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n2), .B2(X3), .ZN(Cout_BAR) );
  XNOR2_X1 U3 ( .A1(X3), .A2(n2), .ZN(n4) );
  INV_X1 U4 ( .I(X4), .ZN(n3) );
  XOR2_X1 U5 ( .A1(X4), .A2(n4), .Z(n5) );
  OAI22_X1 U6 ( .A1(n4), .A2(n3), .B1(n5), .B2(Cin), .ZN(Carry) );
  XOR2_X1 U7 ( .A1(n5), .A2(Cin), .Z(Sum) );
endmodule


module HA_0 ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module HA_1 ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module HA_2 ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module HA_3 ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module HA_4 ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module AND2_0 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_1 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_2 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_3 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_4 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_5 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_6 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_7 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_8 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_9 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_10 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_11 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_12 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_13 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_14 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_15 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_16 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_17 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_18 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_19 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_20 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_21 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_22 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_23 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_24 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_25 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_26 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_27 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_28 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_29 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_30 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_31 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_56 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_57 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_58 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_59 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_60 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_61 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_62 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module dadda_PPAM_1_3 ( A, B, P );
  input [7:0] A;
  input [7:0] B;
  output [15:0] P;
  wire   co1, s1, co2, s2, co3, s3, co4, s4, co5, s5, co6, s6, co7, s7, cr7,
         co8, s8, cr8, co9, s9, cr9, co10, s10, cr10, co11, s11, cr11, co12,
         s12, cr12, co13, s13, cr13, co14, s14, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31;
  wire   [7:0] pp0;
  wire   [7:0] pp4;
  wire   [7:0] pp5;
  wire   [7:0] pp6;
  wire   [7:0] pp7;

  AND2_63 U0 ( .A1(A[0]), .A2(B[0]), .Z(P[0]) );
  AND2_62 U1 ( .A1(A[1]), .A2(B[0]), .Z(P[1]) );
  AND2_61 U2 ( .A1(A[2]), .A2(B[0]), .Z(P[2]) );
  AND2_60 U3 ( .A1(A[3]), .A2(B[0]), .Z(P[3]) );
  AND2_59 U4 ( .A1(A[4]), .A2(B[0]), .Z(pp0[4]) );
  AND2_58 U5 ( .A1(A[5]), .A2(B[0]), .Z(pp0[5]) );
  AND2_57 U6 ( .A1(A[6]), .A2(B[0]), .Z(pp0[6]) );
  AND2_56 u7 ( .A1(A[7]), .A2(B[0]), .Z(pp0[7]) );
  AND2_31 U28 ( .A1(A[0]), .A2(B[4]), .Z(pp4[0]) );
  AND2_30 U29 ( .A1(A[1]), .A2(B[4]), .Z(pp4[1]) );
  AND2_29 U30 ( .A1(A[2]), .A2(B[4]), .Z(pp4[2]) );
  AND2_28 U31 ( .A1(A[3]), .A2(B[4]), .Z(pp4[3]) );
  AND2_27 U32 ( .A1(A[4]), .A2(B[4]), .Z(pp4[4]) );
  AND2_26 U33 ( .A1(A[5]), .A2(B[4]), .Z(pp4[5]) );
  AND2_25 U34 ( .A1(A[6]), .A2(B[4]), .Z(pp4[6]) );
  AND2_24 u35 ( .A1(A[7]), .A2(B[4]), .Z(pp4[7]) );
  AND2_23 U35 ( .A1(A[0]), .A2(B[5]), .Z(pp5[0]) );
  AND2_22 U36 ( .A1(A[1]), .A2(B[5]), .Z(pp5[1]) );
  AND2_21 U37 ( .A1(A[2]), .A2(B[5]), .Z(pp5[2]) );
  AND2_20 U38 ( .A1(A[3]), .A2(B[5]), .Z(pp5[3]) );
  AND2_19 U39 ( .A1(A[4]), .A2(B[5]), .Z(pp5[4]) );
  AND2_18 U40 ( .A1(A[5]), .A2(B[5]), .Z(pp5[5]) );
  AND2_17 U41 ( .A1(A[6]), .A2(B[5]), .Z(pp5[6]) );
  AND2_16 u41 ( .A1(A[7]), .A2(B[5]), .Z(pp5[7]) );
  AND2_15 U42 ( .A1(A[0]), .A2(B[6]), .Z(pp6[0]) );
  AND2_14 U43 ( .A1(A[1]), .A2(B[6]), .Z(pp6[1]) );
  AND2_13 U44 ( .A1(A[2]), .A2(B[6]), .Z(pp6[2]) );
  AND2_12 U45 ( .A1(A[3]), .A2(B[6]), .Z(pp6[3]) );
  AND2_11 U46 ( .A1(A[4]), .A2(B[6]), .Z(pp6[4]) );
  AND2_10 U47 ( .A1(A[5]), .A2(B[6]), .Z(pp6[5]) );
  AND2_9 U48 ( .A1(A[6]), .A2(B[6]), .Z(pp6[6]) );
  AND2_8 u48 ( .A1(A[7]), .A2(B[6]), .Z(pp6[7]) );
  AND2_7 u49 ( .A1(A[0]), .A2(B[7]), .Z(pp7[0]) );
  AND2_6 u50 ( .A1(A[1]), .A2(B[7]), .Z(pp7[1]) );
  AND2_5 u51 ( .A1(A[2]), .A2(B[7]), .Z(pp7[2]) );
  AND2_4 u52 ( .A1(A[3]), .A2(B[7]), .Z(pp7[3]) );
  AND2_3 u53 ( .A1(A[4]), .A2(B[7]), .Z(pp7[4]) );
  AND2_2 u54 ( .A1(A[5]), .A2(B[7]), .Z(pp7[5]) );
  AND2_1 u55 ( .A1(A[6]), .A2(B[7]), .Z(pp7[6]) );
  AND2_0 u56 ( .A1(A[7]), .A2(B[7]), .Z(pp7[7]) );
  HA_5 U69 ( .A(pp0[7]), .B(pp4[3]), .CO(co1), .S(s1) );
  HA_4 U70 ( .A(pp4[4]), .B(pp5[3]), .CO(co2), .S(s2) );
  HA_3 U71 ( .A(pp4[5]), .B(pp5[4]), .CO(co3), .S(s3) );
  HA_2 U72 ( .A(pp4[6]), .B(pp5[5]), .CO(co4), .S(s4) );
  HA_1 U73 ( .A(pp4[7]), .B(pp5[6]), .CO(co5), .S(s5) );
  HA_0 U61 ( .A(pp0[5]), .B(pp4[1]), .CO(co6), .S(s6) );
  COMP4to2_6 U62 ( .X1(pp0[6]), .X2(pp4[2]), .X3(pp5[1]), .X4(pp6[0]), .Cin(
        co6), .Sum(s7), .Carry(cr7), .Cout_BAR(co7) );
  COMP4to2_5 U63 ( .X1(s1), .X2(pp5[2]), .X3(pp6[1]), .X4(pp7[0]), .Sum(s8), 
        .Carry(cr8), .Cin_BAR(co7), .Cout_BAR(co8) );
  COMP4to2_4 U64 ( .X1(s2), .X2(co1), .X3(pp6[2]), .X4(pp7[1]), .Sum(s9), 
        .Carry(cr9), .Cin_BAR(co8), .Cout_BAR(co9) );
  COMP4to2_3 U65 ( .X1(s3), .X2(co2), .X3(pp6[3]), .X4(pp7[2]), .Sum(s10), 
        .Carry(cr10), .Cin_BAR(co9), .Cout_BAR(co10) );
  COMP4to2_2 U66 ( .X1(s4), .X2(co3), .X3(pp6[4]), .X4(pp7[3]), .Sum(s11), 
        .Carry(cr11), .Cin_BAR(co10), .Cout_BAR(co11) );
  COMP4to2_1 U67 ( .X1(s5), .X2(co4), .X3(pp6[5]), .X4(pp7[4]), .Sum(s12), 
        .Carry(cr12), .Cin_BAR(co11), .Cout_BAR(co12) );
  COMP4to2_0 U68 ( .X1(co5), .X2(pp5[7]), .X3(pp6[6]), .X4(pp7[5]), .Cout(co13), .Sum(s13), .Carry(cr13), .Cin_BAR(co12) );
  FA U74 ( .A(pp6[7]), .B(pp7[6]), .CI(co13), .CO(co14), .S(s14) );
  XOR2_X1 U52 ( .A1(pp7[7]), .A2(co14), .Z(n20) );
  XNOR2_X1 U53 ( .A1(s13), .A2(cr12), .ZN(n16) );
  XNOR2_X1 U54 ( .A1(s12), .A2(cr11), .ZN(n14) );
  XNOR2_X1 U55 ( .A1(s8), .A2(cr7), .ZN(n27) );
  INV_X1 U56 ( .I(s7), .ZN(n24) );
  XOR2_X1 U57 ( .A1(s6), .A2(pp5[0]), .Z(n23) );
  AND3_X1 U58 ( .A1(n23), .A2(pp0[4]), .A3(pp4[0]), .Z(n2) );
  AOI21_X1 U59 ( .A1(pp5[0]), .A2(s6), .B(n2), .ZN(n25) );
  OR2_X1 U60 ( .A1(n24), .A2(n25), .Z(n26) );
  NOR2_X2 U75 ( .A1(n27), .A2(n26), .ZN(n3) );
  AOI21_X1 U76 ( .A1(cr7), .A2(s8), .B(n3), .ZN(n29) );
  XNOR2_X1 U77 ( .A1(s9), .A2(cr8), .ZN(n28) );
  NOR2_X2 U78 ( .A1(n29), .A2(n28), .ZN(n4) );
  AOI21_X1 U79 ( .A1(cr8), .A2(s9), .B(n4), .ZN(n31) );
  XNOR2_X1 U80 ( .A1(cr9), .A2(s10), .ZN(n30) );
  NOR2_X2 U81 ( .A1(n31), .A2(n30), .ZN(n5) );
  AOI21_X1 U82 ( .A1(s10), .A2(cr9), .B(n5), .ZN(n13) );
  XNOR2_X1 U83 ( .A1(s11), .A2(cr10), .ZN(n12) );
  NOR2_X2 U84 ( .A1(n13), .A2(n12), .ZN(n6) );
  AOI21_X1 U85 ( .A1(cr10), .A2(s11), .B(n6), .ZN(n15) );
  NOR2_X2 U86 ( .A1(n14), .A2(n15), .ZN(n7) );
  AOI21_X1 U87 ( .A1(cr11), .A2(s12), .B(n7), .ZN(n17) );
  NOR2_X2 U88 ( .A1(n16), .A2(n17), .ZN(n8) );
  AOI21_X1 U89 ( .A1(cr12), .A2(s13), .B(n8), .ZN(n19) );
  XNOR2_X1 U90 ( .A1(s14), .A2(cr13), .ZN(n18) );
  NOR2_X2 U91 ( .A1(n19), .A2(n18), .ZN(n9) );
  AOI21_X1 U92 ( .A1(cr13), .A2(s14), .B(n9), .ZN(n10) );
  INV_X1 U93 ( .I(n10), .ZN(n21) );
  AOI22_X1 U94 ( .A1(co14), .A2(pp7[7]), .B1(n20), .B2(n21), .ZN(n11) );
  INV_X1 U95 ( .I(n11), .ZN(P[15]) );
  XOR2_X1 U96 ( .A1(n13), .A2(n12), .Z(P[10]) );
  XOR2_X1 U97 ( .A1(n15), .A2(n14), .Z(P[11]) );
  XOR2_X1 U98 ( .A1(n17), .A2(n16), .Z(P[12]) );
  XOR2_X1 U99 ( .A1(n19), .A2(n18), .Z(P[13]) );
  XOR2_X1 U100 ( .A1(n21), .A2(n20), .Z(P[14]) );
  XOR2_X1 U101 ( .A1(pp0[4]), .A2(pp4[0]), .Z(P[4]) );
  NAND2_X1 U102 ( .A1(pp0[4]), .A2(pp4[0]), .ZN(n22) );
  XNOR2_X1 U103 ( .A1(n23), .A2(n22), .ZN(P[5]) );
  XOR2_X1 U104 ( .A1(n25), .A2(n24), .Z(P[6]) );
  XOR2_X1 U105 ( .A1(n27), .A2(n26), .Z(P[7]) );
  XOR2_X1 U106 ( .A1(n29), .A2(n28), .Z(P[8]) );
  XOR2_X1 U107 ( .A1(n31), .A2(n30), .Z(P[9]) );
endmodule

