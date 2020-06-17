/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 17:32:39 2020
/////////////////////////////////////////////////////////////
`timescale 1ps/1ps


module HA_8 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
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
  wire   A;
  assign Sum = A;

endmodule


module FA_2 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1;
  assign Cout = c1;

  HA_5 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_4 HA2 ( .A(s1), .B(1'b0), .Sum(Sum) );
endmodule


module cmp1_8 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X1;
  assign Sum = X1;

endmodule


module cmp1_3 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X4;
  assign Carry = X4;

endmodule


module HA_1 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_0 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;
  wire   A;
  assign Sum = A;

endmodule


module FA_0 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1;
  assign Cout = c1;

  HA_1 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_0 HA2 ( .A(s1), .B(1'b0), .Sum(Sum) );
endmodule


module HA_3 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
  AND2_X1 U2 ( .A1(B), .A2(A), .Z(Cout) );
endmodule


module HA_2 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;
  wire   A;
  assign Sum = A;

endmodule


module FA_1 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   s1, c1;
  assign Cout = c1;

  HA_3 HA1 ( .A(A), .B(B), .Sum(s1), .Cout(c1) );
  HA_2 HA2 ( .A(s1), .B(1'b0), .Sum(Sum) );
endmodule


module HA_6 ( A, B, Sum, Cout );
  input A, B;
  output Sum, Cout;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(Sum) );
endmodule


module cmp1_0 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X1;
  assign Sum = X1;

endmodule


module cmp1_1 ( X1, X2, X3, X4, Cin, Sum, Carry, Cout );
  input X1, X2, X3, X4, Cin;
  output Sum, Carry, Cout;
  wire   X1;
  assign Sum = X1;

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
  wire   \L1_0[4] , \L1_1[4] , \L1_4[11] , \L1_5[11] , \L1_6[9] , \L1_7[9] ,
         \L2_1[13] , L2_1_2, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101;
  wire   [14:0] L2_0;
  wire   [12:8] L2_3;
  wire   [13:2] L3_0;
  wire   [14:4] L3_1;

  HA_8 HA1 ( .A(\L1_0[4] ), .B(\L1_1[4] ), .Sum(L2_0[4]) );
  FA_2 FA1 ( .A(\L1_6[9] ), .B(\L1_7[9] ), .Cin(1'b0), .Sum(L2_3[9]), .Cout(
        L2_3[10]) );
  FA_1 FA2 ( .A(\L1_4[11] ), .B(\L1_5[11] ), .Cin(1'b0), .Sum(L2_0[11]), 
        .Cout(L2_0[12]) );
  HA_6 HA3 ( .A(L2_0[2]), .B(L2_1_2), .Sum(L3_0[2]) );
  cmp1_8 cmp10 ( .X1(L2_0[4]), .X2(1'b0), .X3(1'b0), .X4(1'b0), .Cin(1'b0), 
        .Sum(L3_0[4]) );
  cmp1_3 cmp15 ( .X1(1'b0), .X2(1'b0), .X3(1'b0), .X4(L2_3[9]), .Cin(1'b0), 
        .Carry(L3_1[10]) );
  cmp1_2 cmp16 ( .X1(1'b0), .X2(1'b0), .X3(1'b0), .X4(L2_3[10]), .Cin(1'b0), 
        .Carry(L3_1[11]) );
  cmp1_1 cmp17 ( .X1(L2_0[11]), .X2(1'b0), .X3(1'b0), .X4(1'b0), .Cin(1'b0), 
        .Sum(L3_0[11]) );
  cmp1_0 cmp18 ( .X1(L2_0[12]), .X2(1'b0), .X3(1'b0), .X4(1'b0), .Cin(1'b0), 
        .Sum(L3_0[12]) );
  FA_0 FA3 ( .A(L2_0[13]), .B(\L2_1[13] ), .Cin(1'b0), .Sum(L3_0[13]), .Cout(
        L3_1[14]) );
  NAND2_X1 U32 ( .A1(A[7]), .A2(B[1]), .ZN(n42) );
  AND2_X1 U38 ( .A1(A[7]), .A2(B[2]), .Z(n65) );
  AND2_X1 U39 ( .A1(A[3]), .A2(B[5]), .Z(n64) );
  AND2_X1 U40 ( .A1(A[7]), .A2(B[0]), .Z(n62) );
  AND2_X1 U41 ( .A1(B[6]), .A2(A[0]), .Z(n61) );
  NAND2_X1 U42 ( .A1(B[0]), .A2(A[6]), .ZN(n59) );
  NAND2_X1 U43 ( .A1(B[5]), .A2(A[0]), .ZN(n58) );
  AND2_X1 U44 ( .A1(A[5]), .A2(B[0]), .Z(n54) );
  AND2_X1 U45 ( .A1(A[0]), .A2(B[4]), .Z(n53) );
  AND2_X1 U46 ( .A1(B[3]), .A2(A[0]), .Z(n51) );
  XNOR2_X1 U47 ( .A1(n51), .A2(L3_0[4]), .ZN(n92) );
  AND2_X1 U48 ( .A1(A[3]), .A2(B[0]), .Z(n90) );
  NAND3_X1 U49 ( .A1(B[2]), .A2(A[0]), .A3(L3_0[2]), .ZN(n49) );
  NAND2_X1 U50 ( .A1(B[2]), .A2(A[0]), .ZN(n43) );
  XOR2_X1 U51 ( .A1(L3_0[2]), .A2(n43), .Z(n88) );
  INV_X1 U52 ( .I(B[1]), .ZN(n47) );
  INV_X1 U53 ( .I(A[0]), .ZN(n46) );
  INV_X1 U54 ( .I(B[0]), .ZN(n45) );
  INV_X1 U55 ( .I(A[1]), .ZN(n44) );
  OR4_X1 U56 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .Z(n87) );
  OR2_X1 U57 ( .A1(n88), .A2(n87), .Z(n48) );
  NAND2_X1 U58 ( .A1(n49), .A2(n48), .ZN(n89) );
  NAND2_X1 U59 ( .A1(n90), .A2(n89), .ZN(n91) );
  NOR2_X2 U60 ( .A1(n92), .A2(n91), .ZN(n50) );
  AOI21_X1 U61 ( .A1(L3_0[4]), .A2(n51), .B(n50), .ZN(n94) );
  XNOR2_X1 U62 ( .A1(n53), .A2(n54), .ZN(n93) );
  NOR2_X2 U63 ( .A1(n94), .A2(n93), .ZN(n52) );
  AOI21_X1 U64 ( .A1(n54), .A2(n53), .B(n52), .ZN(n96) );
  INV_X1 U65 ( .I(n58), .ZN(n56) );
  INV_X1 U66 ( .I(n59), .ZN(n55) );
  XNOR2_X1 U67 ( .A1(n56), .A2(n55), .ZN(n95) );
  OR2_X1 U68 ( .A1(n96), .A2(n95), .Z(n57) );
  OAI21_X1 U69 ( .A1(n59), .A2(n58), .B(n57), .ZN(n98) );
  XOR2_X1 U70 ( .A1(n61), .A2(n62), .Z(n97) );
  AND2_X1 U71 ( .A1(n98), .A2(n97), .Z(n60) );
  AOI21_X1 U72 ( .A1(n62), .A2(n61), .B(n60), .ZN(n99) );
  NOR2_X2 U73 ( .A1(n42), .A2(n99), .ZN(n101) );
  XOR2_X1 U74 ( .A1(n64), .A2(n65), .Z(n100) );
  AND2_X1 U75 ( .A1(n101), .A2(n100), .Z(n63) );
  AOI21_X1 U76 ( .A1(n65), .A2(n64), .B(n63), .ZN(n67) );
  AND2_X1 U77 ( .A1(A[7]), .A2(B[3]), .Z(n69) );
  XNOR2_X1 U78 ( .A1(n69), .A2(L3_1[10]), .ZN(n66) );
  XOR2_X1 U79 ( .A1(n67), .A2(n66), .Z(O[10]) );
  NOR2_X2 U80 ( .A1(n67), .A2(n66), .ZN(n68) );
  AOI21_X1 U81 ( .A1(L3_1[10]), .A2(n69), .B(n68), .ZN(n71) );
  XNOR2_X1 U82 ( .A1(L3_0[11]), .A2(L3_1[11]), .ZN(n70) );
  XOR2_X1 U83 ( .A1(n71), .A2(n70), .Z(O[11]) );
  NOR2_X2 U84 ( .A1(n71), .A2(n70), .ZN(n72) );
  AOI21_X1 U85 ( .A1(L3_1[11]), .A2(L3_0[11]), .B(n72), .ZN(n74) );
  AND2_X1 U86 ( .A1(B[7]), .A2(A[4]), .Z(n76) );
  XNOR2_X1 U87 ( .A1(n76), .A2(L3_0[12]), .ZN(n73) );
  XOR2_X1 U88 ( .A1(n74), .A2(n73), .Z(O[12]) );
  NOR2_X2 U89 ( .A1(n74), .A2(n73), .ZN(n75) );
  AOI21_X1 U90 ( .A1(L3_0[12]), .A2(n76), .B(n75), .ZN(n78) );
  AND2_X1 U91 ( .A1(B[7]), .A2(A[5]), .Z(n80) );
  XNOR2_X1 U92 ( .A1(n80), .A2(L3_0[13]), .ZN(n77) );
  XOR2_X1 U93 ( .A1(n78), .A2(n77), .Z(O[13]) );
  NOR2_X2 U94 ( .A1(n78), .A2(n77), .ZN(n79) );
  AOI21_X1 U95 ( .A1(L3_0[13]), .A2(n80), .B(n79), .ZN(n84) );
  NAND2_X1 U96 ( .A1(B[7]), .A2(A[7]), .ZN(n81) );
  XOR2_X1 U97 ( .A1(L3_1[14]), .A2(n81), .Z(n83) );
  XOR2_X1 U98 ( .A1(n84), .A2(n83), .Z(O[14]) );
  INV_X1 U99 ( .I(L3_1[14]), .ZN(n82) );
  OAI22_X1 U100 ( .A1(n84), .A2(n83), .B1(n82), .B2(n81), .ZN(O[15]) );
  AND2_X1 U101 ( .A1(B[0]), .A2(A[1]), .Z(n86) );
  NAND2_X1 U102 ( .A1(B[1]), .A2(A[0]), .ZN(n85) );
  XNOR2_X1 U103 ( .A1(n86), .A2(n85), .ZN(O[1]) );
  XOR2_X1 U104 ( .A1(n88), .A2(n87), .Z(O[2]) );
  XOR2_X1 U105 ( .A1(n90), .A2(n89), .Z(O[3]) );
  XOR2_X1 U106 ( .A1(n92), .A2(n91), .Z(O[4]) );
  XOR2_X1 U107 ( .A1(n94), .A2(n93), .Z(O[5]) );
  XOR2_X1 U108 ( .A1(n96), .A2(n95), .Z(O[6]) );
  XOR2_X1 U109 ( .A1(n98), .A2(n97), .Z(O[7]) );
  XOR2_X1 U110 ( .A1(n42), .A2(n99), .Z(O[8]) );
  XOR2_X1 U111 ( .A1(n101), .A2(n100), .Z(O[9]) );
  AND2_X1 U112 ( .A1(A[0]), .A2(B[0]), .Z(O[0]) );
  AND2_X1 U113 ( .A1(B[0]), .A2(A[2]), .Z(L2_0[2]) );
  AND2_X1 U114 ( .A1(A[4]), .A2(B[0]), .Z(\L1_0[4] ) );
  AND2_X1 U115 ( .A1(B[1]), .A2(A[1]), .Z(L2_1_2) );
  AND2_X1 U116 ( .A1(A[3]), .A2(B[1]), .Z(\L1_1[4] ) );
  AND2_X1 U117 ( .A1(A[7]), .A2(B[4]), .Z(\L1_4[11] ) );
  AND2_X1 U118 ( .A1(B[5]), .A2(A[6]), .Z(\L1_5[11] ) );
  AND2_X1 U119 ( .A1(A[3]), .A2(B[6]), .Z(\L1_6[9] ) );
  AND2_X1 U120 ( .A1(A[7]), .A2(B[6]), .Z(L2_0[13]) );
  AND2_X1 U121 ( .A1(B[7]), .A2(A[2]), .Z(\L1_7[9] ) );
  AND2_X1 U122 ( .A1(B[7]), .A2(A[6]), .Z(\L2_1[13] ) );
endmodule

