/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 18:40:37 2020
/////////////////////////////////////////////////////////////


module HA_43 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_14 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_15 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module FA_7 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_15 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_14 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module counter42_3 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2, n3;

  XNOR2_X1 U1 ( .A1(X2), .A2(X1), .ZN(n3) );
  XNOR2_X1 U2 ( .A1(X4), .A2(X3), .ZN(n2) );
  XOR2_X1 U3 ( .A1(n3), .A2(n2), .Z(Sum) );
  AOI22_X1 U4 ( .A1(X2), .A2(X1), .B1(X4), .B2(X3), .ZN(n1) );
  OAI21_X1 U5 ( .A1(n3), .A2(n2), .B(n1), .ZN(Carry) );
endmodule


module HA_12 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_13 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module FA_6 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_13 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_12 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module HA_37 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_38 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_39 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_40 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_41 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_42 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module WT_4bit_counter_3 ( A, B, O );
  input [3:0] A;
  input [3:0] B;
  output [7:0] O;
  wire   P01, P02, P03, P10, P11, P12, P13, P20, P21, P22, P23, P30, P31, P32,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [6:0] L1;
  wire   [6:2] L2;
  wire   [6:2] L3;
  wire   [7:3] L4;

  HA_43 HA1 ( .A(P01), .B(P10), .Sum(O[1]), .Cout(L2[2]) );
  FA_7 FA1 ( .A(P02), .B(P11), .Cin(P20), .Sum(L1[2]), .Cout(L2[3]) );
  counter42_3 cnt1 ( .X1(P03), .X2(P12), .X3(P21), .X4(P30), .Sum(L1[3]), 
        .Carry(L2[4]) );
  FA_6 FA2 ( .A(P13), .B(P22), .Cin(P31), .Sum(L1[4]), .Cout(L2[5]) );
  HA_42 HA2 ( .A(P23), .B(P32), .Sum(L1[5]), .Cout(L2[6]) );
  HA_41 HA3 ( .A(L1[2]), .B(L2[2]), .Sum(O[2]), .Cout(L4[3]) );
  HA_40 HA4 ( .A(L1[3]), .B(L2[3]), .Sum(L3[3]), .Cout(L4[4]) );
  HA_39 HA5 ( .A(L1[4]), .B(L2[4]), .Sum(L3[4]), .Cout(L4[5]) );
  HA_38 HA6 ( .A(L1[5]), .B(L2[5]), .Sum(L3[5]), .Cout(L4[6]) );
  HA_37 HA7 ( .A(L1[6]), .B(L2[6]), .Sum(L3[6]), .Cout(L4[7]) );
  AND2_X1 U2 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  AND2_X1 U3 ( .A1(B[0]), .A2(A[1]), .Z(P01) );
  AND2_X1 U4 ( .A1(B[0]), .A2(A[2]), .Z(P02) );
  AND2_X1 U5 ( .A1(B[0]), .A2(A[3]), .Z(P03) );
  AND2_X1 U6 ( .A1(A[0]), .A2(B[1]), .Z(P10) );
  AND2_X1 U7 ( .A1(A[1]), .A2(B[1]), .Z(P11) );
  AND2_X1 U8 ( .A1(A[2]), .A2(B[1]), .Z(P12) );
  AND2_X1 U9 ( .A1(A[3]), .A2(B[1]), .Z(P13) );
  AND2_X1 U10 ( .A1(A[0]), .A2(B[2]), .Z(P20) );
  AND2_X1 U11 ( .A1(A[1]), .A2(B[2]), .Z(P21) );
  AND2_X1 U12 ( .A1(A[2]), .A2(B[2]), .Z(P22) );
  AND2_X1 U13 ( .A1(A[3]), .A2(B[2]), .Z(P23) );
  AND2_X1 U14 ( .A1(A[0]), .A2(B[3]), .Z(P30) );
  AND2_X1 U15 ( .A1(A[1]), .A2(B[3]), .Z(P31) );
  AND2_X1 U16 ( .A1(A[2]), .A2(B[3]), .Z(P32) );
  AND2_X1 U17 ( .A1(A[3]), .A2(B[3]), .Z(L1[6]) );
  INV_X1 U18 ( .I(L3[3]), .ZN(n14) );
  INV_X1 U19 ( .I(L4[3]), .ZN(n13) );
  XNOR2_X1 U20 ( .A1(L4[4]), .A2(L3[4]), .ZN(n12) );
  NOR3_X1 U21 ( .A1(n14), .A2(n13), .A3(n12), .ZN(n1) );
  AOI21_X1 U22 ( .A1(L3[4]), .A2(L4[4]), .B(n1), .ZN(n9) );
  INV_X1 U23 ( .I(n9), .ZN(n3) );
  AND2_X1 U24 ( .A1(L4[5]), .A2(n3), .Z(n2) );
  OAI22_X1 U25 ( .A1(L4[5]), .A2(n3), .B1(L3[5]), .B2(n2), .ZN(n7) );
  INV_X1 U26 ( .I(n7), .ZN(n5) );
  OR2_X1 U27 ( .A1(n5), .A2(L3[6]), .Z(n4) );
  AOI22_X1 U28 ( .A1(n5), .A2(L3[6]), .B1(L4[6]), .B2(n4), .ZN(n6) );
  XNOR2_X1 U29 ( .A1(L4[7]), .A2(n6), .ZN(O[7]) );
  XOR2_X1 U30 ( .A1(L3[6]), .A2(n7), .Z(n8) );
  XNOR2_X1 U31 ( .A1(n8), .A2(L4[6]), .ZN(O[6]) );
  XNOR2_X1 U32 ( .A1(L4[5]), .A2(L3[5]), .ZN(n10) );
  XOR2_X1 U33 ( .A1(n10), .A2(n9), .Z(O[5]) );
  NAND2_X1 U34 ( .A1(L3[3]), .A2(L4[3]), .ZN(n11) );
  XOR2_X1 U35 ( .A1(n12), .A2(n11), .Z(O[4]) );
  XOR2_X1 U36 ( .A1(n14), .A2(n13), .Z(O[3]) );
endmodule


module counter42_0 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2, n3;

  XNOR2_X1 U1 ( .A1(X2), .A2(X1), .ZN(n3) );
  XNOR2_X1 U2 ( .A1(X4), .A2(X3), .ZN(n2) );
  XOR2_X1 U3 ( .A1(n3), .A2(n2), .Z(Sum) );
  AOI22_X1 U4 ( .A1(X2), .A2(X1), .B1(X4), .B2(X3), .ZN(n1) );
  OAI21_X1 U5 ( .A1(n3), .A2(n2), .B(n1), .ZN(Carry) );
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


module HA_16 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_17 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_18 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_19 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_20 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_21 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_22 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module WT_4bit_counter_0 ( A, B, O );
  input [3:0] A;
  input [3:0] B;
  output [7:0] O;
  wire   P01, P02, P03, P10, P11, P12, P13, P20, P21, P22, P23, P30, P31, P32,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [6:0] L1;
  wire   [6:2] L2;
  wire   [6:2] L3;
  wire   [7:3] L4;

  HA_22 HA1 ( .A(P01), .B(P10), .Sum(O[1]), .Cout(L2[2]) );
  FA_1 FA1 ( .A(P02), .B(P11), .Cin(P20), .Sum(L1[2]), .Cout(L2[3]) );
  counter42_0 cnt1 ( .X1(P03), .X2(P12), .X3(P21), .X4(P30), .Sum(L1[3]), 
        .Carry(L2[4]) );
  FA_0 FA2 ( .A(P13), .B(P22), .Cin(P31), .Sum(L1[4]), .Cout(L2[5]) );
  HA_21 HA2 ( .A(P23), .B(P32), .Sum(L1[5]), .Cout(L2[6]) );
  HA_20 HA3 ( .A(L1[2]), .B(L2[2]), .Sum(O[2]), .Cout(L4[3]) );
  HA_19 HA4 ( .A(L1[3]), .B(L2[3]), .Sum(L3[3]), .Cout(L4[4]) );
  HA_18 HA5 ( .A(L1[4]), .B(L2[4]), .Sum(L3[4]), .Cout(L4[5]) );
  HA_17 HA6 ( .A(L1[5]), .B(L2[5]), .Sum(L3[5]), .Cout(L4[6]) );
  HA_16 HA7 ( .A(L1[6]), .B(L2[6]), .Sum(L3[6]), .Cout(L4[7]) );
  AND2_X1 U2 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  AND2_X1 U3 ( .A1(B[0]), .A2(A[1]), .Z(P01) );
  AND2_X1 U4 ( .A1(B[0]), .A2(A[2]), .Z(P02) );
  AND2_X1 U5 ( .A1(B[0]), .A2(A[3]), .Z(P03) );
  AND2_X1 U6 ( .A1(A[0]), .A2(B[1]), .Z(P10) );
  AND2_X1 U7 ( .A1(A[1]), .A2(B[1]), .Z(P11) );
  AND2_X1 U8 ( .A1(A[2]), .A2(B[1]), .Z(P12) );
  AND2_X1 U9 ( .A1(A[3]), .A2(B[1]), .Z(P13) );
  AND2_X1 U10 ( .A1(A[0]), .A2(B[2]), .Z(P20) );
  AND2_X1 U11 ( .A1(A[1]), .A2(B[2]), .Z(P21) );
  AND2_X1 U12 ( .A1(A[2]), .A2(B[2]), .Z(P22) );
  AND2_X1 U13 ( .A1(A[3]), .A2(B[2]), .Z(P23) );
  AND2_X1 U14 ( .A1(A[0]), .A2(B[3]), .Z(P30) );
  AND2_X1 U15 ( .A1(A[1]), .A2(B[3]), .Z(P31) );
  AND2_X1 U16 ( .A1(A[2]), .A2(B[3]), .Z(P32) );
  AND2_X1 U17 ( .A1(A[3]), .A2(B[3]), .Z(L1[6]) );
  INV_X1 U18 ( .I(L3[3]), .ZN(n14) );
  INV_X1 U19 ( .I(L4[3]), .ZN(n13) );
  XNOR2_X1 U20 ( .A1(L4[4]), .A2(L3[4]), .ZN(n12) );
  NOR3_X1 U21 ( .A1(n14), .A2(n13), .A3(n12), .ZN(n1) );
  AOI21_X1 U22 ( .A1(L3[4]), .A2(L4[4]), .B(n1), .ZN(n9) );
  INV_X1 U23 ( .I(n9), .ZN(n3) );
  AND2_X1 U24 ( .A1(L4[5]), .A2(n3), .Z(n2) );
  OAI22_X1 U25 ( .A1(L4[5]), .A2(n3), .B1(L3[5]), .B2(n2), .ZN(n7) );
  INV_X1 U26 ( .I(n7), .ZN(n5) );
  OR2_X1 U27 ( .A1(n5), .A2(L3[6]), .Z(n4) );
  AOI22_X1 U28 ( .A1(n5), .A2(L3[6]), .B1(L4[6]), .B2(n4), .ZN(n6) );
  XNOR2_X1 U29 ( .A1(L4[7]), .A2(n6), .ZN(O[7]) );
  XOR2_X1 U30 ( .A1(L3[6]), .A2(n7), .Z(n8) );
  XNOR2_X1 U31 ( .A1(n8), .A2(L4[6]), .ZN(O[6]) );
  XNOR2_X1 U32 ( .A1(L4[5]), .A2(L3[5]), .ZN(n10) );
  XOR2_X1 U33 ( .A1(n10), .A2(n9), .Z(O[5]) );
  NAND2_X1 U34 ( .A1(L3[3]), .A2(L4[3]), .ZN(n11) );
  XOR2_X1 U35 ( .A1(n12), .A2(n11), .Z(O[4]) );
  XOR2_X1 U36 ( .A1(n14), .A2(n13), .Z(O[3]) );
endmodule


module counter42_1 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2, n3;

  XNOR2_X1 U1 ( .A1(X2), .A2(X1), .ZN(n3) );
  XNOR2_X1 U2 ( .A1(X4), .A2(X3), .ZN(n2) );
  XOR2_X1 U3 ( .A1(n3), .A2(n2), .Z(Sum) );
  AOI22_X1 U4 ( .A1(X2), .A2(X1), .B1(X4), .B2(X3), .ZN(n1) );
  OAI21_X1 U5 ( .A1(n3), .A2(n2), .B(n1), .ZN(Carry) );
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


module FA_3 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_7 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_6 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module HA_23 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_24 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_25 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_26 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_27 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_28 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_29 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module WT_4bit_counter_1 ( A, B, O );
  input [3:0] A;
  input [3:0] B;
  output [7:0] O;
  wire   P01, P02, P03, P10, P11, P12, P13, P20, P21, P22, P23, P30, P31, P32,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [6:0] L1;
  wire   [6:2] L2;
  wire   [6:2] L3;
  wire   [7:3] L4;

  HA_29 HA1 ( .A(P01), .B(P10), .Sum(O[1]), .Cout(L2[2]) );
  FA_3 FA1 ( .A(P02), .B(P11), .Cin(P20), .Sum(L1[2]), .Cout(L2[3]) );
  counter42_1 cnt1 ( .X1(P03), .X2(P12), .X3(P21), .X4(P30), .Sum(L1[3]), 
        .Carry(L2[4]) );
  FA_2 FA2 ( .A(P13), .B(P22), .Cin(P31), .Sum(L1[4]), .Cout(L2[5]) );
  HA_28 HA2 ( .A(P23), .B(P32), .Sum(L1[5]), .Cout(L2[6]) );
  HA_27 HA3 ( .A(L1[2]), .B(L2[2]), .Sum(O[2]), .Cout(L4[3]) );
  HA_26 HA4 ( .A(L1[3]), .B(L2[3]), .Sum(L3[3]), .Cout(L4[4]) );
  HA_25 HA5 ( .A(L1[4]), .B(L2[4]), .Sum(L3[4]), .Cout(L4[5]) );
  HA_24 HA6 ( .A(L1[5]), .B(L2[5]), .Sum(L3[5]), .Cout(L4[6]) );
  HA_23 HA7 ( .A(L1[6]), .B(L2[6]), .Sum(L3[6]), .Cout(L4[7]) );
  AND2_X1 U2 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  AND2_X1 U3 ( .A1(B[0]), .A2(A[1]), .Z(P01) );
  AND2_X1 U4 ( .A1(B[0]), .A2(A[2]), .Z(P02) );
  AND2_X1 U5 ( .A1(B[0]), .A2(A[3]), .Z(P03) );
  AND2_X1 U6 ( .A1(A[0]), .A2(B[1]), .Z(P10) );
  AND2_X1 U7 ( .A1(A[1]), .A2(B[1]), .Z(P11) );
  AND2_X1 U8 ( .A1(A[2]), .A2(B[1]), .Z(P12) );
  AND2_X1 U9 ( .A1(A[3]), .A2(B[1]), .Z(P13) );
  AND2_X1 U10 ( .A1(A[0]), .A2(B[2]), .Z(P20) );
  AND2_X1 U11 ( .A1(A[1]), .A2(B[2]), .Z(P21) );
  AND2_X1 U12 ( .A1(A[2]), .A2(B[2]), .Z(P22) );
  AND2_X1 U13 ( .A1(A[3]), .A2(B[2]), .Z(P23) );
  AND2_X1 U14 ( .A1(A[0]), .A2(B[3]), .Z(P30) );
  AND2_X1 U15 ( .A1(A[1]), .A2(B[3]), .Z(P31) );
  AND2_X1 U16 ( .A1(A[2]), .A2(B[3]), .Z(P32) );
  AND2_X1 U17 ( .A1(A[3]), .A2(B[3]), .Z(L1[6]) );
  INV_X1 U18 ( .I(L3[3]), .ZN(n14) );
  INV_X1 U19 ( .I(L4[3]), .ZN(n13) );
  XNOR2_X1 U20 ( .A1(L4[4]), .A2(L3[4]), .ZN(n12) );
  NOR3_X1 U21 ( .A1(n14), .A2(n13), .A3(n12), .ZN(n1) );
  AOI21_X1 U22 ( .A1(L3[4]), .A2(L4[4]), .B(n1), .ZN(n9) );
  INV_X1 U23 ( .I(n9), .ZN(n3) );
  AND2_X1 U24 ( .A1(L4[5]), .A2(n3), .Z(n2) );
  OAI22_X1 U25 ( .A1(L4[5]), .A2(n3), .B1(L3[5]), .B2(n2), .ZN(n7) );
  INV_X1 U26 ( .I(n7), .ZN(n5) );
  OR2_X1 U27 ( .A1(n5), .A2(L3[6]), .Z(n4) );
  AOI22_X1 U28 ( .A1(n5), .A2(L3[6]), .B1(L4[6]), .B2(n4), .ZN(n6) );
  XNOR2_X1 U29 ( .A1(L4[7]), .A2(n6), .ZN(O[7]) );
  XOR2_X1 U30 ( .A1(L3[6]), .A2(n7), .Z(n8) );
  XNOR2_X1 U31 ( .A1(n8), .A2(L4[6]), .ZN(O[6]) );
  XNOR2_X1 U32 ( .A1(L4[5]), .A2(L3[5]), .ZN(n10) );
  XOR2_X1 U33 ( .A1(n10), .A2(n9), .Z(O[5]) );
  NAND2_X1 U34 ( .A1(L3[3]), .A2(L4[3]), .ZN(n11) );
  XOR2_X1 U35 ( .A1(n12), .A2(n11), .Z(O[4]) );
  XOR2_X1 U36 ( .A1(n14), .A2(n13), .Z(O[3]) );
endmodule


module counter42_2 ( X1, X2, X3, X4, Sum, Carry );
  input X1, X2, X3, X4;
  output Sum, Carry;
  wire   n1, n2, n3;

  XNOR2_X1 U1 ( .A1(X2), .A2(X1), .ZN(n3) );
  XNOR2_X1 U2 ( .A1(X4), .A2(X3), .ZN(n2) );
  XOR2_X1 U3 ( .A1(n3), .A2(n2), .Z(Sum) );
  AOI22_X1 U4 ( .A1(X2), .A2(X1), .B1(X4), .B2(X3), .ZN(n1) );
  OAI21_X1 U5 ( .A1(n3), .A2(n2), .B(n1), .ZN(Carry) );
endmodule


module HA_8 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_9 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module FA_4 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_9 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_8 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module HA_10 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_11 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module FA_5 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_11 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_10 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module HA_30 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_31 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_32 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_33 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_34 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_35 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_36 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module WT_4bit_counter_2 ( A, B, O );
  input [3:0] A;
  input [3:0] B;
  output [7:0] O;
  wire   P01, P02, P03, P10, P11, P12, P13, P20, P21, P22, P23, P30, P31, P32,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [6:0] L1;
  wire   [6:2] L2;
  wire   [6:2] L3;
  wire   [7:3] L4;

  HA_36 HA1 ( .A(P01), .B(P10), .Sum(O[1]), .Cout(L2[2]) );
  FA_5 FA1 ( .A(P02), .B(P11), .Cin(P20), .Sum(L1[2]), .Cout(L2[3]) );
  counter42_2 cnt1 ( .X1(P03), .X2(P12), .X3(P21), .X4(P30), .Sum(L1[3]), 
        .Carry(L2[4]) );
  FA_4 FA2 ( .A(P13), .B(P22), .Cin(P31), .Sum(L1[4]), .Cout(L2[5]) );
  HA_35 HA2 ( .A(P23), .B(P32), .Sum(L1[5]), .Cout(L2[6]) );
  HA_34 HA3 ( .A(L1[2]), .B(L2[2]), .Sum(O[2]), .Cout(L4[3]) );
  HA_33 HA4 ( .A(L1[3]), .B(L2[3]), .Sum(L3[3]), .Cout(L4[4]) );
  HA_32 HA5 ( .A(L1[4]), .B(L2[4]), .Sum(L3[4]), .Cout(L4[5]) );
  HA_31 HA6 ( .A(L1[5]), .B(L2[5]), .Sum(L3[5]), .Cout(L4[6]) );
  HA_30 HA7 ( .A(L1[6]), .B(L2[6]), .Sum(L3[6]), .Cout(L4[7]) );
  AND2_X1 U2 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  AND2_X1 U3 ( .A1(B[0]), .A2(A[1]), .Z(P01) );
  AND2_X1 U4 ( .A1(B[0]), .A2(A[2]), .Z(P02) );
  AND2_X1 U5 ( .A1(B[0]), .A2(A[3]), .Z(P03) );
  AND2_X1 U6 ( .A1(A[0]), .A2(B[1]), .Z(P10) );
  AND2_X1 U7 ( .A1(A[1]), .A2(B[1]), .Z(P11) );
  AND2_X1 U8 ( .A1(A[2]), .A2(B[1]), .Z(P12) );
  AND2_X1 U9 ( .A1(A[3]), .A2(B[1]), .Z(P13) );
  AND2_X1 U10 ( .A1(A[0]), .A2(B[2]), .Z(P20) );
  AND2_X1 U11 ( .A1(A[1]), .A2(B[2]), .Z(P21) );
  AND2_X1 U12 ( .A1(A[2]), .A2(B[2]), .Z(P22) );
  AND2_X1 U13 ( .A1(A[3]), .A2(B[2]), .Z(P23) );
  AND2_X1 U14 ( .A1(A[0]), .A2(B[3]), .Z(P30) );
  AND2_X1 U15 ( .A1(A[1]), .A2(B[3]), .Z(P31) );
  AND2_X1 U16 ( .A1(A[2]), .A2(B[3]), .Z(P32) );
  AND2_X1 U17 ( .A1(A[3]), .A2(B[3]), .Z(L1[6]) );
  INV_X1 U18 ( .I(L3[3]), .ZN(n14) );
  INV_X1 U19 ( .I(L4[3]), .ZN(n13) );
  XNOR2_X1 U20 ( .A1(L4[4]), .A2(L3[4]), .ZN(n12) );
  NOR3_X1 U21 ( .A1(n14), .A2(n13), .A3(n12), .ZN(n1) );
  AOI21_X1 U22 ( .A1(L3[4]), .A2(L4[4]), .B(n1), .ZN(n9) );
  INV_X1 U23 ( .I(n9), .ZN(n3) );
  AND2_X1 U24 ( .A1(L4[5]), .A2(n3), .Z(n2) );
  OAI22_X1 U25 ( .A1(L4[5]), .A2(n3), .B1(L3[5]), .B2(n2), .ZN(n7) );
  INV_X1 U26 ( .I(n7), .ZN(n5) );
  OR2_X1 U27 ( .A1(n5), .A2(L3[6]), .Z(n4) );
  AOI22_X1 U28 ( .A1(n5), .A2(L3[6]), .B1(L4[6]), .B2(n4), .ZN(n6) );
  XNOR2_X1 U29 ( .A1(L4[7]), .A2(n6), .ZN(O[7]) );
  XOR2_X1 U30 ( .A1(L3[6]), .A2(n7), .Z(n8) );
  XNOR2_X1 U31 ( .A1(n8), .A2(L4[6]), .ZN(O[6]) );
  XNOR2_X1 U32 ( .A1(L4[5]), .A2(L3[5]), .ZN(n10) );
  XOR2_X1 U33 ( .A1(n10), .A2(n9), .Z(O[5]) );
  NAND2_X1 U34 ( .A1(L3[3]), .A2(L4[3]), .ZN(n11) );
  XOR2_X1 U35 ( .A1(n12), .A2(n11), .Z(O[4]) );
  XOR2_X1 U36 ( .A1(n14), .A2(n13), .Z(O[3]) );
endmodule


module WT_8bit_counter ( a, b, c );
  input [7:0] a;
  input [7:0] b;
  output [15:0] c;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89;
  wire   [7:4] q0;
  wire   [7:0] q1;
  wire   [7:0] q2;
  wire   [7:0] q3;

  WT_4bit_counter_3 z1 ( .A(a[3:0]), .B(b[3:0]), .O({q0, c[3:0]}) );
  WT_4bit_counter_2 z2 ( .A(a[7:4]), .B(b[3:0]), .O(q1) );
  WT_4bit_counter_1 z3 ( .A(a[3:0]), .B(b[7:4]), .O(q2) );
  WT_4bit_counter_0 z4 ( .A(a[7:4]), .B(b[7:4]), .O(q3) );
  XOR2_X1 U26 ( .A1(q1[0]), .A2(q0[4]), .Z(n16) );
  XOR2_X1 U27 ( .A1(n16), .A2(q2[0]), .Z(c[4]) );
  NAND2_X1 U28 ( .A1(n16), .A2(q2[0]), .ZN(n22) );
  AND2_X1 U29 ( .A1(q1[0]), .A2(q0[4]), .Z(n18) );
  XNOR2_X1 U30 ( .A1(q0[5]), .A2(n18), .ZN(n17) );
  XNOR2_X1 U31 ( .A1(n17), .A2(q1[1]), .ZN(n20) );
  XNOR2_X1 U32 ( .A1(q2[1]), .A2(n20), .ZN(n21) );
  XOR2_X1 U33 ( .A1(n22), .A2(n21), .Z(c[5]) );
  XNOR2_X1 U34 ( .A1(q0[6]), .A2(q1[2]), .ZN(n26) );
  AND3_X1 U35 ( .A1(q1[0]), .A2(q0[4]), .A3(q1[1]), .Z(n19) );
  OAI22_X1 U36 ( .A1(q0[5]), .A2(n19), .B1(n18), .B2(q1[1]), .ZN(n25) );
  XOR2_X1 U37 ( .A1(n26), .A2(n25), .Z(n30) );
  XNOR2_X1 U38 ( .A1(q2[2]), .A2(n30), .ZN(n32) );
  NAND2_X1 U39 ( .A1(q2[1]), .A2(n20), .ZN(n24) );
  OR2_X1 U40 ( .A1(n22), .A2(n21), .Z(n23) );
  AND2_X1 U41 ( .A1(n24), .A2(n23), .Z(n31) );
  XOR2_X1 U42 ( .A1(n32), .A2(n31), .Z(c[6]) );
  NOR2_X2 U43 ( .A1(n26), .A2(n25), .ZN(n27) );
  AOI21_X1 U44 ( .A1(q1[2]), .A2(q0[6]), .B(n27), .ZN(n28) );
  INV_X1 U45 ( .I(n28), .ZN(n36) );
  XOR2_X1 U46 ( .A1(q0[7]), .A2(n36), .Z(n29) );
  XOR2_X1 U47 ( .A1(n29), .A2(q1[3]), .Z(n39) );
  XNOR2_X1 U48 ( .A1(q2[3]), .A2(n39), .ZN(n41) );
  NAND2_X1 U49 ( .A1(n30), .A2(q2[2]), .ZN(n34) );
  OR2_X1 U50 ( .A1(n32), .A2(n31), .Z(n33) );
  AND2_X1 U51 ( .A1(n34), .A2(n33), .Z(n40) );
  XOR2_X1 U52 ( .A1(n41), .A2(n40), .Z(c[7]) );
  OR2_X1 U53 ( .A1(q0[7]), .A2(n36), .Z(n35) );
  AOI22_X1 U54 ( .A1(q0[7]), .A2(n36), .B1(q1[3]), .B2(n35), .ZN(n37) );
  INV_X1 U55 ( .I(n37), .ZN(n53) );
  XNOR2_X1 U56 ( .A1(n53), .A2(q1[4]), .ZN(n45) );
  INV_X1 U57 ( .I(q3[0]), .ZN(n38) );
  XOR2_X1 U58 ( .A1(n38), .A2(q2[4]), .Z(n44) );
  XNOR2_X1 U59 ( .A1(n45), .A2(n44), .ZN(n47) );
  NAND2_X1 U60 ( .A1(n39), .A2(q2[3]), .ZN(n43) );
  OR2_X1 U61 ( .A1(n41), .A2(n40), .Z(n42) );
  AND2_X1 U62 ( .A1(n43), .A2(n42), .Z(n46) );
  XOR2_X1 U63 ( .A1(n47), .A2(n46), .Z(c[8]) );
  NAND2_X1 U64 ( .A1(q3[0]), .A2(q2[4]), .ZN(n49) );
  OR2_X1 U65 ( .A1(n45), .A2(n44), .Z(n48) );
  OR2_X1 U66 ( .A1(n47), .A2(n46), .Z(n50) );
  NAND3_X1 U67 ( .A1(n49), .A2(n48), .A3(n50), .ZN(n55) );
  INV_X1 U68 ( .I(n50), .ZN(n51) );
  AND3_X1 U69 ( .A1(q3[0]), .A2(q2[4]), .A3(n51), .Z(n56) );
  INV_X1 U70 ( .I(n56), .ZN(n52) );
  AND2_X1 U71 ( .A1(n55), .A2(n52), .Z(n54) );
  XNOR2_X1 U72 ( .A1(q3[1]), .A2(q2[5]), .ZN(n60) );
  AND2_X1 U73 ( .A1(n53), .A2(q1[4]), .Z(n58) );
  XNOR2_X1 U74 ( .A1(q1[5]), .A2(n58), .ZN(n59) );
  XOR2_X1 U75 ( .A1(n60), .A2(n59), .Z(n57) );
  XOR2_X1 U76 ( .A1(n54), .A2(n57), .Z(c[9]) );
  OAI21_X1 U77 ( .A1(n57), .A2(n56), .B(n55), .ZN(n66) );
  XOR2_X1 U78 ( .A1(q3[2]), .A2(q2[6]), .Z(n70) );
  AND2_X1 U79 ( .A1(n58), .A2(q1[5]), .Z(n67) );
  XOR2_X1 U80 ( .A1(n67), .A2(q1[6]), .Z(n69) );
  XNOR2_X1 U81 ( .A1(n70), .A2(n69), .ZN(n65) );
  XNOR2_X1 U82 ( .A1(n66), .A2(n65), .ZN(n62) );
  NOR2_X2 U83 ( .A1(n60), .A2(n59), .ZN(n61) );
  AOI21_X1 U84 ( .A1(q2[5]), .A2(q3[1]), .B(n61), .ZN(n64) );
  XOR2_X1 U85 ( .A1(n62), .A2(n64), .Z(c[10]) );
  OR2_X1 U86 ( .A1(n66), .A2(n65), .Z(n63) );
  AOI22_X1 U87 ( .A1(n66), .A2(n65), .B1(n64), .B2(n63), .ZN(n80) );
  XNOR2_X1 U88 ( .A1(q3[3]), .A2(q2[7]), .ZN(n74) );
  NAND2_X1 U89 ( .A1(n67), .A2(q1[6]), .ZN(n68) );
  XOR2_X1 U90 ( .A1(q1[7]), .A2(n68), .Z(n73) );
  XOR2_X1 U91 ( .A1(n74), .A2(n73), .Z(n78) );
  XOR2_X1 U92 ( .A1(n80), .A2(n78), .Z(n72) );
  AND2_X1 U93 ( .A1(n70), .A2(n69), .Z(n71) );
  AOI21_X1 U94 ( .A1(q2[6]), .A2(q3[2]), .B(n71), .ZN(n76) );
  XNOR2_X1 U95 ( .A1(n72), .A2(n76), .ZN(c[11]) );
  NOR2_X2 U96 ( .A1(n74), .A2(n73), .ZN(n75) );
  AOI21_X1 U97 ( .A1(q2[7]), .A2(q3[3]), .B(n75), .ZN(n81) );
  XOR2_X1 U98 ( .A1(n81), .A2(q3[4]), .Z(n84) );
  INV_X1 U99 ( .I(n76), .ZN(n79) );
  OR2_X1 U100 ( .A1(n80), .A2(n79), .Z(n77) );
  AOI22_X1 U101 ( .A1(n80), .A2(n79), .B1(n78), .B2(n77), .ZN(n83) );
  XOR2_X1 U102 ( .A1(n84), .A2(n83), .Z(c[12]) );
  INV_X1 U103 ( .I(q3[4]), .ZN(n82) );
  OR2_X1 U104 ( .A1(n82), .A2(n81), .Z(n86) );
  OR2_X1 U105 ( .A1(n84), .A2(n83), .Z(n85) );
  NAND2_X1 U106 ( .A1(n86), .A2(n85), .ZN(n87) );
  XOR2_X1 U107 ( .A1(q3[5]), .A2(n87), .Z(c[13]) );
  AND2_X1 U108 ( .A1(q3[5]), .A2(n87), .Z(n88) );
  XOR2_X1 U109 ( .A1(n88), .A2(q3[6]), .Z(c[14]) );
  NAND2_X1 U110 ( .A1(n88), .A2(q3[6]), .ZN(n89) );
  XNOR2_X1 U111 ( .A1(q3[7]), .A2(n89), .ZN(c[15]) );
endmodule

