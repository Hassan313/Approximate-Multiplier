/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 18:35:47 2020
/////////////////////////////////////////////////////////////

`timescale 1ps/1ps

module HA_7 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module cmp_design2_16 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
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


module FA ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_1 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_0 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module cmp_design2_0 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_1 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_2 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_3 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_4 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_5 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_6 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_7 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_8 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_9 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_10 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_11 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_12 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_13 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_14 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
endmodule


module cmp_design2_15 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2;

  OAI22_X1 U1 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n1) );
  INV_X1 U2 ( .I(n1), .ZN(Carry) );
  AOI22_X1 U3 ( .A1(X4), .A2(X3), .B1(X2), .B2(X1), .ZN(n2) );
  NAND2_X1 U4 ( .A1(Carry), .A2(n2), .ZN(Sum) );
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


module HA_6 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module dadda_8bit_design2 ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  wire   [7:4] L1_0;
  wire   [8:4] L1_1;
  wire   [9:5] L1_2;
  wire   [10:5] L1_3;
  wire   [11:6] L1_4;
  wire   [11:6] L1_5;
  wire   [10:7] L1_6;
  wire   [9:7] L1_7;
  wire   [14:0] L2_0;
  wire   [13:1] L2_1;
  wire   [12:2] L2_2;
  wire   [12:3] L2_3;
  wire   [13:2] L3_0;
  wire   [14:3] L3_1;

  HA_7 HA1 ( .A(L1_0[4]), .B(L1_1[4]), .Sum(L2_0[4]), .Cout(L2_1[5]) );
  cmp_design2_16 cmp1 ( .X1(L1_0[5]), .X2(L1_1[5]), .X3(L1_2[5]), .X4(L1_3[5]), 
        .Sum(L2_0[5]), .Carry(L2_1[6]) );
  cmp_design2_15 cmp2 ( .X1(L1_0[6]), .X2(L1_1[6]), .X3(L1_2[6]), .X4(L1_3[6]), 
        .Sum(L2_0[6]), .Carry(L2_1[7]) );
  HA_6 HA2 ( .A(L1_4[6]), .B(L1_5[6]), .Sum(L2_2[6]), .Cout(L2_3[7]) );
  cmp_design2_14 cmp3 ( .X1(L1_0[7]), .X2(L1_1[7]), .X3(L1_2[7]), .X4(L1_3[7]), 
        .Sum(L2_0[7]), .Carry(L2_1[8]) );
  cmp_design2_13 cmp4 ( .X1(L1_4[7]), .X2(L1_5[7]), .X3(L1_6[7]), .X4(L1_7[7]), 
        .Sum(L2_2[7]), .Carry(L2_2[8]) );
  cmp_design2_12 cmp5 ( .X1(L1_1[8]), .X2(L1_2[8]), .X3(L1_3[8]), .X4(L1_4[8]), 
        .Sum(L2_0[8]), .Carry(L2_1[9]) );
  FA FA1 ( .A(L1_5[8]), .B(L1_6[8]), .Cin(L1_7[8]), .Sum(L2_3[8]), .Cout(
        L2_3[9]) );
  cmp_design2_11 cmp6 ( .X1(L1_2[9]), .X2(L1_3[9]), .X3(L1_4[9]), .X4(L1_5[9]), 
        .Sum(L2_0[9]), .Carry(L2_1[10]) );
  HA_5 HA3 ( .A(L1_6[9]), .B(L1_7[9]), .Sum(L2_2[9]), .Cout(L2_3[10]) );
  cmp_design2_10 cmp7 ( .X1(L1_3[10]), .X2(L1_4[10]), .X3(L1_5[10]), .X4(
        L1_6[10]), .Sum(L2_0[10]), .Carry(L2_1[11]) );
  HA_4 HA4 ( .A(L1_4[11]), .B(L1_5[11]), .Sum(L2_0[11]), .Cout(L2_0[12]) );
  HA_3 HA5 ( .A(L2_0[2]), .B(L2_1[2]), .Sum(L3_0[2]), .Cout(L3_1[3]) );
  cmp_design2_9 cmp8 ( .X1(L2_0[3]), .X2(L2_1[3]), .X3(L2_2[3]), .X4(L2_3[3]), 
        .Sum(L3_0[3]), .Carry(L3_1[4]) );
  cmp_design2_8 cmp9 ( .X1(L2_0[4]), .X2(L2_1[4]), .X3(L2_2[4]), .X4(L2_3[4]), 
        .Sum(L3_0[4]), .Carry(L3_1[5]) );
  cmp_design2_7 cmp10 ( .X1(L2_0[5]), .X2(L2_1[5]), .X3(L2_2[5]), .X4(L2_3[5]), 
        .Sum(L3_0[5]), .Carry(L3_1[6]) );
  cmp_design2_6 cmp11 ( .X1(L2_0[6]), .X2(L2_1[6]), .X3(L2_2[6]), .X4(L2_3[6]), 
        .Sum(L3_0[6]), .Carry(L3_1[7]) );
  cmp_design2_5 cmp12 ( .X1(L2_0[7]), .X2(L2_1[7]), .X3(L2_2[7]), .X4(L2_3[7]), 
        .Sum(L3_0[7]), .Carry(L3_1[8]) );
  cmp_design2_4 cmp13 ( .X1(L2_0[8]), .X2(L2_1[8]), .X3(L2_2[8]), .X4(L2_3[8]), 
        .Sum(L3_0[8]), .Carry(L3_1[9]) );
  cmp_design2_3 cmp14 ( .X1(L2_0[9]), .X2(L2_1[9]), .X3(L2_2[9]), .X4(L2_3[9]), 
        .Sum(L3_0[9]), .Carry(L3_1[10]) );
  cmp_design2_2 cmp15 ( .X1(L2_0[10]), .X2(L2_1[10]), .X3(L2_2[10]), .X4(
        L2_3[10]), .Sum(L3_0[10]), .Carry(L3_1[11]) );
  cmp_design2_1 cmp16 ( .X1(L2_0[11]), .X2(L2_1[11]), .X3(L2_2[11]), .X4(
        L2_3[11]), .Sum(L3_0[11]), .Carry(L3_1[12]) );
  cmp_design2_0 cmp17 ( .X1(L2_0[12]), .X2(L2_1[12]), .X3(L2_2[12]), .X4(
        L2_3[12]), .Sum(L3_0[12]), .Carry(L3_1[13]) );
  HA_2 HA6 ( .A(L2_0[13]), .B(L2_1[13]), .Sum(L3_0[13]), .Cout(L3_1[14]) );
  XOR2_X1 U67 ( .A1(L3_1[9]), .A2(L3_0[9]), .Z(n55) );
  INV_X1 U68 ( .I(n55), .ZN(n16) );
  XOR2_X1 U69 ( .A1(L3_0[6]), .A2(L3_1[6]), .Z(n49) );
  XOR2_X1 U70 ( .A1(L3_0[3]), .A2(L3_1[3]), .Z(n44) );
  NAND3_X1 U71 ( .A1(L3_0[2]), .A2(A[0]), .A3(B[2]), .ZN(n4) );
  NAND2_X1 U72 ( .A1(A[0]), .A2(B[2]), .ZN(n2) );
  XNOR2_X1 U73 ( .A1(L3_0[2]), .A2(n2), .ZN(n42) );
  AND4_X1 U74 ( .A1(A[0]), .A2(A[1]), .A3(B[0]), .A4(B[1]), .Z(n41) );
  NAND2_X1 U75 ( .A1(n42), .A2(n41), .ZN(n3) );
  NAND2_X1 U76 ( .A1(n4), .A2(n3), .ZN(n43) );
  AND2_X1 U77 ( .A1(n44), .A2(n43), .Z(n5) );
  AOI21_X1 U78 ( .A1(L3_1[3]), .A2(L3_0[3]), .B(n5), .ZN(n46) );
  INV_X1 U79 ( .I(n46), .ZN(n6) );
  XOR2_X1 U80 ( .A1(L3_0[4]), .A2(L3_1[4]), .Z(n45) );
  AND2_X1 U81 ( .A1(n6), .A2(n45), .Z(n7) );
  AOI21_X1 U82 ( .A1(L3_1[4]), .A2(L3_0[4]), .B(n7), .ZN(n48) );
  INV_X1 U83 ( .I(n48), .ZN(n8) );
  XOR2_X1 U84 ( .A1(L3_0[5]), .A2(L3_1[5]), .Z(n47) );
  AND2_X1 U85 ( .A1(n8), .A2(n47), .Z(n9) );
  AOI21_X1 U86 ( .A1(L3_1[5]), .A2(L3_0[5]), .B(n9), .ZN(n50) );
  INV_X1 U87 ( .I(n50), .ZN(n10) );
  AND2_X1 U88 ( .A1(n49), .A2(n10), .Z(n11) );
  AOI21_X1 U89 ( .A1(L3_1[6]), .A2(L3_0[6]), .B(n11), .ZN(n52) );
  INV_X1 U90 ( .I(n52), .ZN(n12) );
  XOR2_X1 U91 ( .A1(L3_0[7]), .A2(L3_1[7]), .Z(n51) );
  AND2_X1 U92 ( .A1(n12), .A2(n51), .Z(n13) );
  AOI21_X1 U93 ( .A1(L3_1[7]), .A2(L3_0[7]), .B(n13), .ZN(n54) );
  INV_X1 U94 ( .I(n54), .ZN(n14) );
  XOR2_X1 U95 ( .A1(L3_0[8]), .A2(L3_1[8]), .Z(n53) );
  AND2_X1 U96 ( .A1(n14), .A2(n53), .Z(n15) );
  AOI21_X1 U97 ( .A1(L3_1[8]), .A2(L3_0[8]), .B(n15), .ZN(n56) );
  NOR2_X2 U98 ( .A1(n16), .A2(n56), .ZN(n17) );
  AOI21_X1 U99 ( .A1(L3_0[9]), .A2(L3_1[9]), .B(n17), .ZN(n30) );
  INV_X1 U100 ( .I(n30), .ZN(n18) );
  XOR2_X1 U101 ( .A1(L3_0[10]), .A2(L3_1[10]), .Z(n29) );
  AND2_X1 U102 ( .A1(n18), .A2(n29), .Z(n19) );
  AOI21_X1 U103 ( .A1(L3_1[10]), .A2(L3_0[10]), .B(n19), .ZN(n32) );
  INV_X1 U104 ( .I(n32), .ZN(n20) );
  XOR2_X1 U105 ( .A1(L3_0[11]), .A2(L3_1[11]), .Z(n31) );
  AND2_X1 U106 ( .A1(n20), .A2(n31), .Z(n21) );
  AOI21_X1 U107 ( .A1(L3_1[11]), .A2(L3_0[11]), .B(n21), .ZN(n34) );
  INV_X1 U108 ( .I(n34), .ZN(n22) );
  XOR2_X1 U109 ( .A1(L3_0[12]), .A2(L3_1[12]), .Z(n33) );
  AND2_X1 U110 ( .A1(n22), .A2(n33), .Z(n23) );
  AOI21_X1 U111 ( .A1(L3_1[12]), .A2(L3_0[12]), .B(n23), .ZN(n36) );
  INV_X1 U112 ( .I(n36), .ZN(n24) );
  XOR2_X1 U113 ( .A1(L3_0[13]), .A2(L3_1[13]), .Z(n35) );
  AND2_X1 U114 ( .A1(n24), .A2(n35), .Z(n25) );
  AOI21_X1 U115 ( .A1(L3_1[13]), .A2(L3_0[13]), .B(n25), .ZN(n38) );
  INV_X1 U116 ( .I(n38), .ZN(n27) );
  AND2_X1 U117 ( .A1(B[7]), .A2(A[7]), .Z(n26) );
  XOR2_X1 U118 ( .A1(L3_1[14]), .A2(n26), .Z(n37) );
  AOI22_X1 U119 ( .A1(n27), .A2(n37), .B1(L3_1[14]), .B2(n26), .ZN(n28) );
  INV_X1 U120 ( .I(n28), .ZN(O[15]) );
  XNOR2_X1 U121 ( .A1(n30), .A2(n29), .ZN(O[10]) );
  XNOR2_X1 U122 ( .A1(n32), .A2(n31), .ZN(O[11]) );
  XNOR2_X1 U123 ( .A1(n34), .A2(n33), .ZN(O[12]) );
  XNOR2_X1 U124 ( .A1(n36), .A2(n35), .ZN(O[13]) );
  XNOR2_X1 U125 ( .A1(n38), .A2(n37), .ZN(O[14]) );
  AND2_X1 U126 ( .A1(A[1]), .A2(B[0]), .Z(n40) );
  NAND2_X1 U127 ( .A1(A[0]), .A2(B[1]), .ZN(n39) );
  XNOR2_X1 U128 ( .A1(n40), .A2(n39), .ZN(O[1]) );
  XOR2_X1 U129 ( .A1(n42), .A2(n41), .Z(O[2]) );
  XOR2_X1 U130 ( .A1(n44), .A2(n43), .Z(O[3]) );
  XNOR2_X1 U131 ( .A1(n46), .A2(n45), .ZN(O[4]) );
  XNOR2_X1 U132 ( .A1(n48), .A2(n47), .ZN(O[5]) );
  XNOR2_X1 U133 ( .A1(n50), .A2(n49), .ZN(O[6]) );
  XNOR2_X1 U134 ( .A1(n52), .A2(n51), .ZN(O[7]) );
  XNOR2_X1 U135 ( .A1(n54), .A2(n53), .ZN(O[8]) );
  XNOR2_X1 U136 ( .A1(n56), .A2(n55), .ZN(O[9]) );
  AND2_X1 U137 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  AND2_X1 U138 ( .A1(B[0]), .A2(A[2]), .Z(L2_0[2]) );
  AND2_X1 U139 ( .A1(B[0]), .A2(A[3]), .Z(L2_0[3]) );
  AND2_X1 U140 ( .A1(B[0]), .A2(A[4]), .Z(L1_0[4]) );
  AND2_X1 U141 ( .A1(B[0]), .A2(A[5]), .Z(L1_0[5]) );
  AND2_X1 U142 ( .A1(B[0]), .A2(A[6]), .Z(L1_0[6]) );
  AND2_X1 U143 ( .A1(B[0]), .A2(A[7]), .Z(L1_0[7]) );
  AND2_X1 U144 ( .A1(A[1]), .A2(B[1]), .Z(L2_1[2]) );
  AND2_X1 U145 ( .A1(B[1]), .A2(A[2]), .Z(L2_1[3]) );
  AND2_X1 U146 ( .A1(B[1]), .A2(A[3]), .Z(L1_1[4]) );
  AND2_X1 U147 ( .A1(B[1]), .A2(A[4]), .Z(L1_1[5]) );
  AND2_X1 U148 ( .A1(B[1]), .A2(A[5]), .Z(L1_1[6]) );
  AND2_X1 U149 ( .A1(B[1]), .A2(A[6]), .Z(L1_1[7]) );
  AND2_X1 U150 ( .A1(B[1]), .A2(A[7]), .Z(L1_1[8]) );
  AND2_X1 U151 ( .A1(B[2]), .A2(A[1]), .Z(L2_2[3]) );
  AND2_X1 U152 ( .A1(B[2]), .A2(A[2]), .Z(L2_1[4]) );
  AND2_X1 U153 ( .A1(B[2]), .A2(A[3]), .Z(L1_2[5]) );
  AND2_X1 U154 ( .A1(B[2]), .A2(A[4]), .Z(L1_2[6]) );
  AND2_X1 U155 ( .A1(B[2]), .A2(A[5]), .Z(L1_2[7]) );
  AND2_X1 U156 ( .A1(B[2]), .A2(A[6]), .Z(L1_2[8]) );
  AND2_X1 U157 ( .A1(B[2]), .A2(A[7]), .Z(L1_2[9]) );
  AND2_X1 U158 ( .A1(A[0]), .A2(B[3]), .Z(L2_3[3]) );
  AND2_X1 U159 ( .A1(A[1]), .A2(B[3]), .Z(L2_2[4]) );
  AND2_X1 U160 ( .A1(A[2]), .A2(B[3]), .Z(L1_3[5]) );
  AND2_X1 U161 ( .A1(A[3]), .A2(B[3]), .Z(L1_3[6]) );
  AND2_X1 U162 ( .A1(A[4]), .A2(B[3]), .Z(L1_3[7]) );
  AND2_X1 U163 ( .A1(A[5]), .A2(B[3]), .Z(L1_3[8]) );
  AND2_X1 U164 ( .A1(A[6]), .A2(B[3]), .Z(L1_3[9]) );
  AND2_X1 U165 ( .A1(A[7]), .A2(B[3]), .Z(L1_3[10]) );
  AND2_X1 U166 ( .A1(A[0]), .A2(B[4]), .Z(L2_3[4]) );
  AND2_X1 U167 ( .A1(A[1]), .A2(B[4]), .Z(L2_2[5]) );
  AND2_X1 U168 ( .A1(A[2]), .A2(B[4]), .Z(L1_4[6]) );
  AND2_X1 U169 ( .A1(A[3]), .A2(B[4]), .Z(L1_4[7]) );
  AND2_X1 U170 ( .A1(A[4]), .A2(B[4]), .Z(L1_4[8]) );
  AND2_X1 U171 ( .A1(A[5]), .A2(B[4]), .Z(L1_4[9]) );
  AND2_X1 U172 ( .A1(A[6]), .A2(B[4]), .Z(L1_4[10]) );
  AND2_X1 U173 ( .A1(A[7]), .A2(B[4]), .Z(L1_4[11]) );
  AND2_X1 U174 ( .A1(A[0]), .A2(B[5]), .Z(L2_3[5]) );
  AND2_X1 U175 ( .A1(A[1]), .A2(B[5]), .Z(L1_5[6]) );
  AND2_X1 U176 ( .A1(A[2]), .A2(B[5]), .Z(L1_5[7]) );
  AND2_X1 U177 ( .A1(A[3]), .A2(B[5]), .Z(L1_5[8]) );
  AND2_X1 U178 ( .A1(A[4]), .A2(B[5]), .Z(L1_5[9]) );
  AND2_X1 U179 ( .A1(A[5]), .A2(B[5]), .Z(L1_5[10]) );
  AND2_X1 U180 ( .A1(A[6]), .A2(B[5]), .Z(L1_5[11]) );
  AND2_X1 U181 ( .A1(A[7]), .A2(B[5]), .Z(L2_1[12]) );
  AND2_X1 U182 ( .A1(A[0]), .A2(B[6]), .Z(L2_3[6]) );
  AND2_X1 U183 ( .A1(A[1]), .A2(B[6]), .Z(L1_6[7]) );
  AND2_X1 U184 ( .A1(A[2]), .A2(B[6]), .Z(L1_6[8]) );
  AND2_X1 U185 ( .A1(A[3]), .A2(B[6]), .Z(L1_6[9]) );
  AND2_X1 U186 ( .A1(A[4]), .A2(B[6]), .Z(L1_6[10]) );
  AND2_X1 U187 ( .A1(A[5]), .A2(B[6]), .Z(L2_2[11]) );
  AND2_X1 U188 ( .A1(A[6]), .A2(B[6]), .Z(L2_2[12]) );
  AND2_X1 U189 ( .A1(A[7]), .A2(B[6]), .Z(L2_0[13]) );
  AND2_X1 U190 ( .A1(A[0]), .A2(B[7]), .Z(L1_7[7]) );
  AND2_X1 U191 ( .A1(A[1]), .A2(B[7]), .Z(L1_7[8]) );
  AND2_X1 U192 ( .A1(B[7]), .A2(A[2]), .Z(L1_7[9]) );
  AND2_X1 U193 ( .A1(B[7]), .A2(A[3]), .Z(L2_2[10]) );
  AND2_X1 U194 ( .A1(B[7]), .A2(A[4]), .Z(L2_3[11]) );
  AND2_X1 U195 ( .A1(B[7]), .A2(A[5]), .Z(L2_3[12]) );
  AND2_X1 U196 ( .A1(B[7]), .A2(A[6]), .Z(L2_1[13]) );
endmodule

