/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 17:51:13 2020
/////////////////////////////////////////////////////////////


module HA_8 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
endmodule


module cmp2_12 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X3;
  assign Cout = X3;

endmodule


module HA_5 ( A, B, Sum, Cout );
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


module FA_2 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1, c2;

  HA_5 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_4 HA2 ( .A(s1), .B(Cin), .Sum(Sum), .Cout(c2) );
  OR2_X1 U1 ( .A1(c1), .A2(c2), .Z(Cout) );
endmodule


module cmp2_0 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X1, X3;
  assign Sum = X1;
  assign Cout = X3;

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
endmodule


module cmp2_1 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X1;
  assign Sum = X1;

endmodule


module cmp2_2 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X4;
  assign Carry = X4;

endmodule


module cmp2_3 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X4;
  assign Carry = X4;

endmodule


module cmp2_8 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X1;
  assign Sum = X1;

endmodule


module cmp2_10 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X3;
  assign Cout = X3;

endmodule


module dadda_8bit_cmp2 ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   \L1_0[4] , \L1_1[4] , \L1_4[11] , \L1_6[9] , \L2_1[13] , L2_1_2,
         \L2_2[12] , int8, int10, int21, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113;
  wire   [11:6] L1_5;
  wire   [9:7] L1_7;
  wire   [14:0] L2_0;
  wire   [12:8] L2_3;
  wire   [13:2] L3_0;
  wire   [14:4] L3_1;

  HA_8 HA1 ( .A(\L1_0[4] ), .B(\L1_1[4] ), .Sum(L2_0[4]) );
  cmp2_12 cmp6 ( .X1(1'b0), .X2(1'b0), .X3(L1_7[8]), .X4(1'b0), .Cin(1'b0), 
        .Cout(int8) );
  FA_2 FA1 ( .A(\L1_6[9] ), .B(L1_7[9]), .Cin(int8), .Sum(L2_3[9]), .Cout(
        L2_3[10]) );
  cmp2_10 cmp8 ( .X1(1'b0), .X2(1'b0), .X3(L1_5[10]), .X4(1'b0), .Cin(1'b0), 
        .Cout(int10) );
  FA_1 FA2 ( .A(\L1_4[11] ), .B(L1_5[11]), .Cin(int10), .Sum(L2_0[11]), .Cout(
        L2_0[12]) );
  HA_6 HA3 ( .A(L2_0[2]), .B(L2_1_2), .Sum(L3_0[2]) );
  cmp2_8 cmp10 ( .X1(L2_0[4]), .X2(1'b0), .X3(1'b0), .X4(1'b0), .Cin(1'b0), 
        .Sum(L3_0[4]) );
  cmp2_3 cmp15 ( .X1(1'b0), .X2(1'b0), .X3(1'b0), .X4(L2_3[9]), .Cin(1'b0), 
        .Carry(L3_1[10]) );
  cmp2_2 cmp16 ( .X1(1'b0), .X2(1'b0), .X3(1'b0), .X4(L2_3[10]), .Cin(1'b0), 
        .Carry(L3_1[11]) );
  cmp2_1 cmp17 ( .X1(L2_0[11]), .X2(1'b0), .X3(1'b0), .X4(1'b0), .Cin(1'b0), 
        .Sum(L3_0[11]) );
  cmp2_0 cmp18 ( .X1(L2_0[12]), .X2(1'b0), .X3(\L2_2[12] ), .X4(1'b0), .Cin(
        1'b0), .Sum(L3_0[12]), .Cout(int21) );
  FA_0 FA3 ( .A(L2_0[13]), .B(\L2_1[13] ), .Cin(int21), .Sum(L3_0[13]), .Cout(
        L3_1[14]) );
  NAND2_X1 U35 ( .A1(A[7]), .A2(B[1]), .ZN(n54) );
  AND2_X1 U43 ( .A1(A[7]), .A2(B[2]), .Z(n77) );
  AND2_X1 U44 ( .A1(A[3]), .A2(B[5]), .Z(n76) );
  AND2_X1 U45 ( .A1(A[7]), .A2(B[0]), .Z(n74) );
  AND2_X1 U46 ( .A1(B[6]), .A2(A[0]), .Z(n73) );
  NAND2_X1 U47 ( .A1(B[0]), .A2(A[6]), .ZN(n71) );
  NAND2_X1 U48 ( .A1(B[5]), .A2(A[0]), .ZN(n70) );
  AND2_X1 U49 ( .A1(A[5]), .A2(B[0]), .Z(n66) );
  AND2_X1 U50 ( .A1(A[0]), .A2(B[4]), .Z(n65) );
  AND2_X1 U51 ( .A1(B[3]), .A2(A[0]), .Z(n63) );
  XNOR2_X1 U52 ( .A1(n63), .A2(L3_0[4]), .ZN(n104) );
  AND2_X1 U53 ( .A1(A[3]), .A2(B[0]), .Z(n102) );
  NAND3_X1 U54 ( .A1(B[2]), .A2(A[0]), .A3(L3_0[2]), .ZN(n61) );
  NAND2_X1 U55 ( .A1(B[2]), .A2(A[0]), .ZN(n55) );
  XOR2_X1 U56 ( .A1(L3_0[2]), .A2(n55), .Z(n100) );
  INV_X1 U57 ( .I(B[1]), .ZN(n59) );
  INV_X1 U58 ( .I(A[0]), .ZN(n58) );
  INV_X1 U59 ( .I(B[0]), .ZN(n57) );
  INV_X1 U60 ( .I(A[1]), .ZN(n56) );
  OR4_X1 U61 ( .A1(n59), .A2(n58), .A3(n57), .A4(n56), .Z(n99) );
  OR2_X1 U62 ( .A1(n100), .A2(n99), .Z(n60) );
  NAND2_X1 U63 ( .A1(n61), .A2(n60), .ZN(n101) );
  NAND2_X1 U64 ( .A1(n102), .A2(n101), .ZN(n103) );
  NOR2_X2 U65 ( .A1(n104), .A2(n103), .ZN(n62) );
  AOI21_X1 U66 ( .A1(L3_0[4]), .A2(n63), .B(n62), .ZN(n106) );
  XNOR2_X1 U67 ( .A1(n65), .A2(n66), .ZN(n105) );
  NOR2_X2 U68 ( .A1(n106), .A2(n105), .ZN(n64) );
  AOI21_X1 U69 ( .A1(n66), .A2(n65), .B(n64), .ZN(n108) );
  INV_X1 U70 ( .I(n70), .ZN(n68) );
  INV_X1 U71 ( .I(n71), .ZN(n67) );
  XNOR2_X1 U72 ( .A1(n68), .A2(n67), .ZN(n107) );
  OR2_X1 U73 ( .A1(n108), .A2(n107), .Z(n69) );
  OAI21_X1 U74 ( .A1(n71), .A2(n70), .B(n69), .ZN(n110) );
  XOR2_X1 U75 ( .A1(n73), .A2(n74), .Z(n109) );
  AND2_X1 U76 ( .A1(n110), .A2(n109), .Z(n72) );
  AOI21_X1 U77 ( .A1(n74), .A2(n73), .B(n72), .ZN(n111) );
  NOR2_X2 U78 ( .A1(n54), .A2(n111), .ZN(n113) );
  XOR2_X1 U79 ( .A1(n76), .A2(n77), .Z(n112) );
  AND2_X1 U80 ( .A1(n113), .A2(n112), .Z(n75) );
  AOI21_X1 U81 ( .A1(n77), .A2(n76), .B(n75), .ZN(n79) );
  AND2_X1 U82 ( .A1(A[7]), .A2(B[3]), .Z(n81) );
  XNOR2_X1 U83 ( .A1(n81), .A2(L3_1[10]), .ZN(n78) );
  XOR2_X1 U84 ( .A1(n79), .A2(n78), .Z(O[10]) );
  NOR2_X2 U85 ( .A1(n79), .A2(n78), .ZN(n80) );
  AOI21_X1 U86 ( .A1(L3_1[10]), .A2(n81), .B(n80), .ZN(n83) );
  XNOR2_X1 U87 ( .A1(L3_0[11]), .A2(L3_1[11]), .ZN(n82) );
  XOR2_X1 U88 ( .A1(n83), .A2(n82), .Z(O[11]) );
  NOR2_X2 U89 ( .A1(n83), .A2(n82), .ZN(n84) );
  AOI21_X1 U90 ( .A1(L3_1[11]), .A2(L3_0[11]), .B(n84), .ZN(n86) );
  AND2_X1 U91 ( .A1(B[7]), .A2(A[4]), .Z(n88) );
  XNOR2_X1 U92 ( .A1(n88), .A2(L3_0[12]), .ZN(n85) );
  XOR2_X1 U93 ( .A1(n86), .A2(n85), .Z(O[12]) );
  NOR2_X2 U94 ( .A1(n86), .A2(n85), .ZN(n87) );
  AOI21_X1 U95 ( .A1(L3_0[12]), .A2(n88), .B(n87), .ZN(n90) );
  AND2_X1 U96 ( .A1(B[7]), .A2(A[5]), .Z(n92) );
  XNOR2_X1 U97 ( .A1(n92), .A2(L3_0[13]), .ZN(n89) );
  XOR2_X1 U98 ( .A1(n90), .A2(n89), .Z(O[13]) );
  NOR2_X2 U99 ( .A1(n90), .A2(n89), .ZN(n91) );
  AOI21_X1 U100 ( .A1(L3_0[13]), .A2(n92), .B(n91), .ZN(n96) );
  NAND2_X1 U101 ( .A1(B[7]), .A2(A[7]), .ZN(n93) );
  XOR2_X1 U102 ( .A1(L3_1[14]), .A2(n93), .Z(n95) );
  XOR2_X1 U103 ( .A1(n96), .A2(n95), .Z(O[14]) );
  INV_X1 U104 ( .I(L3_1[14]), .ZN(n94) );
  OAI22_X1 U105 ( .A1(n96), .A2(n95), .B1(n94), .B2(n93), .ZN(O[15]) );
  AND2_X1 U106 ( .A1(B[0]), .A2(A[1]), .Z(n98) );
  NAND2_X1 U107 ( .A1(B[1]), .A2(A[0]), .ZN(n97) );
  XNOR2_X1 U108 ( .A1(n98), .A2(n97), .ZN(O[1]) );
  XOR2_X1 U109 ( .A1(n100), .A2(n99), .Z(O[2]) );
  XOR2_X1 U110 ( .A1(n102), .A2(n101), .Z(O[3]) );
  XOR2_X1 U111 ( .A1(n104), .A2(n103), .Z(O[4]) );
  XOR2_X1 U112 ( .A1(n106), .A2(n105), .Z(O[5]) );
  XOR2_X1 U113 ( .A1(n108), .A2(n107), .Z(O[6]) );
  XOR2_X1 U114 ( .A1(n110), .A2(n109), .Z(O[7]) );
  XOR2_X1 U115 ( .A1(n54), .A2(n111), .Z(O[8]) );
  XOR2_X1 U116 ( .A1(n113), .A2(n112), .Z(O[9]) );
  AND2_X1 U117 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  AND2_X1 U118 ( .A1(B[0]), .A2(A[2]), .Z(L2_0[2]) );
  AND2_X1 U119 ( .A1(A[4]), .A2(B[0]), .Z(\L1_0[4] ) );
  AND2_X1 U120 ( .A1(B[1]), .A2(A[1]), .Z(L2_1_2) );
  AND2_X1 U121 ( .A1(A[3]), .A2(B[1]), .Z(\L1_1[4] ) );
  AND2_X1 U122 ( .A1(A[7]), .A2(B[4]), .Z(\L1_4[11] ) );
  AND2_X1 U123 ( .A1(A[5]), .A2(B[5]), .Z(L1_5[10]) );
  AND2_X1 U124 ( .A1(B[5]), .A2(A[6]), .Z(L1_5[11]) );
  AND2_X1 U125 ( .A1(A[3]), .A2(B[6]), .Z(\L1_6[9] ) );
  AND2_X1 U126 ( .A1(B[6]), .A2(A[6]), .Z(\L2_2[12] ) );
  AND2_X1 U127 ( .A1(A[7]), .A2(B[6]), .Z(L2_0[13]) );
  AND2_X1 U128 ( .A1(B[7]), .A2(A[1]), .Z(L1_7[8]) );
  AND2_X1 U129 ( .A1(B[7]), .A2(A[2]), .Z(L1_7[9]) );
  AND2_X1 U130 ( .A1(B[7]), .A2(A[6]), .Z(\L2_1[13] ) );
endmodule

