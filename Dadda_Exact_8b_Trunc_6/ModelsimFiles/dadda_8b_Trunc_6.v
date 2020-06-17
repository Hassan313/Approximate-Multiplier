/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 17:47:38 2020
/////////////////////////////////////////////////////////////


module AND2_57 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module FA_5 ( A, B, CI, S, CO_BAR );
  input A, B, CI;
  output S, CO_BAR;
  wire   n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(CO_BAR) );
  XOR2_X1 U3 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module HA ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module COMP4to2_10 ( X1, X2, X3, X4, Sum, Carry, Cin_BAR, Cout_BAR );
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


module COMP4to2_8 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout_BAR );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout_BAR;
  wire   N7, n3, n4;
  assign Carry = N7;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n3) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n3), .B2(X3), .ZN(Cout_BAR) );
  XOR2_X1 U3 ( .A1(X3), .A2(n3), .Z(n4) );
  AND2_X1 U4 ( .A1(n4), .A2(Cin), .Z(N7) );
  XOR2_X1 U5 ( .A1(n4), .A2(Cin), .Z(Sum) );
endmodule


module COMP4to2_6 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout_BAR );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout_BAR;
  wire   N9, n3, n4;
  assign Carry = N9;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n3) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n3), .B2(X3), .ZN(Cout_BAR) );
  XOR2_X1 U3 ( .A1(X3), .A2(n3), .Z(n4) );
  AND2_X1 U4 ( .A1(n4), .A2(X4), .Z(N9) );
  XOR2_X1 U5 ( .A1(n4), .A2(X4), .Z(Sum) );
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


module COMP4to2_7 ( X1, X2, X3, X4, Cout, Sum, Carry, Cin_BAR );
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


module COMP4to2_9 ( X1, X2, X3, X4, Cout, Sum, Carry, Cin_BAR );
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


module FA_0 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
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


module FA_2 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
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


module FA_4 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
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


module AND2_32 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_33 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_34 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_35 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_36 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_40 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_41 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_42 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_43 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_48 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_49 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_50 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_56 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module dadda_8b_trunc_6b ( A, B, P );
  input [7:0] A;
  input [7:0] B;
  output [15:0] P;
  wire   co1, s1, co2, s2, co3, s3, cr3, co4, s4, co5, s5, cr5, co6, s6, co7,
         s7, cr7, co8, s8, co9, s9, cr9, co10, s10, co11, cr11, co12, s12,
         cr12, co13, s13, cr13, co14, s14, cr14, co15, s15, cr15, co16, s16,
         cr16, co17, s17, cr17, co18, s18, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29;
  wire   [7:0] pp0;
  wire   [7:0] pp1;
  wire   [7:0] pp2;
  wire   [7:0] pp3;
  wire   [7:0] pp4;
  wire   [7:0] pp5;
  wire   [7:0] pp6;
  wire   [7:0] pp7;
  assign P[5] = 1'b0;
  assign P[4] = 1'b0;
  assign P[3] = 1'b0;
  assign P[2] = 1'b0;
  assign P[1] = 1'b0;
  assign P[0] = 1'b0;

  AND2_57 U6 ( .A1(A[6]), .A2(B[0]), .Z(pp0[6]) );
  AND2_56 u7 ( .A1(A[7]), .A2(B[0]), .Z(pp0[7]) );
  AND2_50 U12 ( .A1(A[5]), .A2(B[1]), .Z(pp1[5]) );
  AND2_49 U13 ( .A1(A[6]), .A2(B[1]), .Z(pp1[6]) );
  AND2_48 u14 ( .A1(A[7]), .A2(B[1]), .Z(pp1[7]) );
  AND2_43 U18 ( .A1(A[4]), .A2(B[2]), .Z(pp2[4]) );
  AND2_42 U19 ( .A1(A[5]), .A2(B[2]), .Z(pp2[5]) );
  AND2_41 U20 ( .A1(A[6]), .A2(B[2]), .Z(pp2[6]) );
  AND2_40 u21 ( .A1(A[7]), .A2(B[2]), .Z(pp2[7]) );
  AND2_36 U24 ( .A1(A[3]), .A2(B[3]), .Z(pp3[3]) );
  AND2_35 U25 ( .A1(A[4]), .A2(B[3]), .Z(pp3[4]) );
  AND2_34 U26 ( .A1(A[5]), .A2(B[3]), .Z(pp3[5]) );
  AND2_33 U27 ( .A1(A[6]), .A2(B[3]), .Z(pp3[6]) );
  AND2_32 u28 ( .A1(A[7]), .A2(B[3]), .Z(pp3[7]) );
  AND2_29 U30 ( .A1(A[2]), .A2(B[4]), .Z(pp4[2]) );
  AND2_28 U31 ( .A1(A[3]), .A2(B[4]), .Z(pp4[3]) );
  AND2_27 U32 ( .A1(A[4]), .A2(B[4]), .Z(pp4[4]) );
  AND2_26 U33 ( .A1(A[5]), .A2(B[4]), .Z(pp4[5]) );
  AND2_25 U34 ( .A1(A[6]), .A2(B[4]), .Z(pp4[6]) );
  AND2_24 u35 ( .A1(A[7]), .A2(B[4]), .Z(pp4[7]) );
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
  FA_5 U49 ( .A(pp0[6]), .B(pp1[5]), .CI(pp2[4]), .S(s1), .CO_BAR(co1) );
  HA U50 ( .A(pp3[3]), .B(pp4[2]), .CO(co2), .S(s2) );
  COMP4to2_10 U51 ( .X1(pp0[7]), .X2(pp1[6]), .X3(pp2[5]), .X4(pp3[4]), .Sum(
        s3), .Carry(cr3), .Cin_BAR(co1), .Cout_BAR(co3) );
  FA_4 U52 ( .A(pp4[3]), .B(pp5[2]), .CI(co2), .CO(co4), .S(s4) );
  COMP4to2_9 U53 ( .X1(pp1[7]), .X2(pp2[6]), .X3(pp3[5]), .X4(pp4[4]), .Cout(
        co5), .Sum(s5), .Carry(cr5), .Cin_BAR(co3) );
  FA_3 U54 ( .A(pp5[3]), .B(pp6[2]), .CI(co4), .CO(co6), .S(s6) );
  COMP4to2_8 U55 ( .X1(pp2[7]), .X2(pp3[6]), .X3(pp4[5]), .X4(1'b0), .Cin(co5), 
        .Sum(s7), .Carry(cr7), .Cout_BAR(co7) );
  FA_2 U56 ( .A(pp5[4]), .B(pp6[3]), .CI(co6), .CO(co8), .S(s8) );
  COMP4to2_7 U57 ( .X1(pp3[7]), .X2(pp4[6]), .X3(pp5[5]), .X4(pp6[4]), .Cout(
        co9), .Sum(s9), .Carry(cr9), .Cin_BAR(co7) );
  FA_1 U58 ( .A(pp4[7]), .B(pp5[6]), .CI(co9), .CO(co10), .S(s10) );
  COMP4to2_6 U63 ( .X1(s1), .X2(s2), .X3(pp5[1]), .X4(pp6[0]), .Cin(1'b0), 
        .Sum(P[6]), .Carry(cr11), .Cout_BAR(co11) );
  COMP4to2_5 U64 ( .X1(s3), .X2(s4), .X3(pp6[1]), .X4(pp7[0]), .Sum(s12), 
        .Carry(cr12), .Cin_BAR(co11), .Cout_BAR(co12) );
  COMP4to2_4 U65 ( .X1(s5), .X2(cr3), .X3(s6), .X4(pp7[1]), .Sum(s13), .Carry(
        cr13), .Cin_BAR(co12), .Cout_BAR(co13) );
  COMP4to2_3 U66 ( .X1(s7), .X2(cr5), .X3(s8), .X4(pp7[2]), .Sum(s14), .Carry(
        cr14), .Cin_BAR(co13), .Cout_BAR(co14) );
  COMP4to2_2 U67 ( .X1(s9), .X2(cr7), .X3(co8), .X4(pp7[3]), .Sum(s15), 
        .Carry(cr15), .Cin_BAR(co14), .Cout_BAR(co15) );
  COMP4to2_1 U68 ( .X1(s10), .X2(cr9), .X3(pp6[5]), .X4(pp7[4]), .Sum(s16), 
        .Carry(cr16), .Cin_BAR(co15), .Cout_BAR(co16) );
  COMP4to2_0 U71 ( .X1(co10), .X2(pp5[7]), .X3(pp6[6]), .X4(pp7[5]), .Cout(
        co17), .Sum(s17), .Carry(cr17), .Cin_BAR(co16) );
  FA_0 U72 ( .A(pp6[7]), .B(pp7[6]), .CI(co17), .CO(co18), .S(s18) );
  XOR2_X1 U76 ( .A1(pp7[7]), .A2(co18), .Z(n24) );
  XOR2_X1 U77 ( .A1(s13), .A2(cr12), .Z(n27) );
  AND3_X1 U78 ( .A1(n27), .A2(s12), .A3(cr11), .Z(n8) );
  AOI21_X1 U79 ( .A1(cr12), .A2(s13), .B(n8), .ZN(n29) );
  XNOR2_X1 U80 ( .A1(cr13), .A2(s14), .ZN(n28) );
  NOR2_X2 U81 ( .A1(n29), .A2(n28), .ZN(n9) );
  AOI21_X1 U82 ( .A1(s14), .A2(cr13), .B(n9), .ZN(n17) );
  XNOR2_X1 U83 ( .A1(s15), .A2(cr14), .ZN(n16) );
  NOR2_X2 U84 ( .A1(n17), .A2(n16), .ZN(n10) );
  AOI21_X1 U85 ( .A1(cr14), .A2(s15), .B(n10), .ZN(n19) );
  XNOR2_X1 U86 ( .A1(s16), .A2(cr15), .ZN(n18) );
  NOR2_X2 U87 ( .A1(n19), .A2(n18), .ZN(n11) );
  AOI21_X1 U88 ( .A1(cr15), .A2(s16), .B(n11), .ZN(n21) );
  XNOR2_X1 U89 ( .A1(s17), .A2(cr16), .ZN(n20) );
  NOR2_X2 U90 ( .A1(n21), .A2(n20), .ZN(n12) );
  AOI21_X1 U91 ( .A1(cr16), .A2(s17), .B(n12), .ZN(n23) );
  XNOR2_X1 U92 ( .A1(s18), .A2(cr17), .ZN(n22) );
  NOR2_X2 U93 ( .A1(n23), .A2(n22), .ZN(n13) );
  AOI21_X1 U94 ( .A1(cr17), .A2(s18), .B(n13), .ZN(n14) );
  INV_X1 U95 ( .I(n14), .ZN(n25) );
  AOI22_X1 U96 ( .A1(co18), .A2(pp7[7]), .B1(n24), .B2(n25), .ZN(n15) );
  INV_X1 U97 ( .I(n15), .ZN(P[15]) );
  XOR2_X1 U98 ( .A1(n17), .A2(n16), .Z(P[10]) );
  XOR2_X1 U99 ( .A1(n19), .A2(n18), .Z(P[11]) );
  XOR2_X1 U100 ( .A1(n21), .A2(n20), .Z(P[12]) );
  XOR2_X1 U101 ( .A1(n23), .A2(n22), .Z(P[13]) );
  XOR2_X1 U102 ( .A1(n25), .A2(n24), .Z(P[14]) );
  XOR2_X1 U103 ( .A1(s12), .A2(cr11), .Z(P[7]) );
  NAND2_X1 U104 ( .A1(s12), .A2(cr11), .ZN(n26) );
  XNOR2_X1 U105 ( .A1(n27), .A2(n26), .ZN(P[8]) );
  XOR2_X1 U106 ( .A1(n29), .A2(n28), .Z(P[9]) );
endmodule

