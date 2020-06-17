/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Fri Jan 31 18:56:33 2020
/////////////////////////////////////////////////////////////


module HA_X1_6 ( A, B, CO, S );
  input A, B;
  output CO, S;
  wire   n1;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  NOR2_X1 U2 ( .A1(B), .A2(A), .ZN(n1) );
  NOR2_X1 U3 ( .A1(CO), .A2(n1), .ZN(S) );
endmodule


module FA_X1_27 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_13 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_27 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module HA_X1_5 ( A, B, CO, S );
  input A, B;
  output CO, S;


  XOR2_X1 U1 ( .A1(B), .A2(A), .Z(S) );
endmodule


module FA_X1_14 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_0 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_14 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_15 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_1 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_15 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_16 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_2 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_16 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_17 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_3 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_17 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_18 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_4 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_18 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_19 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_5 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_19 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_20 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_6 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_20 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_21 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_7 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_21 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_22 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   n1;

  AND2_X1 U1 ( .A1(A), .A2(B), .Z(CO) );
  NOR2_X1 U2 ( .A1(A), .A2(B), .ZN(n1) );
  NOR2_X1 U3 ( .A1(CO), .A2(n1), .ZN(S) );
endmodule


module FA_X1_8 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;
  wire   net84;

  FA_X1_22 U1 ( .A(CI), .B(A), .CI(net84), .CO(CO), .S(S) );
endmodule


module FA_X1_23 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_9 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_23 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_24 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_10 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_24 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_25 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_11 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_25 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module FA_X1_26 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(CI), .B(B), .CI(A), .CO(CO), .S(S) );
endmodule


module FA_X1_12 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1_26 U1 ( .A(CI), .B(A), .CI(B), .CO(CO), .S(S) );
endmodule


module HA_X1_0 ( A, B, CO, S );
  input A, B;
  output CO, S;
  wire   n1;

  AND2_X1 U1 ( .A1(B), .A2(A), .Z(CO) );
  NOR2_X1 U2 ( .A1(B), .A2(A), .ZN(n1) );
  NOR2_X1 U3 ( .A1(CO), .A2(n1), .ZN(S) );
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
         N_1616, N_1603, N_1602, N_1587, N_1586, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33;
  assign O[2] = O_2;
  assign O[5] = N_156;
  assign O[6] = N_156;
  assign O[7] = N_156;
  assign O[10] = N_1764;
  assign O[0] = 1'b0;
  assign O[1] = 1'b0;
  assign O[3] = 1'b0;
  assign O[4] = 1'b0;

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
  FA_X1_8 n1586 ( .A(N_1350), .B(1'b0), .CI(N_786), .CO(N_1587), .S(N_1586) );
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
  NOR3_X1 U46 ( .A1(B[5]), .A2(B[7]), .A3(B[6]), .ZN(n30) );
  INV_X1 U47 ( .I(A[2]), .ZN(n18) );
  NOR2_X1 U48 ( .A1(n30), .A2(n18), .ZN(N_420) );
  INV_X1 U49 ( .I(B[6]), .ZN(n24) );
  INV_X1 U50 ( .I(A[3]), .ZN(n19) );
  NOR2_X1 U51 ( .A1(n24), .A2(n19), .ZN(N_786) );
  INV_X1 U52 ( .I(B[7]), .ZN(n22) );
  NOR2_X1 U53 ( .A1(n22), .A2(n19), .ZN(N_906) );
  INV_X1 U54 ( .I(B[3]), .ZN(n20) );
  INV_X1 U55 ( .I(A[6]), .ZN(n23) );
  NOR2_X1 U56 ( .A1(n20), .A2(n23), .ZN(N_476) );
  INV_X1 U57 ( .I(A[5]), .ZN(n21) );
  INV_X1 U58 ( .I(B[4]), .ZN(n27) );
  NOR2_X1 U59 ( .A1(n21), .A2(n27), .ZN(N_580) );
  INV_X1 U60 ( .I(A[4]), .ZN(n33) );
  NOR2_X1 U61 ( .A1(n24), .A2(n33), .ZN(N_802) );
  NOR2_X1 U62 ( .A1(n22), .A2(n33), .ZN(N_920) );
  INV_X1 U63 ( .I(B[5]), .ZN(n32) );
  NOR2_X1 U64 ( .A1(n32), .A2(n21), .ZN(N_698) );
  INV_X1 U65 ( .I(A[7]), .ZN(n25) );
  NOR2_X1 U66 ( .A1(n20), .A2(n25), .ZN(N_490) );
  NOR2_X1 U67 ( .A1(n23), .A2(n27), .ZN(N_594) );
  NOR2_X1 U68 ( .A1(n24), .A2(n21), .ZN(N_816) );
  NOR2_X1 U69 ( .A1(n22), .A2(n25), .ZN(N_964) );
  NOR2_X1 U70 ( .A1(n24), .A2(n25), .ZN(N_846) );
  NOR2_X1 U71 ( .A1(n22), .A2(n23), .ZN(N_950) );
  NOR2_X1 U72 ( .A1(n22), .A2(n21), .ZN(N_934) );
  NOR2_X1 U73 ( .A1(n25), .A2(n27), .ZN(N_608) );
  NOR2_X1 U74 ( .A1(n32), .A2(n23), .ZN(N_712) );
  AND2_X1 U75 ( .A1(N_608), .A2(N_712), .Z(N_1216) );
  NOR2_X1 U76 ( .A1(n24), .A2(n23), .ZN(N_832) );
  NOR2_X1 U77 ( .A1(n32), .A2(n25), .ZN(N_728) );
  AND2_X1 U78 ( .A1(B[2]), .A2(A[7]), .Z(N_372) );
  AND2_X1 U79 ( .A1(N_1438), .A2(N_1232), .Z(N_1616) );
  AND2_X1 U80 ( .A1(N_728), .A2(N_1454), .Z(N_1646) );
  NAND2_X1 U81 ( .A1(B[1]), .A2(A[6]), .ZN(n26) );
  OAI21_X1 U82 ( .A1(n27), .A2(n33), .B(n26), .ZN(O[8]) );
  AND2_X1 U83 ( .A1(N_964), .A2(N_832), .Z(N_1468) );
  OR2_X1 U84 ( .A1(N_1987), .A2(N_1468), .Z(O[15]) );
  NOR2_X1 U86 ( .A1(B[3]), .A2(B[2]), .ZN(n29) );
  NOR2_X1 U87 ( .A1(A[3]), .A2(A[5]), .ZN(n28) );
  AOI22_X1 U88 ( .A1(n30), .A2(n29), .B1(n28), .B2(n33), .ZN(N_156) );
  INV_X1 U89 ( .I(N_1586), .ZN(n31) );
  OAI21_X1 U90 ( .A1(n33), .A2(n32), .B(n31), .ZN(O[9]) );
endmodule

