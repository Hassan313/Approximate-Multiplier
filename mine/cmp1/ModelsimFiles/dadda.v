/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Fri Jan 31 18:52:28 2020
/////////////////////////////////////////////////////////////


module HA_8 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;
  wire   n2;

  XNOR2_X1 U1 ( .A1(B), .A2(A), .ZN(n2) );
  INV_X1 U2 ( .I(n2), .ZN(Sum) );
endmodule


module HA_5 ( A, B, Cout, Sum_BAR );
  input A, B;
  output Cout, Sum_BAR;
  wire   Sum, n1;
  assign Sum_BAR = Sum;

  OR2_X2 U1 ( .A1(n1), .A2(Cout), .Z(Sum) );
  AND2_X2 U2 ( .A1(B), .A2(A), .Z(Cout) );
  NOR2_X1 U3 ( .A1(B), .A2(A), .ZN(n1) );
endmodule


module HA_4 ( B, Cout, Sum_BAR, A_BAR );
  input B, A_BAR;
  output Cout, Sum_BAR;
  wire   A;
  assign Sum_BAR = A;
  assign A = A_BAR;

endmodule


module FA_2 ( A, B, Cin, Cout, Sum_BAR );
  input A, B, Cin;
  output Cout, Sum_BAR;
  wire   Sum, s1, c1;
  assign Sum_BAR = Sum;
  assign Cout = c1;

  HA_5 HA1 ( .A(A), .B(B), .Cout(c1), .Sum_BAR(s1) );
  HA_4 HA2 ( .B(1'b0), .Sum_BAR(Sum), .A_BAR(s1) );
endmodule


module cmp1_8 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X1;
  assign Sum = X1;

endmodule


module cmp1_3 ( X1, X2, X3, Cin, Sum, Cout, X4_BAR, Carry_BAR );
  input X1, X2, X3, Cin, X4_BAR;
  output Sum, Cout, Carry_BAR;
  wire   X4;
  assign Carry_BAR = X4;
  assign X4 = X4_BAR;

endmodule


module HA_1 ( A, B, Cout, Sum_BAR );
  input A, B;
  output Cout, Sum_BAR;
  wire   Sum, n1;
  assign Sum_BAR = Sum;

  OR2_X2 U1 ( .A1(n1), .A2(Cout), .Z(Sum) );
  AND2_X2 U2 ( .A1(B), .A2(A), .Z(Cout) );
  NOR2_X1 U3 ( .A1(B), .A2(A), .ZN(n1) );
endmodule


module HA_0 ( B, Cout, Sum_BAR, A_BAR );
  input B, A_BAR;
  output Cout, Sum_BAR;
  wire   A;
  assign Sum_BAR = A;
  assign A = A_BAR;

endmodule


module FA_0 ( A, B, Cin, Cout, Sum_BAR );
  input A, B, Cin;
  output Cout, Sum_BAR;
  wire   Sum, s1, c1;
  assign Sum_BAR = Sum;
  assign Cout = c1;

  HA_1 HA1 ( .A(A), .B(B), .Cout(c1), .Sum_BAR(s1) );
  HA_0 HA2 ( .B(1'b0), .Sum_BAR(Sum), .A_BAR(s1) );
endmodule


module HA_3 ( A, B, Cout, Sum_BAR );
  input A, B;
  output Cout, Sum_BAR;
  wire   Sum, n1;
  assign Sum_BAR = Sum;

  OR2_X2 U1 ( .A1(n1), .A2(Cout), .Z(Sum) );
  AND2_X2 U2 ( .A1(B), .A2(A), .Z(Cout) );
  NOR2_X1 U3 ( .A1(B), .A2(A), .ZN(n1) );
endmodule


module HA_2 ( B, Cout, Sum_BAR, A_BAR );
  input B, A_BAR;
  output Cout, Sum_BAR;
  wire   A;
  assign Sum_BAR = A;
  assign A = A_BAR;

endmodule


module FA_1 ( A, B, Cin, Cout, Sum_BAR );
  input A, B, Cin;
  output Cout, Sum_BAR;
  wire   Sum, s1, c1;
  assign Sum_BAR = Sum;
  assign Cout = c1;

  HA_3 HA1 ( .A(A), .B(B), .Cout(c1), .Sum_BAR(s1) );
  HA_2 HA2 ( .B(1'b0), .Sum_BAR(Sum), .A_BAR(s1) );
endmodule


module HA_6 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;
  wire   n2;

  XNOR2_X1 U1 ( .A1(A), .A2(B), .ZN(n2) );
  INV_X1 U2 ( .I(n2), .ZN(Sum) );
endmodule


module cmp1_0 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X1;
  assign Sum = X1;

endmodule


module cmp1_1 ( X2, X3, X4, Cin, Carry, Cout, X1_BAR, Sum_BAR );
  input X2, X3, X4, Cin, X1_BAR;
  output Carry, Cout, Sum_BAR;
  wire   X1;
  assign Sum_BAR = X1;
  assign X1 = X1_BAR;

endmodule


module cmp1_2 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X4;
  assign Carry = X4;

endmodule


module dadda_8bit_cmp1 ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   \L1_1[4] , \L1_2[9] , \L1_3[10] , \L1_6[9] , L2_1_2, L2_3_6, L2_3_5,
         L2_3_4, L2_3_3, \intadd_0/B[5] , \intadd_0/CI , \intadd_0/n6 ,
         \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , \intadd_1/CI , \intadd_1/n4 , \intadd_1/n3 ,
         \intadd_1/n2 , \intadd_1/n1 , n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128;
  wire   [7:4] L1_0;
  wire   [11:6] L1_5;
  wire   [14:0] L2_0;
  wire   [12:8] L2_3;
  wire   [13:2] L3_0;
  wire   [14:4] L3_1;
  assign O[15] = \intadd_0/n1 ;

  HA_8 HA1 ( .A(n83), .B(\L1_1[4] ), .Sum(L2_0[4]) );
  FA_2 FA1 ( .A(\L1_6[9] ), .B(n67), .Cin(1'b0), .Cout(L2_3[10]), .Sum_BAR(
        L2_3[9]) );
  FA_1 FA2 ( .A(n68), .B(L1_5[11]), .Cin(1'b0), .Cout(L2_0[12]), .Sum_BAR(
        L2_0[11]) );
  HA_6 HA3 ( .A(L2_0[2]), .B(L2_1_2), .Sum(L3_0[2]) );
  cmp1_8 cmp10 ( .X1(L2_0[4]), .X2(1'b0), .X3(1'b0), .X4(1'b0), .Cin(1'b0), 
        .Sum(L3_0[4]) );
  cmp1_3 cmp15 ( .X1(1'b0), .X2(1'b0), .X3(1'b0), .Cin(1'b0), .X4_BAR(L2_3[9]), 
        .Carry_BAR(L3_1[10]) );
  cmp1_2 cmp16 ( .X1(1'b0), .X2(1'b0), .X3(1'b0), .X4(L2_3[10]), .Cin(1'b0), 
        .Carry(L3_1[11]) );
  cmp1_1 cmp17 ( .X2(1'b0), .X3(1'b0), .X4(1'b0), .Cin(1'b0), .X1_BAR(L2_0[11]), .Sum_BAR(L3_0[11]) );
  cmp1_0 cmp18 ( .X1(L2_0[12]), .X2(1'b0), .X3(1'b0), .X4(1'b0), .Cin(1'b0), 
        .Sum(L3_0[12]) );
  FA_0 FA3 ( .A(L2_0[13]), .B(n66), .Cin(1'b0), .Cout(L3_1[14]), .Sum_BAR(
        L3_0[13]) );
  FA_X1 \intadd_0/U7  ( .A(\L1_2[9] ), .B(L1_5[8]), .CI(\intadd_0/CI ), .CO(
        \intadd_0/n6 ), .S(O[9]) );
  FA_X1 \intadd_0/U6  ( .A(n60), .B(\L1_3[10] ), .CI(\intadd_0/n6 ), .CO(
        \intadd_0/n5 ), .S(O[10]) );
  FA_X1 \intadd_0/U5  ( .A(n61), .B(L3_1[11]), .CI(\intadd_0/n5 ), .CO(
        \intadd_0/n4 ), .S(O[11]) );
  FA_X1 \intadd_0/U4  ( .A(L3_0[12]), .B(L2_3[11]), .CI(\intadd_0/n4 ), .CO(
        \intadd_0/n3 ), .S(O[12]) );
  FA_X1 \intadd_0/U3  ( .A(n59), .B(L2_3[12]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(O[13]) );
  FA_X1 \intadd_0/U2  ( .A(L3_1[14]), .B(\intadd_0/B[5] ), .CI(\intadd_0/n2 ), 
        .CO(\intadd_0/n1 ), .S(O[14]) );
  FA_X1 \intadd_1/U5  ( .A(\intadd_1/CI ), .B(L2_3_3), .CI(L3_0[4]), .CO(
        \intadd_1/n4 ), .S(O[4]) );
  FA_X1 \intadd_1/U4  ( .A(L1_0[5]), .B(L2_3_4), .CI(\intadd_1/n4 ), .CO(
        \intadd_1/n3 ), .S(O[5]) );
  FA_X1 \intadd_1/U3  ( .A(L2_3_5), .B(L1_0[6]), .CI(\intadd_1/n3 ), .CO(
        \intadd_1/n2 ), .S(O[6]) );
  FA_X1 \intadd_1/U2  ( .A(L2_3_6), .B(L1_0[7]), .CI(\intadd_1/n2 ), .CO(
        \intadd_1/n1 ), .S(O[7]) );
  OR2_X2 U48 ( .A1(n65), .A2(\intadd_1/n1 ), .Z(n62) );
  INV_X1 U49 ( .I(n62), .ZN(n58) );
  INV_X12 U50 ( .I(B[0]), .ZN(n113) );
  INV_X2 U51 ( .I(L3_0[13]), .ZN(n59) );
  INV_X2 U52 ( .I(L3_1[10]), .ZN(n60) );
  INV_X2 U53 ( .I(L3_0[11]), .ZN(n61) );
  NAND2_X2 U54 ( .A1(B[0]), .A2(A[1]), .ZN(n63) );
  OR2_X2 U55 ( .A1(n110), .A2(n69), .Z(n111) );
  INV_X1 U56 ( .I(n111), .ZN(n64) );
  INV_X16 U57 ( .I(A[3]), .ZN(n80) );
  INV_X16 U58 ( .I(B[7]), .ZN(n126) );
  INV_X16 U59 ( .I(B[7]), .ZN(n84) );
  INV_X16 U60 ( .I(B[4]), .ZN(n120) );
  INV_X16 U61 ( .I(A[7]), .ZN(n78) );
  INV_X16 U62 ( .I(B[1]), .ZN(n112) );
  INV_X16 U63 ( .I(A[6]), .ZN(n99) );
  INV_X16 U64 ( .I(A[2]), .ZN(n118) );
  NOR2_X2 U65 ( .A1(n78), .A2(n112), .ZN(n65) );
  NOR2_X2 U66 ( .A1(n126), .A2(n99), .ZN(n66) );
  NOR2_X2 U67 ( .A1(n84), .A2(n118), .ZN(n67) );
  INV_X16 U68 ( .I(A[7]), .ZN(n124) );
  NOR2_X2 U69 ( .A1(n120), .A2(n124), .ZN(n68) );
  INV_X16 U70 ( .I(B[0]), .ZN(n87) );
  NOR2_X2 U71 ( .A1(n80), .A2(n87), .ZN(n69) );
  INV_X2 U72 ( .I(n128), .ZN(n100) );
  INV_X16 U73 ( .I(A[0]), .ZN(n70) );
  INV_X8 U74 ( .I(A[0]), .ZN(n103) );
  INV_X16 U75 ( .I(B[0]), .ZN(n71) );
  INV_X16 U76 ( .I(B[0]), .ZN(n72) );
  INV_X16 U77 ( .I(B[7]), .ZN(n73) );
  INV_X16 U78 ( .I(B[7]), .ZN(n74) );
  INV_X16 U79 ( .I(B[4]), .ZN(n75) );
  INV_X16 U80 ( .I(A[0]), .ZN(n76) );
  INV_X16 U81 ( .I(A[0]), .ZN(n77) );
  INV_X16 U82 ( .I(A[7]), .ZN(n79) );
  INV_X16 U83 ( .I(B[0]), .ZN(n81) );
  INV_X16 U84 ( .I(B[0]), .ZN(n82) );
  INV_X16 U85 ( .I(A[4]), .ZN(n90) );
  NOR2_X2 U86 ( .A1(n86), .A2(n90), .ZN(n83) );
  INV_X16 U87 ( .I(A[3]), .ZN(n117) );
  INV_X16 U88 ( .I(B[7]), .ZN(n85) );
  INV_X16 U89 ( .I(B[0]), .ZN(n86) );
  NOR2_X2 U90 ( .A1(n71), .A2(n125), .ZN(L1_0[6]) );
  NOR2_X2 U91 ( .A1(n70), .A2(n75), .ZN(L2_3_4) );
  NOR2_X2 U92 ( .A1(n107), .A2(n74), .ZN(\intadd_0/B[5] ) );
  INV_X16 U93 ( .I(A[6]), .ZN(n125) );
  INV_X16 U94 ( .I(B[3]), .ZN(n88) );
  NOR2_X2 U95 ( .A1(n108), .A2(n116), .ZN(\L1_3[10] ) );
  NOR2_X2 U96 ( .A1(n77), .A2(n88), .ZN(L2_3_3) );
  INV_X16 U97 ( .I(B[3]), .ZN(n116) );
  NOR2_X2 U98 ( .A1(n105), .A2(n72), .ZN(L1_0[7]) );
  INV_X16 U99 ( .I(A[2]), .ZN(n89) );
  INV_X16 U100 ( .I(B[2]), .ZN(n91) );
  NOR2_X2 U101 ( .A1(n81), .A2(n89), .ZN(L2_0[2]) );
  NOR2_X2 U102 ( .A1(n119), .A2(n85), .ZN(L2_3[11]) );
  INV_X16 U103 ( .I(A[4]), .ZN(n119) );
  NOR2_X2 U104 ( .A1(n79), .A2(n115), .ZN(\L1_2[9] ) );
  NOR2_X2 U105 ( .A1(n114), .A2(n91), .ZN(n127) );
  INV_X16 U106 ( .I(B[2]), .ZN(n115) );
  INV_X16 U107 ( .I(B[1]), .ZN(n92) );
  NAND2_X2 U108 ( .A1(B[1]), .A2(A[0]), .ZN(n109) );
  NOR2_X2 U109 ( .A1(n92), .A2(n117), .ZN(\L1_1[4] ) );
  INV_X16 U110 ( .I(B[6]), .ZN(n93) );
  INV_X16 U111 ( .I(B[6]), .ZN(n94) );
  INV_X16 U112 ( .I(B[5]), .ZN(n95) );
  INV_X16 U113 ( .I(B[5]), .ZN(n96) );
  NOR2_X2 U114 ( .A1(n123), .A2(n104), .ZN(L2_3_6) );
  INV_X16 U115 ( .I(B[6]), .ZN(n123) );
  NOR2_X2 U116 ( .A1(n95), .A2(n102), .ZN(L1_5[8]) );
  NOR2_X2 U117 ( .A1(n76), .A2(n121), .ZN(L2_3_5) );
  INV_X16 U118 ( .I(B[5]), .ZN(n121) );
  AND2_X2 U119 ( .A1(n110), .A2(n69), .Z(\intadd_1/CI ) );
  AND2_X2 U120 ( .A1(B[1]), .A2(A[1]), .Z(L2_1_2) );
  INV_X16 U121 ( .I(A[5]), .ZN(n97) );
  NOR2_X2 U122 ( .A1(n122), .A2(n73), .ZN(L2_3[12]) );
  NOR2_X2 U123 ( .A1(n97), .A2(n82), .ZN(L1_0[5]) );
  INV_X16 U124 ( .I(A[5]), .ZN(n122) );
  AND2_X2 U125 ( .A1(\intadd_1/n1 ), .A2(n65), .Z(\intadd_0/CI ) );
  INV_X16 U126 ( .I(A[6]), .ZN(n98) );
  NOR2_X2 U127 ( .A1(n98), .A2(n96), .ZN(L1_5[11]) );
  OR2_X2 U128 ( .A1(n109), .A2(n63), .Z(n128) );
  INV_X16 U129 ( .I(A[3]), .ZN(n101) );
  INV_X16 U130 ( .I(A[3]), .ZN(n102) );
  NOR2_X2 U131 ( .A1(n101), .A2(n93), .ZN(\L1_6[9] ) );
  INV_X16 U132 ( .I(A[0]), .ZN(n104) );
  INV_X16 U133 ( .I(A[0]), .ZN(n114) );
  INV_X16 U134 ( .I(A[7]), .ZN(n105) );
  INV_X16 U135 ( .I(A[7]), .ZN(n106) );
  INV_X16 U136 ( .I(A[7]), .ZN(n107) );
  INV_X16 U137 ( .I(A[7]), .ZN(n108) );
  NOR2_X2 U138 ( .A1(n106), .A2(n94), .ZN(L2_0[13]) );
  NOR2_X1 U139 ( .A1(n103), .A2(n113), .ZN(O[0]) );
  AOI21_X1 U140 ( .A1(n63), .A2(n109), .B(n100), .ZN(O[1]) );
  NOR2_X1 U141 ( .A1(n64), .A2(\intadd_1/CI ), .ZN(O[3]) );
  NOR2_X1 U142 ( .A1(n58), .A2(\intadd_0/CI ), .ZN(O[8]) );
  FA_X1 U148 ( .A(n100), .B(n127), .CI(L3_0[2]), .CO(n110), .S(O[2]) );
endmodule

