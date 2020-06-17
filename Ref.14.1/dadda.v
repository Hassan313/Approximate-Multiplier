/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 18:26:14 2020
/////////////////////////////////////////////////////////////
`timescale 1ps/1ps


module HA_8 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module cmp_design1_17 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_12 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n2, n3;
  assign Carry = Cin;

  OAI21_X1 U1 ( .A1(X1), .A2(X2), .B(X3), .ZN(n2) );
  INV_X1 U2 ( .I(n2), .ZN(Cout) );
  XOR2_X1 U3 ( .A1(X1), .A2(X2), .Z(n3) );
  AOI21_X1 U4 ( .A1(X3), .A2(n3), .B(Cin), .ZN(Sum) );
endmodule


module HA_4 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_5 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module FA_2 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_5 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_4 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module cmp_design1_7 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n2, n3;
  assign Carry = Cin;

  OAI21_X1 U1 ( .A1(X3), .A2(X4), .B(X1), .ZN(n2) );
  INV_X1 U2 ( .I(n2), .ZN(Cout) );
  XOR2_X1 U3 ( .A1(X3), .A2(X4), .Z(n3) );
  AOI21_X1 U4 ( .A1(X1), .A2(n3), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_0 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_1 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_2 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_3 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_4 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_6 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_8 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_9 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_10 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_11 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_13 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_14 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_15 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_16 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n1, n2;
  assign Carry = Cin;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Cout) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  AOI21_X1 U4 ( .A1(Cout), .A2(n2), .B(Cin), .ZN(Sum) );
endmodule


module cmp_design1_5 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   Cin, n2, n3;
  assign Carry = Cin;

  OAI21_X1 U1 ( .A1(X1), .A2(X2), .B(X3), .ZN(n2) );
  INV_X1 U2 ( .I(n2), .ZN(Cout) );
  XOR2_X1 U3 ( .A1(X1), .A2(X2), .Z(n3) );
  AOI21_X1 U4 ( .A1(X3), .A2(n3), .B(Cin), .ZN(Sum) );
endmodule


module HA_0 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_1 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module FA_0 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_1 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_0 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module HA_2 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_3 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module FA_1 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_3 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_2 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module HA_6 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_7 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module dadda_8bit_design1 ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   L2_1_4, L2_1_3, L2_1_2, L2_3_6, L2_3_5, L2_3_4, L2_3_3, int1, int2,
         int3, int4, int5, int6, int7, int8, int9, int10, int11, int12, int13,
         int14, int15, int16, int17, int18, int19, int20, int21, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  wire   [7:4] L1_0;
  wire   [8:4] L1_1;
  wire   [9:5] L1_2;
  wire   [10:5] L1_3;
  wire   [11:6] L1_4;
  wire   [11:6] L1_5;
  wire   [10:7] L1_6;
  wire   [9:7] L1_7;
  wire   [14:0] L2_0;
  wire   [13:6] L2_1;
  wire   [12:2] L2_2;
  wire   [12:8] L2_3;
  wire   [13:2] L3_0;
  wire   [14:4] L3_1;

  HA_8 HA1 ( .A(L1_0[4]), .B(L1_1[4]), .Sum(L2_0[4]), .Cout(int1) );
  cmp_design1_17 cmp1 ( .X1(L1_0[5]), .X2(L1_1[5]), .X3(L1_2[5]), .X4(L1_3[5]), 
        .Cin(int1), .Sum(L2_0[5]), .Carry(L2_1[6]), .Cout(int2) );
  cmp_design1_16 cmp2 ( .X1(L1_0[6]), .X2(L1_1[6]), .X3(L1_2[6]), .X4(L1_3[6]), 
        .Cin(int2), .Sum(L2_0[6]), .Carry(L2_1[7]), .Cout(int3) );
  HA_7 HA2 ( .A(L1_4[6]), .B(L1_5[6]), .Sum(L2_2[6]), .Cout(int4) );
  cmp_design1_15 cmp3 ( .X1(L1_0[7]), .X2(L1_1[7]), .X3(L1_2[7]), .X4(L1_3[7]), 
        .Cin(int3), .Sum(L2_0[7]), .Carry(L2_1[8]), .Cout(int5) );
  cmp_design1_14 cmp4 ( .X1(L1_4[7]), .X2(L1_5[7]), .X3(L1_6[7]), .X4(L1_7[7]), 
        .Cin(int4), .Sum(L2_2[7]), .Carry(L2_2[8]), .Cout(int6) );
  cmp_design1_13 cmp5 ( .X1(L1_1[8]), .X2(L1_2[8]), .X3(L1_3[8]), .X4(L1_4[8]), 
        .Cin(int5), .Sum(L2_0[8]), .Carry(L2_1[9]), .Cout(int7) );
  cmp_design1_12 cmp6 ( .X1(L1_5[8]), .X2(L1_6[8]), .X3(L1_7[8]), .X4(1'b0), 
        .Cin(int6), .Sum(L2_3[8]), .Carry(L2_2[9]), .Cout(int8) );
  cmp_design1_11 cmp7 ( .X1(L1_2[9]), .X2(L1_3[9]), .X3(L1_4[9]), .X4(L1_5[9]), 
        .Cin(int7), .Sum(L2_0[9]), .Carry(L2_1[10]), .Cout(int9) );
  FA_2 FA1 ( .A(L1_6[9]), .B(L1_7[9]), .Cin(int8), .Sum(L2_3[9]), .Cout(
        L2_3[10]) );
  cmp_design1_10 cmp8 ( .X1(L1_3[10]), .X2(L1_4[10]), .X3(L1_5[10]), .X4(
        L1_6[10]), .Cin(int9), .Sum(L2_0[10]), .Carry(L2_1[11]), .Cout(int10)
         );
  FA_1 FA2 ( .A(L1_4[11]), .B(L1_5[11]), .Cin(int10), .Sum(L2_0[11]), .Cout(
        L2_0[12]) );
  HA_6 HA3 ( .A(L2_0[2]), .B(L2_1_2), .Sum(L3_0[2]), .Cout(int11) );
  cmp_design1_9 cmp9 ( .X1(L2_0[3]), .X2(L2_1_3), .X3(L2_2[3]), .X4(L2_3_3), 
        .Cin(int11), .Sum(L3_0[3]), .Carry(L3_1[4]), .Cout(int12) );
  cmp_design1_8 cmp10 ( .X1(L2_0[4]), .X2(L2_1_4), .X3(L2_2[4]), .X4(L2_3_4), 
        .Cin(int12), .Sum(L3_0[4]), .Carry(L3_1[5]), .Cout(int13) );
  cmp_design1_7 cmp11 ( .X1(L2_0[5]), .X2(1'b0), .X3(L2_2[5]), .X4(L2_3_5), 
        .Cin(int13), .Sum(L3_0[5]), .Carry(L3_1[6]), .Cout(int14) );
  cmp_design1_6 cmp12 ( .X1(L2_0[6]), .X2(L2_1[6]), .X3(L2_2[6]), .X4(L2_3_6), 
        .Cin(int14), .Sum(L3_0[6]), .Carry(L3_1[7]), .Cout(int15) );
  cmp_design1_5 cmp13 ( .X1(L2_0[7]), .X2(L2_1[7]), .X3(L2_2[7]), .X4(1'b0), 
        .Cin(int15), .Sum(L3_0[7]), .Carry(L3_1[8]), .Cout(int16) );
  cmp_design1_4 cmp14 ( .X1(L2_0[8]), .X2(L2_1[8]), .X3(L2_2[8]), .X4(L2_3[8]), 
        .Cin(int16), .Sum(L3_0[8]), .Carry(L3_1[9]), .Cout(int17) );
  cmp_design1_3 cmp15 ( .X1(L2_0[9]), .X2(L2_1[9]), .X3(L2_2[9]), .X4(L2_3[9]), 
        .Cin(int17), .Sum(L3_0[9]), .Carry(L3_1[10]), .Cout(int18) );
  cmp_design1_2 cmp16 ( .X1(L2_0[10]), .X2(L2_1[10]), .X3(L2_2[10]), .X4(
        L2_3[10]), .Cin(int18), .Sum(L3_0[10]), .Carry(L3_1[11]), .Cout(int19)
         );
  cmp_design1_1 cmp17 ( .X1(L2_0[11]), .X2(L2_1[11]), .X3(L2_2[11]), .X4(
        L2_3[11]), .Cin(int19), .Sum(L3_0[11]), .Carry(L3_1[12]), .Cout(int20)
         );
  cmp_design1_0 cmp18 ( .X1(L2_0[12]), .X2(L2_1[12]), .X3(L2_2[12]), .X4(
        L2_3[12]), .Cin(int20), .Sum(L3_0[12]), .Carry(L3_1[13]), .Cout(int21)
         );
  FA_0 FA3 ( .A(L2_0[13]), .B(L2_1[13]), .Cin(int21), .Sum(L3_0[13]), .Cout(
        L3_1[14]) );
  NAND2_X1 U67 ( .A1(n5), .A2(n4), .ZN(n2) );
  XOR2_X1 U68 ( .A1(L3_0[4]), .A2(L3_1[4]), .Z(n43) );
  NAND3_X1 U69 ( .A1(L3_0[2]), .A2(A[0]), .A3(B[2]), .ZN(n5) );
  NAND2_X1 U70 ( .A1(A[0]), .A2(B[2]), .ZN(n3) );
  XNOR2_X1 U71 ( .A1(L3_0[2]), .A2(n3), .ZN(n41) );
  AND4_X1 U72 ( .A1(A[0]), .A2(A[1]), .A3(B[0]), .A4(B[1]), .Z(n40) );
  NAND2_X1 U73 ( .A1(n41), .A2(n40), .ZN(n4) );
  AND2_X1 U74 ( .A1(L3_0[3]), .A2(n2), .Z(n42) );
  AND2_X1 U75 ( .A1(n43), .A2(n42), .Z(n6) );
  AOI21_X1 U76 ( .A1(L3_1[4]), .A2(L3_0[4]), .B(n6), .ZN(n45) );
  INV_X1 U77 ( .I(n45), .ZN(n7) );
  XOR2_X1 U78 ( .A1(L3_0[5]), .A2(L3_1[5]), .Z(n44) );
  AND2_X1 U79 ( .A1(n7), .A2(n44), .Z(n8) );
  AOI21_X1 U80 ( .A1(L3_1[5]), .A2(L3_0[5]), .B(n8), .ZN(n47) );
  INV_X1 U81 ( .I(n47), .ZN(n9) );
  XOR2_X1 U82 ( .A1(L3_0[6]), .A2(L3_1[6]), .Z(n46) );
  AND2_X1 U83 ( .A1(n9), .A2(n46), .Z(n10) );
  AOI21_X1 U84 ( .A1(L3_1[6]), .A2(L3_0[6]), .B(n10), .ZN(n49) );
  INV_X1 U85 ( .I(n49), .ZN(n11) );
  XOR2_X1 U86 ( .A1(L3_0[7]), .A2(L3_1[7]), .Z(n48) );
  AND2_X1 U87 ( .A1(n11), .A2(n48), .Z(n12) );
  AOI21_X1 U88 ( .A1(L3_1[7]), .A2(L3_0[7]), .B(n12), .ZN(n51) );
  INV_X1 U89 ( .I(n51), .ZN(n13) );
  XOR2_X1 U90 ( .A1(L3_0[8]), .A2(L3_1[8]), .Z(n50) );
  AND2_X1 U91 ( .A1(n13), .A2(n50), .Z(n14) );
  AOI21_X1 U92 ( .A1(L3_1[8]), .A2(L3_0[8]), .B(n14), .ZN(n53) );
  XOR2_X1 U93 ( .A1(L3_1[9]), .A2(L3_0[9]), .Z(n52) );
  INV_X1 U94 ( .I(n52), .ZN(n15) );
  NOR2_X2 U95 ( .A1(n53), .A2(n15), .ZN(n16) );
  AOI21_X1 U96 ( .A1(L3_0[9]), .A2(L3_1[9]), .B(n16), .ZN(n29) );
  INV_X1 U97 ( .I(n29), .ZN(n17) );
  XOR2_X1 U98 ( .A1(L3_0[10]), .A2(L3_1[10]), .Z(n28) );
  AND2_X1 U99 ( .A1(n17), .A2(n28), .Z(n18) );
  AOI21_X1 U100 ( .A1(L3_1[10]), .A2(L3_0[10]), .B(n18), .ZN(n31) );
  INV_X1 U101 ( .I(n31), .ZN(n19) );
  XOR2_X1 U102 ( .A1(L3_0[11]), .A2(L3_1[11]), .Z(n30) );
  AND2_X1 U103 ( .A1(n19), .A2(n30), .Z(n20) );
  AOI21_X1 U104 ( .A1(L3_1[11]), .A2(L3_0[11]), .B(n20), .ZN(n33) );
  INV_X1 U105 ( .I(n33), .ZN(n21) );
  XOR2_X1 U106 ( .A1(L3_0[12]), .A2(L3_1[12]), .Z(n32) );
  AND2_X1 U107 ( .A1(n21), .A2(n32), .Z(n22) );
  AOI21_X1 U108 ( .A1(L3_1[12]), .A2(L3_0[12]), .B(n22), .ZN(n35) );
  INV_X1 U109 ( .I(n35), .ZN(n23) );
  XOR2_X1 U110 ( .A1(L3_0[13]), .A2(L3_1[13]), .Z(n34) );
  AND2_X1 U111 ( .A1(n23), .A2(n34), .Z(n24) );
  AOI21_X1 U112 ( .A1(L3_1[13]), .A2(L3_0[13]), .B(n24), .ZN(n37) );
  INV_X1 U113 ( .I(n37), .ZN(n26) );
  AND2_X1 U114 ( .A1(B[7]), .A2(A[7]), .Z(n25) );
  XOR2_X1 U115 ( .A1(L3_1[14]), .A2(n25), .Z(n36) );
  AOI22_X1 U116 ( .A1(n26), .A2(n36), .B1(L3_1[14]), .B2(n25), .ZN(n27) );
  INV_X1 U117 ( .I(n27), .ZN(O[15]) );
  XNOR2_X1 U118 ( .A1(n29), .A2(n28), .ZN(O[10]) );
  XNOR2_X1 U119 ( .A1(n31), .A2(n30), .ZN(O[11]) );
  XNOR2_X1 U120 ( .A1(n33), .A2(n32), .ZN(O[12]) );
  XNOR2_X1 U121 ( .A1(n35), .A2(n34), .ZN(O[13]) );
  XNOR2_X1 U122 ( .A1(n37), .A2(n36), .ZN(O[14]) );
  AND2_X1 U123 ( .A1(A[1]), .A2(B[0]), .Z(n39) );
  NAND2_X1 U124 ( .A1(A[0]), .A2(B[1]), .ZN(n38) );
  XNOR2_X1 U125 ( .A1(n39), .A2(n38), .ZN(O[1]) );
  XOR2_X1 U126 ( .A1(n41), .A2(n40), .Z(O[2]) );
  XOR2_X1 U127 ( .A1(L3_0[3]), .A2(n2), .Z(O[3]) );
  XOR2_X1 U128 ( .A1(n43), .A2(n42), .Z(O[4]) );
  XNOR2_X1 U129 ( .A1(n45), .A2(n44), .ZN(O[5]) );
  XNOR2_X1 U130 ( .A1(n47), .A2(n46), .ZN(O[6]) );
  XNOR2_X1 U131 ( .A1(n49), .A2(n48), .ZN(O[7]) );
  XNOR2_X1 U132 ( .A1(n51), .A2(n50), .ZN(O[8]) );
  XNOR2_X1 U133 ( .A1(n53), .A2(n52), .ZN(O[9]) );
  AND2_X1 U134 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  AND2_X1 U135 ( .A1(B[0]), .A2(A[2]), .Z(L2_0[2]) );
  AND2_X1 U136 ( .A1(B[0]), .A2(A[3]), .Z(L2_0[3]) );
  AND2_X1 U137 ( .A1(B[0]), .A2(A[4]), .Z(L1_0[4]) );
  AND2_X1 U138 ( .A1(B[0]), .A2(A[5]), .Z(L1_0[5]) );
  AND2_X1 U139 ( .A1(B[0]), .A2(A[6]), .Z(L1_0[6]) );
  AND2_X1 U140 ( .A1(B[0]), .A2(A[7]), .Z(L1_0[7]) );
  AND2_X1 U141 ( .A1(A[1]), .A2(B[1]), .Z(L2_1_2) );
  AND2_X1 U142 ( .A1(B[1]), .A2(A[2]), .Z(L2_1_3) );
  AND2_X1 U143 ( .A1(B[1]), .A2(A[3]), .Z(L1_1[4]) );
  AND2_X1 U144 ( .A1(B[1]), .A2(A[4]), .Z(L1_1[5]) );
  AND2_X1 U145 ( .A1(B[1]), .A2(A[5]), .Z(L1_1[6]) );
  AND2_X1 U146 ( .A1(B[1]), .A2(A[6]), .Z(L1_1[7]) );
  AND2_X1 U147 ( .A1(B[1]), .A2(A[7]), .Z(L1_1[8]) );
  AND2_X1 U148 ( .A1(B[2]), .A2(A[1]), .Z(L2_2[3]) );
  AND2_X1 U149 ( .A1(B[2]), .A2(A[2]), .Z(L2_1_4) );
  AND2_X1 U150 ( .A1(B[2]), .A2(A[3]), .Z(L1_2[5]) );
  AND2_X1 U151 ( .A1(B[2]), .A2(A[4]), .Z(L1_2[6]) );
  AND2_X1 U152 ( .A1(B[2]), .A2(A[5]), .Z(L1_2[7]) );
  AND2_X1 U153 ( .A1(B[2]), .A2(A[6]), .Z(L1_2[8]) );
  AND2_X1 U154 ( .A1(B[2]), .A2(A[7]), .Z(L1_2[9]) );
  AND2_X1 U155 ( .A1(A[0]), .A2(B[3]), .Z(L2_3_3) );
  AND2_X1 U156 ( .A1(A[1]), .A2(B[3]), .Z(L2_2[4]) );
  AND2_X1 U157 ( .A1(A[2]), .A2(B[3]), .Z(L1_3[5]) );
  AND2_X1 U158 ( .A1(A[3]), .A2(B[3]), .Z(L1_3[6]) );
  AND2_X1 U159 ( .A1(A[4]), .A2(B[3]), .Z(L1_3[7]) );
  AND2_X1 U160 ( .A1(A[5]), .A2(B[3]), .Z(L1_3[8]) );
  AND2_X1 U161 ( .A1(A[6]), .A2(B[3]), .Z(L1_3[9]) );
  AND2_X1 U162 ( .A1(A[7]), .A2(B[3]), .Z(L1_3[10]) );
  AND2_X1 U163 ( .A1(A[0]), .A2(B[4]), .Z(L2_3_4) );
  AND2_X1 U164 ( .A1(A[1]), .A2(B[4]), .Z(L2_2[5]) );
  AND2_X1 U165 ( .A1(A[2]), .A2(B[4]), .Z(L1_4[6]) );
  AND2_X1 U166 ( .A1(A[3]), .A2(B[4]), .Z(L1_4[7]) );
  AND2_X1 U167 ( .A1(A[4]), .A2(B[4]), .Z(L1_4[8]) );
  AND2_X1 U168 ( .A1(A[5]), .A2(B[4]), .Z(L1_4[9]) );
  AND2_X1 U169 ( .A1(A[6]), .A2(B[4]), .Z(L1_4[10]) );
  AND2_X1 U170 ( .A1(A[7]), .A2(B[4]), .Z(L1_4[11]) );
  AND2_X1 U171 ( .A1(A[0]), .A2(B[5]), .Z(L2_3_5) );
  AND2_X1 U172 ( .A1(A[1]), .A2(B[5]), .Z(L1_5[6]) );
  AND2_X1 U173 ( .A1(A[2]), .A2(B[5]), .Z(L1_5[7]) );
  AND2_X1 U174 ( .A1(A[3]), .A2(B[5]), .Z(L1_5[8]) );
  AND2_X1 U175 ( .A1(A[4]), .A2(B[5]), .Z(L1_5[9]) );
  AND2_X1 U176 ( .A1(A[5]), .A2(B[5]), .Z(L1_5[10]) );
  AND2_X1 U177 ( .A1(A[6]), .A2(B[5]), .Z(L1_5[11]) );
  AND2_X1 U178 ( .A1(A[7]), .A2(B[5]), .Z(L2_1[12]) );
  AND2_X1 U179 ( .A1(A[0]), .A2(B[6]), .Z(L2_3_6) );
  AND2_X1 U180 ( .A1(A[1]), .A2(B[6]), .Z(L1_6[7]) );
  AND2_X1 U181 ( .A1(A[2]), .A2(B[6]), .Z(L1_6[8]) );
  AND2_X1 U182 ( .A1(A[3]), .A2(B[6]), .Z(L1_6[9]) );
  AND2_X1 U183 ( .A1(A[4]), .A2(B[6]), .Z(L1_6[10]) );
  AND2_X1 U184 ( .A1(A[5]), .A2(B[6]), .Z(L2_2[11]) );
  AND2_X1 U185 ( .A1(A[6]), .A2(B[6]), .Z(L2_2[12]) );
  AND2_X1 U186 ( .A1(A[7]), .A2(B[6]), .Z(L2_0[13]) );
  AND2_X1 U187 ( .A1(A[0]), .A2(B[7]), .Z(L1_7[7]) );
  AND2_X1 U188 ( .A1(A[1]), .A2(B[7]), .Z(L1_7[8]) );
  AND2_X1 U189 ( .A1(B[7]), .A2(A[2]), .Z(L1_7[9]) );
  AND2_X1 U190 ( .A1(B[7]), .A2(A[3]), .Z(L2_2[10]) );
  AND2_X1 U191 ( .A1(B[7]), .A2(A[4]), .Z(L2_3[11]) );
  AND2_X1 U192 ( .A1(B[7]), .A2(A[5]), .Z(L2_3[12]) );
  AND2_X1 U193 ( .A1(B[7]), .A2(A[6]), .Z(L2_1[13]) );
endmodule

