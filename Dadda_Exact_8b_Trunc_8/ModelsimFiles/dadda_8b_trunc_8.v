/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 17:55:06 2020
/////////////////////////////////////////////////////////////


module AND2_48 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module COMP4to2_7 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout_BAR );
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


module COMP4to2_6 ( X1, X2, X3, X4, Cout, Sum, Carry, Cin_BAR );
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


module COMP4to2_5 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   N7, n2, n3, n4;
  assign Carry = N7;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n3) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n3), .B2(X3), .ZN(n2) );
  INV_X1 U3 ( .I(n2), .ZN(Cout) );
  XOR2_X1 U4 ( .A1(X3), .A2(n3), .Z(n4) );
  AND2_X1 U5 ( .A1(n4), .A2(Cin), .Z(N7) );
  XOR2_X1 U6 ( .A1(n4), .A2(Cin), .Z(Sum) );
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


module COMP4to2_3 ( X1, X2, X3, X4, Cin, Sum, Carry_BAR, Cout_BAR );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry_BAR, Cout_BAR;
  wire   n2, n3, n4;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n2) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n2), .B2(X3), .ZN(Cout_BAR) );
  XOR2_X1 U3 ( .A1(X3), .A2(n2), .Z(n3) );
  XOR2_X1 U4 ( .A1(X4), .A2(n3), .Z(n4) );
  AOI22_X1 U5 ( .A1(n3), .A2(X4), .B1(n4), .B2(Cin), .ZN(Carry_BAR) );
  XOR2_X1 U6 ( .A1(n4), .A2(Cin), .Z(Sum) );
endmodule


module COMP4to2_4 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   N9, n2, n3, n4;
  assign Carry = N9;

  XOR2_X1 U1 ( .A1(X1), .A2(X2), .Z(n3) );
  AOI22_X1 U2 ( .A1(X1), .A2(X2), .B1(n3), .B2(X3), .ZN(n2) );
  INV_X1 U3 ( .I(n2), .ZN(Cout) );
  XOR2_X1 U4 ( .A1(X3), .A2(n3), .Z(n4) );
  AND2_X1 U5 ( .A1(n4), .A2(X4), .Z(N9) );
  XOR2_X1 U6 ( .A1(n4), .A2(X4), .Z(Sum) );
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


module dadda_8b_trunc_8 ( A, B, P );
  input [7:0] A;
  input [7:0] B;
  output [15:0] P;
  wire   \pp1[7] , co1, s1, cr1, co2, s2, cr2, co3, s3, cr3, co4, s4, co5, cr5,
         co6, s6, cr6, co7, s7, cr7, co8, s8, cr8, co9, s9, cr9, co10, s10,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49;
  wire   [7:0] pp2;
  wire   [7:0] pp3;
  wire   [7:0] pp4;
  wire   [7:0] pp5;
  wire   [7:0] pp6;
  wire   [7:0] pp7;
  assign P[0] = 1'b0;
  assign P[1] = 1'b0;
  assign P[2] = 1'b0;
  assign P[3] = 1'b0;
  assign P[4] = 1'b0;
  assign P[5] = 1'b0;
  assign P[6] = 1'b0;
  assign P[7] = 1'b0;

  AND2_48 u14 ( .A1(A[7]), .A2(B[1]), .Z(\pp1[7] ) );
  AND2_41 U20 ( .A1(A[6]), .A2(B[2]), .Z(pp2[6]) );
  AND2_40 u21 ( .A1(A[7]), .A2(B[2]), .Z(pp2[7]) );
  AND2_34 U26 ( .A1(A[5]), .A2(B[3]), .Z(pp3[5]) );
  AND2_33 U27 ( .A1(A[6]), .A2(B[3]), .Z(pp3[6]) );
  AND2_32 u28 ( .A1(A[7]), .A2(B[3]), .Z(pp3[7]) );
  AND2_27 U32 ( .A1(A[4]), .A2(B[4]), .Z(pp4[4]) );
  AND2_26 U33 ( .A1(A[5]), .A2(B[4]), .Z(pp4[5]) );
  AND2_25 U34 ( .A1(A[6]), .A2(B[4]), .Z(pp4[6]) );
  AND2_24 u35 ( .A1(A[7]), .A2(B[4]), .Z(pp4[7]) );
  AND2_20 U38 ( .A1(A[3]), .A2(B[5]), .Z(pp5[3]) );
  AND2_19 U39 ( .A1(A[4]), .A2(B[5]), .Z(pp5[4]) );
  AND2_18 U40 ( .A1(A[5]), .A2(B[5]), .Z(pp5[5]) );
  AND2_17 U41 ( .A1(A[6]), .A2(B[5]), .Z(pp5[6]) );
  AND2_16 u41 ( .A1(A[7]), .A2(B[5]), .Z(pp5[7]) );
  AND2_13 U44 ( .A1(A[2]), .A2(B[6]), .Z(pp6[2]) );
  AND2_12 U45 ( .A1(A[3]), .A2(B[6]), .Z(pp6[3]) );
  AND2_11 U46 ( .A1(A[4]), .A2(B[6]), .Z(pp6[4]) );
  AND2_10 U47 ( .A1(A[5]), .A2(B[6]), .Z(pp6[5]) );
  AND2_9 U48 ( .A1(A[6]), .A2(B[6]), .Z(pp6[6]) );
  AND2_8 u48 ( .A1(A[7]), .A2(B[6]), .Z(pp6[7]) );
  AND2_6 u50 ( .A1(A[1]), .A2(B[7]), .Z(pp7[1]) );
  AND2_5 u51 ( .A1(A[2]), .A2(B[7]), .Z(pp7[2]) );
  AND2_4 u52 ( .A1(A[3]), .A2(B[7]), .Z(pp7[3]) );
  AND2_3 u53 ( .A1(A[4]), .A2(B[7]), .Z(pp7[4]) );
  AND2_2 u54 ( .A1(A[5]), .A2(B[7]), .Z(pp7[5]) );
  AND2_1 u55 ( .A1(A[6]), .A2(B[7]), .Z(pp7[6]) );
  AND2_0 u56 ( .A1(A[7]), .A2(B[7]), .Z(pp7[7]) );
  COMP4to2_7 U55 ( .X1(\pp1[7] ), .X2(pp2[6]), .X3(pp3[5]), .X4(pp4[4]), .Cin(
        1'b0), .Sum(s1), .Carry(cr1), .Cout_BAR(co1) );
  COMP4to2_6 U57 ( .X1(pp2[7]), .X2(pp3[6]), .X3(pp4[5]), .X4(pp5[4]), .Cout(
        co2), .Sum(s2), .Carry(cr2), .Cin_BAR(co1) );
  COMP4to2_5 U59 ( .X1(pp3[7]), .X2(pp4[6]), .X3(pp5[5]), .X4(1'b0), .Cin(co2), 
        .Cout(co3), .Sum(s3), .Carry(cr3) );
  FA_1 U60 ( .A(pp4[7]), .B(pp5[6]), .CI(co3), .CO(co4), .S(s4) );
  COMP4to2_4 U63 ( .X1(s1), .X2(pp5[3]), .X3(pp6[2]), .X4(pp7[1]), .Cin(1'b0), 
        .Cout(co5), .Sum(P[8]), .Carry(cr5) );
  COMP4to2_3 U64 ( .X1(s2), .X2(cr1), .X3(pp6[3]), .X4(pp7[2]), .Cin(co5), 
        .Sum(s6), .Carry_BAR(cr6), .Cout_BAR(co6) );
  COMP4to2_2 U65 ( .X1(s3), .X2(cr2), .X3(pp6[4]), .X4(pp7[3]), .Sum(s7), 
        .Carry(cr7), .Cin_BAR(co6), .Cout_BAR(co7) );
  COMP4to2_1 U66 ( .X1(s4), .X2(cr3), .X3(pp6[5]), .X4(pp7[4]), .Sum(s8), 
        .Carry(cr8), .Cin_BAR(co7), .Cout_BAR(co8) );
  COMP4to2_0 U67 ( .X1(co4), .X2(pp5[7]), .X3(pp6[6]), .X4(pp7[5]), .Cout(co9), 
        .Sum(s9), .Carry(cr9), .Cin_BAR(co8) );
  FA_0 U72 ( .A(pp6[7]), .B(pp7[6]), .CI(co9), .CO(co10), .S(s10) );
  INV_X1 U89 ( .I(s10), .ZN(n39) );
  XOR2_X1 U90 ( .A1(cr7), .A2(s8), .Z(n46) );
  AOI21_X1 U91 ( .A1(cr5), .A2(s6), .B(s7), .ZN(n30) );
  INV_X1 U92 ( .I(s7), .ZN(n47) );
  NAND2_X1 U93 ( .A1(cr5), .A2(s6), .ZN(n48) );
  OAI22_X1 U94 ( .A1(cr6), .A2(n30), .B1(n47), .B2(n48), .ZN(n45) );
  AND2_X1 U95 ( .A1(n46), .A2(n45), .Z(n31) );
  AOI21_X1 U96 ( .A1(s8), .A2(cr7), .B(n31), .ZN(n43) );
  INV_X1 U97 ( .I(n43), .ZN(n33) );
  OR2_X1 U98 ( .A1(s9), .A2(n33), .Z(n32) );
  AOI22_X1 U99 ( .A1(s9), .A2(n33), .B1(cr8), .B2(n32), .ZN(n40) );
  INV_X1 U100 ( .I(cr9), .ZN(n41) );
  AND2_X1 U101 ( .A1(n39), .A2(n40), .Z(n34) );
  OAI22_X1 U102 ( .A1(n39), .A2(n40), .B1(n41), .B2(n34), .ZN(n37) );
  OR2_X1 U103 ( .A1(co10), .A2(pp7[7]), .Z(n35) );
  AOI22_X1 U104 ( .A1(co10), .A2(pp7[7]), .B1(n37), .B2(n35), .ZN(n36) );
  INV_X1 U105 ( .I(n36), .ZN(P[15]) );
  XOR2_X1 U107 ( .A1(cr5), .A2(s6), .Z(P[9]) );
  XNOR2_X1 U108 ( .A1(pp7[7]), .A2(co10), .ZN(n38) );
  XNOR2_X1 U109 ( .A1(n38), .A2(n37), .ZN(P[14]) );
  XNOR2_X1 U110 ( .A1(n40), .A2(n39), .ZN(n42) );
  XOR2_X1 U111 ( .A1(n42), .A2(n41), .Z(P[13]) );
  XNOR2_X1 U112 ( .A1(n43), .A2(s9), .ZN(n44) );
  XOR2_X1 U113 ( .A1(n44), .A2(cr8), .Z(P[12]) );
  XOR2_X1 U114 ( .A1(n46), .A2(n45), .Z(P[11]) );
  XOR2_X1 U115 ( .A1(n47), .A2(cr6), .Z(n49) );
  XNOR2_X1 U116 ( .A1(n49), .A2(n48), .ZN(P[10]) );
endmodule

