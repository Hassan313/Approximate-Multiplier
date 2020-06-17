/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 18:19:41 2020
/////////////////////////////////////////////////////////////

`timescale 1ps/1ps

module HA_X1_6 ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module FA_X1_13 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module HA_X1_5 ( A, B, CO, S );
  input A, B;
  output CO, S;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(S) );
endmodule


module FA_X1_0 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_1 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_2 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_3 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_4 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_5 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_6 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_7 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_8 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  AND2_X1 U1 ( .A1(A), .A2(CI), .Z(CO) );
endmodule


module FA_X1_9 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_10 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_11 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module FA_X1_12 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1, n2;

  XOR2_X1 U1 ( .A1(A), .A2(B), .Z(n2) );
  AOI22_X1 U2 ( .A1(A), .A2(B), .B1(n2), .B2(CI), .ZN(n1) );
  INV_X1 U3 ( .I(n1), .ZN(CO) );
  XOR2_X1 U4 ( .A1(n2), .A2(CI), .Z(S) );
endmodule


module HA_X1_0 ( A, B, CO, S );
  input A, B;
  output CO, S;


  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  XOR2_X1 U2 ( .A1(B), .A2(A), .Z(S) );
endmodule


module HA_X1_1 ( A, B, CO, S );
  input A, B;
  output CO, S;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(S) );
endmodule


module HA_X1_2 ( A, B, CO, S );
  input A, B;
  output CO, S;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(S) );
endmodule


module HA_X1_3 ( A, B, CO, S );
  input A, B;
  output CO, S;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(S) );
endmodule


module HA_X1_4 ( A, B, CO, S );
  input A, B;
  output CO, S;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(S) );
endmodule


module mul8_280 ( A, B, O );
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire   O_2, N_490, N_476, N_420, N_372, N_156, N_964, N_950, N_934, N_920,
         N_906, N_846, N_832, N_816, N_802, N_786, N_728, N_712, N_698, N_608,
         N_594, N_580, N_1482, N_1468, N_1455, N_1454, N_1439, N_1438, N_1425,
         N_1424, N_1351, N_1350, N_1232, N_1216, N_1203, N_1202, N_1186,
         N_1987, N_1973, N_1957, N_1943, \N[1838] , N_1809, N_1808, N_1795,
         N_1794, N_1781, N_1780, N_1765, N_1764, N_1660, N_1646, N_1632,
         N_1616, N_1603, N_1602, N_1587, n8, n9, n10, n11, n12, n13, n14, n15,
         n16;
  assign O[2] = O_2;
  assign O[5] = N_156;
  assign O[6] = N_156;
  assign O[7] = N_156;
  assign O[10] = N_1764;
  assign O[0] = 1'b0;
  assign O[1] = 1'b0;
  assign O[3] = 1'b0;
  assign O[4] = 1'b0;
  assign O[9] = 1'b1;

  HA_X1_6 n1186 ( .A(N_476), .B(N_580), .CO(O_2), .S(N_1186) );
  FA_X1_13 n1202 ( .A(N_490), .B(N_594), .CI(N_698), .CO(N_1203), .S(N_1202)
         );
  HA_X1_5 n1232 ( .A(N_608), .B(N_712), .S(N_1232) );
  FA_X1_12 n1350 ( .A(N_372), .B(N_420), .CI(N_1186), .CO(N_1351), .S(N_1350)
         );
  FA_X1_11 n1424 ( .A(O_2), .B(N_802), .CI(N_906), .CO(N_1425), .S(N_1424) );
  FA_X1_10 n1438 ( .A(N_1203), .B(N_816), .CI(N_920), .CO(N_1439), .S(N_1438)
         );
  FA_X1_9 n1454 ( .A(N_1216), .B(N_832), .CI(N_934), .CO(N_1455), .S(N_1454)
         );
  HA_X1_4 n1482 ( .A(N_846), .B(N_950), .S(N_1482) );
  FA_X1_8 n1586 ( .A(N_1350), .B(1'b0), .CI(N_786), .CO(N_1587) );
  FA_X1_7 n1602 ( .A(N_1202), .B(N_1216), .CI(N_1424), .CO(N_1603), .S(N_1602)
         );
  HA_X1_3 n1632 ( .A(N_1232), .B(N_1438), .S(N_1632) );
  HA_X1_2 n1660 ( .A(N_728), .B(N_1454), .S(N_1660) );
  FA_X1_6 n1764 ( .A(N_1602), .B(N_1587), .CI(N_1351), .CO(N_1765), .S(N_1764)
         );
  FA_X1_5 n1780 ( .A(N_1632), .B(N_1603), .CI(N_1425), .CO(N_1781), .S(N_1780)
         );
  FA_X1_4 n1794 ( .A(N_1660), .B(N_1616), .CI(N_1439), .CO(N_1795), .S(N_1794)
         );
  FA_X1_3 n1808 ( .A(N_1482), .B(N_1646), .CI(N_1455), .CO(N_1809), .S(N_1808)
         );
  HA_X1_1 n1838 ( .A(N_964), .B(N_1468), .S(\N[1838] ) );
  HA_X1_0 n1942 ( .A(N_1780), .B(N_1765), .CO(N_1943), .S(O[11]) );
  FA_X1_2 n1956 ( .A(N_1794), .B(N_1781), .CI(N_1943), .CO(N_1957), .S(O[12])
         );
  FA_X1_1 n1972 ( .A(N_1808), .B(N_1795), .CI(N_1957), .CO(N_1973), .S(O[13])
         );
  FA_X1_0 n1986 ( .A(\N[1838] ), .B(N_1809), .CI(N_1973), .CO(N_1987), .S(
        O[14]) );
  AOI22_X1 U35 ( .A1(A[4]), .A2(B[4]), .B1(A[6]), .B2(B[1]), .ZN(n8) );
  INV_X1 U36 ( .I(n8), .ZN(O[8]) );
  AND2_X1 U37 ( .A1(B[2]), .A2(A[7]), .Z(N_372) );
  OR3_X1 U38 ( .A1(B[7]), .A2(B[6]), .A3(B[5]), .Z(n9) );
  AND2_X1 U39 ( .A1(A[2]), .A2(n9), .Z(N_420) );
  AND2_X1 U40 ( .A1(B[3]), .A2(A[6]), .Z(N_476) );
  AND2_X1 U41 ( .A1(B[3]), .A2(A[7]), .Z(N_490) );
  AND2_X1 U42 ( .A1(A[5]), .A2(B[4]), .Z(N_580) );
  AND2_X1 U43 ( .A1(A[5]), .A2(B[5]), .Z(N_698) );
  AND2_X1 U44 ( .A1(A[3]), .A2(B[6]), .Z(N_786) );
  AND2_X1 U45 ( .A1(A[4]), .A2(B[6]), .Z(N_802) );
  AND2_X1 U46 ( .A1(A[5]), .A2(B[6]), .Z(N_816) );
  AND2_X1 U47 ( .A1(A[3]), .A2(B[7]), .Z(N_906) );
  AND2_X1 U48 ( .A1(A[4]), .A2(B[7]), .Z(N_920) );
  AND2_X1 U49 ( .A1(A[5]), .A2(B[7]), .Z(N_934) );
  AND2_X1 U50 ( .A1(B[5]), .A2(A[7]), .Z(N_728) );
  AND2_X1 U51 ( .A1(A[6]), .A2(B[4]), .Z(N_594) );
  AND2_X1 U52 ( .A1(A[7]), .A2(B[4]), .Z(N_608) );
  AND2_X1 U53 ( .A1(B[5]), .A2(A[6]), .Z(N_712) );
  AND2_X1 U54 ( .A1(N_608), .A2(N_712), .Z(N_1216) );
  AND2_X1 U55 ( .A1(B[7]), .A2(A[6]), .Z(N_950) );
  AND2_X1 U56 ( .A1(B[6]), .A2(A[7]), .Z(N_846) );
  AND2_X1 U57 ( .A1(N_1438), .A2(N_1232), .Z(N_1616) );
  AND2_X1 U58 ( .A1(N_728), .A2(N_1454), .Z(N_1646) );
  INV_X1 U59 ( .I(B[7]), .ZN(n11) );
  INV_X1 U60 ( .I(A[7]), .ZN(n10) );
  NOR2_X2 U61 ( .A1(n11), .A2(n10), .ZN(N_964) );
  INV_X1 U62 ( .I(B[6]), .ZN(n13) );
  INV_X1 U63 ( .I(A[6]), .ZN(n12) );
  NOR2_X2 U64 ( .A1(n13), .A2(n12), .ZN(N_832) );
  AND2_X1 U65 ( .A1(N_964), .A2(N_832), .Z(N_1468) );
  OR2_X1 U66 ( .A1(N_1987), .A2(N_1468), .Z(O[15]) );
  NOR4_X1 U69 ( .A1(B[7]), .A2(B[6]), .A3(B[5]), .A4(B[2]), .ZN(n16) );
  INV_X1 U70 ( .I(B[3]), .ZN(n15) );
  NOR3_X1 U71 ( .A1(A[5]), .A2(A[4]), .A3(A[3]), .ZN(n14) );
  AOI21_X1 U72 ( .A1(n16), .A2(n15), .B(n14), .ZN(N_156) );
endmodule

