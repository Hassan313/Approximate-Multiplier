/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 14:08:07 2020
/////////////////////////////////////////////////////////////


module ERCM8_V2_3 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa5, cpa6, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122;
  assign dat_o[5] = cpa5;
  assign dat_o[6] = cpa6;

  NAND4_X2 U2 ( .A1(dat_in_a[2]), .A2(dat_in_a[3]), .A3(dat_in_b[2]), .A4(
        dat_in_b[1]), .ZN(n32) );
  NAND3_X2 U3 ( .A1(dat_in_b[3]), .A2(n33), .A3(dat_in_a[1]), .ZN(n31) );
  AOI21_X2 U4 ( .A1(dat_in_a[1]), .A2(dat_in_b[3]), .B(n33), .ZN(n36) );
  OAI21_X2 U5 ( .A1(n20), .A2(n17), .B(n34), .ZN(n33) );
  AOI22_X2 U6 ( .A1(dat_in_b[1]), .A2(dat_in_a[3]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n34) );
  NAND2_X2 U7 ( .A1(dat_in_b[0]), .A2(dat_in_a[4]), .ZN(n35) );
  NAND2_X2 U8 ( .A1(n37), .A2(n38), .ZN(dat_o[3]) );
  AOI22_X2 U9 ( .A1(dat_in_a[0]), .A2(dat_in_b[3]), .B1(dat_in_a[1]), .B2(
        dat_in_b[2]), .ZN(n38) );
  AOI22_X2 U10 ( .A1(dat_in_a[2]), .A2(dat_in_b[1]), .B1(dat_in_b[0]), .B2(
        dat_in_a[3]), .ZN(n37) );
  OAI21_X2 U11 ( .A1(n14), .A2(n24), .B(n39), .ZN(dat_o[2]) );
  AOI22_X2 U12 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n39) );
  AOI22_X2 U13 ( .A1(dat_in_a[1]), .A2(dat_in_b[0]), .B1(dat_in_b[1]), .B2(
        dat_in_a[0]), .ZN(n40) );
  NOR3_X2 U14 ( .A1(n7), .A2(n41), .A3(n18), .ZN(dat_o[15]) );
  AOI21_X2 U15 ( .A1(n1), .A2(n43), .B(n44), .ZN(n41) );
  AOI21_X2 U16 ( .A1(n46), .A2(n47), .B(n48), .ZN(n45) );
  AOI22_X2 U17 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n49) );
  AOI21_X2 U18 ( .A1(n51), .A2(n52), .B(n48), .ZN(n47) );
  OAI21_X2 U19 ( .A1(n18), .A2(n53), .B(n54), .ZN(n48) );
  NAND3_X2 U20 ( .A1(dat_in_b[5]), .A2(n50), .A3(dat_in_b[6]), .ZN(n54) );
  AOI22_X2 U21 ( .A1(dat_in_a[7]), .A2(dat_in_b[5]), .B1(dat_in_a[6]), .B2(
        dat_in_b[6]), .ZN(n52) );
  NAND2_X2 U22 ( .A1(dat_in_b[7]), .A2(dat_in_a[5]), .ZN(n51) );
  OAI21_X2 U23 ( .A1(n55), .A2(n56), .B(n57), .ZN(n46) );
  AOI21_X2 U24 ( .A1(n3), .A2(n58), .B(n59), .ZN(n55) );
  NAND2_X2 U25 ( .A1(n60), .A2(n57), .ZN(n56) );
  NOR3_X2 U26 ( .A1(n61), .A2(n62), .A3(n63), .ZN(n57) );
  NOR3_X2 U27 ( .A1(n10), .A2(n65), .A3(n18), .ZN(n62) );
  OAI21_X2 U28 ( .A1(n18), .A2(n10), .B(n65), .ZN(n60) );
  AOI21_X2 U29 ( .A1(dat_in_a[5]), .A2(dat_in_b[6]), .B(n64), .ZN(n65) );
  OAI22_X2 U30 ( .A1(n7), .A2(n20), .B1(n8), .B2(n19), .ZN(n64) );
  AOI21_X2 U31 ( .A1(n66), .A2(n67), .B(n59), .ZN(n58) );
  NAND4_X2 U32 ( .A1(n68), .A2(n69), .A3(n70), .A4(n71), .ZN(n59) );
  NAND3_X2 U33 ( .A1(dat_in_b[4]), .A2(n50), .A3(dat_in_b[3]), .ZN(n71) );
  NAND3_X2 U34 ( .A1(n73), .A2(dat_in_a[4]), .A3(dat_in_b[6]), .ZN(n68) );
  AOI21_X2 U35 ( .A1(dat_in_a[5]), .A2(dat_in_b[5]), .B(n6), .ZN(n67) );
  AOI21_X2 U36 ( .A1(dat_in_a[4]), .A2(dat_in_b[6]), .B(n73), .ZN(n72) );
  OAI22_X2 U37 ( .A1(n7), .A2(n21), .B1(n8), .B2(n20), .ZN(n73) );
  NAND2_X2 U38 ( .A1(dat_in_b[7]), .A2(dat_in_a[3]), .ZN(n66) );
  AOI21_X2 U39 ( .A1(n26), .A2(n25), .B(n75), .ZN(n74) );
  AOI21_X2 U40 ( .A1(n81), .A2(n82), .B(n83), .ZN(n80) );
  NOR3_X2 U41 ( .A1(n20), .A2(n85), .A3(n9), .ZN(n79) );
  AOI21_X2 U42 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B(n86), .ZN(n76) );
  OAI21_X2 U43 ( .A1(n20), .A2(n9), .B(n85), .ZN(n81) );
  AOI21_X2 U44 ( .A1(dat_in_a[4]), .A2(dat_in_b[5]), .B(n84), .ZN(n85) );
  OAI22_X2 U45 ( .A1(n7), .A2(n22), .B1(n8), .B2(n21), .ZN(n84) );
  OAI21_X2 U46 ( .A1(n27), .A2(n28), .B(n87), .ZN(n26) );
  OAI21_X2 U47 ( .A1(n88), .A2(n89), .B(n87), .ZN(n28) );
  NOR4_X2 U48 ( .A1(n90), .A2(n91), .A3(n92), .A4(n4), .ZN(n87) );
  AOI21_X2 U49 ( .A1(n89), .A2(n88), .B(n11), .ZN(n93) );
  AOI22_X2 U50 ( .A1(n95), .A2(n13), .B1(n82), .B2(n96), .ZN(n94) );
  NOR3_X2 U51 ( .A1(n9), .A2(n98), .A3(n21), .ZN(n91) );
  AOI22_X2 U52 ( .A1(dat_in_a[2]), .A2(dat_in_b[6]), .B1(dat_in_a[1]), .B2(
        dat_in_b[7]), .ZN(n99) );
  OAI21_X2 U53 ( .A1(n9), .A2(n21), .B(n98), .ZN(n88) );
  AOI21_X2 U54 ( .A1(dat_in_a[4]), .A2(dat_in_b[4]), .B(n97), .ZN(n98) );
  OAI22_X2 U55 ( .A1(n7), .A2(n23), .B1(n8), .B2(n22), .ZN(n97) );
  OAI21_X2 U56 ( .A1(n101), .A2(n102), .B(n27), .ZN(n100) );
  NOR4_X2 U57 ( .A1(n103), .A2(n104), .A3(n105), .A4(n106), .ZN(n27) );
  NOR3_X2 U58 ( .A1(n22), .A2(n112), .A3(n9), .ZN(n107) );
  OAI21_X2 U59 ( .A1(n22), .A2(n9), .B(n112), .ZN(n102) );
  AOI21_X2 U60 ( .A1(dat_in_a[4]), .A2(dat_in_b[3]), .B(n111), .ZN(n112) );
  OAI22_X2 U61 ( .A1(n7), .A2(n24), .B1(n8), .B2(n23), .ZN(n111) );
  NAND2_X2 U62 ( .A1(n16), .A2(n113), .ZN(n101) );
  AOI21_X2 U63 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B(n114), .ZN(n113) );
  OAI22_X2 U64 ( .A1(n20), .A2(n12), .B1(n19), .B2(n14), .ZN(n114) );
  NAND4_X2 U65 ( .A1(n115), .A2(n116), .A3(n117), .A4(n118), .ZN(cpa6) );
  AOI22_X2 U66 ( .A1(dat_in_a[0]), .A2(dat_in_b[6]), .B1(dat_in_a[1]), .B2(
        dat_in_b[5]), .ZN(n118) );
  AOI22_X2 U67 ( .A1(dat_in_a[2]), .A2(dat_in_b[4]), .B1(dat_in_a[3]), .B2(
        dat_in_b[3]), .ZN(n117) );
  NAND2_X2 U68 ( .A1(dat_in_b[0]), .A2(dat_in_a[6]), .ZN(n116) );
  AOI22_X2 U69 ( .A1(dat_in_a[4]), .A2(dat_in_b[2]), .B1(dat_in_a[5]), .B2(
        dat_in_b[1]), .ZN(n115) );
  NAND4_X2 U70 ( .A1(n119), .A2(n120), .A3(n121), .A4(n122), .ZN(cpa5) );
  NAND2_X2 U71 ( .A1(dat_in_a[2]), .A2(dat_in_b[3]), .ZN(n122) );
  AOI22_X2 U72 ( .A1(dat_in_a[0]), .A2(dat_in_b[5]), .B1(dat_in_a[1]), .B2(
        dat_in_b[4]), .ZN(n121) );
  NAND2_X2 U73 ( .A1(dat_in_b[0]), .A2(dat_in_a[5]), .ZN(n120) );
  AOI22_X2 U74 ( .A1(dat_in_a[3]), .A2(dat_in_b[2]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n119) );
  INV_X8 U75 ( .I(n45), .ZN(n1) );
  INV_X8 U76 ( .I(n100), .ZN(dat_o[7]) );
  INV_X8 U77 ( .I(n74), .ZN(n3) );
  INV_X8 U78 ( .I(n93), .ZN(n4) );
  INV_X8 U79 ( .I(n80), .ZN(n5) );
  INV_X8 U80 ( .I(n72), .ZN(n6) );
  INV_X8 U81 ( .I(dat_in_a[7]), .ZN(n7) );
  INV_X8 U82 ( .I(dat_in_a[6]), .ZN(n8) );
  INV_X8 U83 ( .I(dat_in_a[5]), .ZN(n9) );
  INV_X8 U84 ( .I(dat_in_a[4]), .ZN(n10) );
  INV_X8 U85 ( .I(n94), .ZN(n11) );
  INV_X8 U86 ( .I(dat_in_a[3]), .ZN(n12) );
  INV_X8 U87 ( .I(n99), .ZN(n13) );
  INV_X8 U88 ( .I(dat_in_a[2]), .ZN(n14) );
  INV_X8 U89 ( .I(n40), .ZN(dat_o[1]) );
  INV_X8 U90 ( .I(n96), .ZN(n16) );
  INV_X8 U91 ( .I(dat_in_a[0]), .ZN(n17) );
  INV_X8 U92 ( .I(dat_in_b[7]), .ZN(n18) );
  INV_X8 U93 ( .I(dat_in_b[5]), .ZN(n19) );
  INV_X8 U94 ( .I(dat_in_b[4]), .ZN(n20) );
  INV_X8 U95 ( .I(dat_in_b[3]), .ZN(n21) );
  INV_X8 U96 ( .I(dat_in_b[2]), .ZN(n22) );
  INV_X8 U97 ( .I(dat_in_b[1]), .ZN(n23) );
  INV_X8 U98 ( .I(dat_in_b[0]), .ZN(n24) );
  XOR2_X1 U99 ( .A1(n25), .A2(n26), .Z(dat_o[9]) );
  XOR2_X1 U100 ( .A1(n27), .A2(n28), .Z(dat_o[8]) );
  AND4_X1 U101 ( .A1(n29), .A2(n30), .A3(n31), .A4(n32), .Z(dat_o[4]) );
  OR3_X1 U102 ( .A1(n34), .A2(n20), .A3(n17), .Z(n30) );
  XOR2_X1 U103 ( .A1(n35), .A2(n36), .Z(n29) );
  XNOR2_X1 U104 ( .A1(n41), .A2(n42), .ZN(dat_o[14]) );
  AND2_X1 U105 ( .A1(dat_in_b[7]), .A2(dat_in_a[7]), .Z(n42) );
  XOR2_X1 U106 ( .A1(n43), .A2(n1), .Z(dat_o[13]) );
  NOR2_X2 U107 ( .A1(n44), .A2(n49), .ZN(n43) );
  AND3_X1 U108 ( .A1(dat_in_b[7]), .A2(n50), .A3(dat_in_b[6]), .Z(n44) );
  XOR2_X1 U109 ( .A1(n46), .A2(n47), .Z(dat_o[12]) );
  OR2_X1 U110 ( .A1(n52), .A2(n9), .Z(n53) );
  XOR2_X1 U111 ( .A1(n56), .A2(n55), .Z(dat_o[11]) );
  AND3_X1 U112 ( .A1(dat_in_b[6]), .A2(n64), .A3(dat_in_a[5]), .Z(n63) );
  AND3_X1 U113 ( .A1(dat_in_b[4]), .A2(n50), .A3(dat_in_b[5]), .Z(n61) );
  XOR2_X1 U114 ( .A1(n3), .A2(n58), .Z(dat_o[10]) );
  OR3_X1 U115 ( .A1(n9), .A2(n72), .A3(n19), .Z(n70) );
  OR3_X1 U116 ( .A1(n67), .A2(n12), .A3(n18), .Z(n69) );
  NOR2_X2 U117 ( .A1(n76), .A2(n75), .ZN(n25) );
  OR4_X1 U118 ( .A1(n77), .A2(n78), .A3(n79), .A4(n5), .Z(n75) );
  AND3_X1 U119 ( .A1(n84), .A2(dat_in_a[4]), .A3(dat_in_b[5]), .Z(n83) );
  AND3_X1 U120 ( .A1(dat_in_b[6]), .A2(n86), .A3(dat_in_a[3]), .Z(n78) );
  AND3_X1 U121 ( .A1(dat_in_b[2]), .A2(n50), .A3(dat_in_b[3]), .Z(n77) );
  OR2_X1 U122 ( .A1(n81), .A2(n82), .Z(n86) );
  AND2_X1 U123 ( .A1(dat_in_a[2]), .A2(dat_in_b[7]), .Z(n82) );
  AND3_X1 U124 ( .A1(dat_in_b[4]), .A2(n97), .A3(dat_in_a[4]), .Z(n92) );
  AND3_X1 U125 ( .A1(dat_in_b[1]), .A2(n50), .A3(dat_in_b[2]), .Z(n90) );
  OR2_X1 U126 ( .A1(n13), .A2(n95), .Z(n89) );
  AND2_X1 U127 ( .A1(dat_in_a[0]), .A2(dat_in_b[0]), .Z(dat_o[0]) );
  OR4_X1 U128 ( .A1(n107), .A2(n108), .A3(n109), .A4(n110), .Z(n106) );
  AND3_X1 U129 ( .A1(dat_in_b[1]), .A2(n50), .A3(dat_in_b[0]), .Z(n110) );
  AND2_X1 U130 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .Z(n50) );
  AND3_X1 U131 ( .A1(dat_in_a[2]), .A2(dat_in_b[4]), .A3(n95), .Z(n109) );
  NOR2_X2 U132 ( .A1(n19), .A2(n12), .ZN(n95) );
  AND3_X1 U133 ( .A1(dat_in_b[3]), .A2(n111), .A3(dat_in_a[4]), .Z(n108) );
  AND2_X1 U134 ( .A1(n101), .A2(n102), .Z(n105) );
  NOR2_X2 U135 ( .A1(n16), .A2(n113), .ZN(n104) );
  AND3_X1 U136 ( .A1(dat_in_a[0]), .A2(n114), .A3(dat_in_b[7]), .Z(n103) );
  AND2_X1 U137 ( .A1(dat_in_b[6]), .A2(dat_in_a[1]), .Z(n96) );
endmodule

