/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 14:21:18 2020
/////////////////////////////////////////////////////////////


module ERCM8_V2_1 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa5, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139;
  assign dat_o[5] = cpa5;

  NAND3_X2 U2 ( .A1(dat_in_b[3]), .A2(n34), .A3(dat_in_a[1]), .ZN(n33) );
  NAND2_X2 U3 ( .A1(n36), .A2(n37), .ZN(n31) );
  AOI21_X2 U4 ( .A1(dat_in_a[1]), .A2(dat_in_b[3]), .B(n34), .ZN(n39) );
  OAI21_X2 U5 ( .A1(n17), .A2(n14), .B(n35), .ZN(n34) );
  AOI22_X2 U6 ( .A1(dat_in_b[1]), .A2(dat_in_a[3]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n35) );
  NAND2_X2 U7 ( .A1(dat_in_b[0]), .A2(dat_in_a[4]), .ZN(n38) );
  NAND2_X2 U8 ( .A1(n40), .A2(n41), .ZN(dat_o[3]) );
  AOI22_X2 U9 ( .A1(dat_in_a[0]), .A2(dat_in_b[3]), .B1(dat_in_a[1]), .B2(
        dat_in_b[2]), .ZN(n41) );
  AOI22_X2 U10 ( .A1(dat_in_a[2]), .A2(dat_in_b[1]), .B1(dat_in_b[0]), .B2(
        dat_in_a[3]), .ZN(n40) );
  OAI21_X2 U11 ( .A1(n12), .A2(n21), .B(n42), .ZN(dat_o[2]) );
  AOI22_X2 U12 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n42) );
  OAI22_X2 U13 ( .A1(n13), .A2(n21), .B1(n20), .B2(n14), .ZN(dat_o[1]) );
  NOR3_X2 U14 ( .A1(n5), .A2(n43), .A3(n15), .ZN(dat_o[15]) );
  AOI21_X2 U15 ( .A1(n1), .A2(n45), .B(n46), .ZN(n43) );
  AOI21_X2 U16 ( .A1(n48), .A2(n49), .B(n50), .ZN(n47) );
  AOI22_X2 U17 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n51) );
  AOI21_X2 U18 ( .A1(n53), .A2(n54), .B(n50), .ZN(n49) );
  NOR3_X2 U19 ( .A1(n15), .A2(n54), .A3(n8), .ZN(n56) );
  AOI22_X2 U20 ( .A1(dat_in_a[7]), .A2(dat_in_b[5]), .B1(dat_in_a[6]), .B2(
        dat_in_b[6]), .ZN(n54) );
  NAND2_X2 U21 ( .A1(dat_in_b[7]), .A2(dat_in_a[5]), .ZN(n53) );
  OAI21_X2 U22 ( .A1(n57), .A2(n58), .B(n59), .ZN(n48) );
  AOI21_X2 U23 ( .A1(n60), .A2(n61), .B(n62), .ZN(n57) );
  NAND2_X2 U24 ( .A1(n63), .A2(n59), .ZN(n58) );
  NOR3_X2 U25 ( .A1(n64), .A2(n65), .A3(n66), .ZN(n59) );
  NOR3_X2 U26 ( .A1(n9), .A2(n68), .A3(n15), .ZN(n65) );
  OAI21_X2 U27 ( .A1(n15), .A2(n9), .B(n68), .ZN(n63) );
  AOI21_X2 U28 ( .A1(dat_in_a[5]), .A2(dat_in_b[6]), .B(n67), .ZN(n68) );
  OAI22_X2 U29 ( .A1(n5), .A2(n17), .B1(n7), .B2(n16), .ZN(n67) );
  AOI21_X2 U30 ( .A1(n69), .A2(n4), .B(n62), .ZN(n61) );
  NAND4_X2 U31 ( .A1(n70), .A2(n71), .A3(n72), .A4(n73), .ZN(n62) );
  NAND3_X2 U32 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n52), .ZN(n73) );
  NAND3_X2 U33 ( .A1(n75), .A2(dat_in_a[4]), .A3(dat_in_b[6]), .ZN(n70) );
  OAI21_X2 U34 ( .A1(n8), .A2(n16), .B(n74), .ZN(n76) );
  AOI21_X2 U35 ( .A1(dat_in_a[4]), .A2(dat_in_b[6]), .B(n75), .ZN(n74) );
  OAI22_X2 U36 ( .A1(n5), .A2(n18), .B1(n7), .B2(n17), .ZN(n75) );
  NAND2_X2 U37 ( .A1(dat_in_a[3]), .A2(dat_in_b[7]), .ZN(n69) );
  OAI21_X2 U38 ( .A1(n23), .A2(n22), .B(n77), .ZN(n60) );
  NOR4_X2 U39 ( .A1(n79), .A2(n80), .A3(n81), .A4(n3), .ZN(n77) );
  AOI21_X2 U40 ( .A1(n83), .A2(n84), .B(n85), .ZN(n82) );
  NOR3_X2 U41 ( .A1(n17), .A2(n87), .A3(n8), .ZN(n81) );
  AOI21_X2 U42 ( .A1(dat_in_a[3]), .A2(dat_in_b[6]), .B(n88), .ZN(n78) );
  OAI21_X2 U43 ( .A1(n17), .A2(n8), .B(n87), .ZN(n83) );
  AOI21_X2 U44 ( .A1(dat_in_a[4]), .A2(dat_in_b[5]), .B(n86), .ZN(n87) );
  OAI22_X2 U45 ( .A1(n19), .A2(n5), .B1(n7), .B2(n18), .ZN(n86) );
  AOI21_X2 U46 ( .A1(n6), .A2(n25), .B(n89), .ZN(n23) );
  AOI21_X2 U47 ( .A1(n90), .A2(n91), .B(n89), .ZN(n25) );
  OAI21_X2 U48 ( .A1(n91), .A2(n90), .B(n96), .ZN(n95) );
  AOI22_X2 U49 ( .A1(n52), .A2(n37), .B1(n84), .B2(n97), .ZN(n96) );
  NOR3_X2 U50 ( .A1(n17), .A2(n98), .A3(n9), .ZN(n94) );
  AOI21_X2 U51 ( .A1(dat_in_a[3]), .A2(dat_in_b[5]), .B(n11), .ZN(n91) );
  AOI22_X2 U52 ( .A1(dat_in_a[2]), .A2(dat_in_b[6]), .B1(dat_in_a[1]), .B2(
        dat_in_b[7]), .ZN(n100) );
  AOI21_X2 U53 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n99), .ZN(n90) );
  OAI21_X2 U54 ( .A1(n9), .A2(n17), .B(n98), .ZN(n99) );
  AOI22_X2 U55 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n98) );
  AOI21_X2 U56 ( .A1(n27), .A2(n26), .B(n101), .ZN(n24) );
  AOI21_X2 U57 ( .A1(n102), .A2(n103), .B(n101), .ZN(n26) );
  NOR3_X2 U58 ( .A1(n18), .A2(n112), .A3(n9), .ZN(n109) );
  NOR3_X2 U59 ( .A1(n14), .A2(n115), .A3(n15), .ZN(n104) );
  OAI21_X2 U60 ( .A1(n15), .A2(n14), .B(n115), .ZN(n114) );
  AOI22_X2 U61 ( .A1(dat_in_b[4]), .A2(dat_in_a[3]), .B1(dat_in_a[2]), .B2(
        dat_in_b[5]), .ZN(n115) );
  AOI21_X2 U62 ( .A1(dat_in_b[2]), .A2(dat_in_a[5]), .B(n113), .ZN(n102) );
  OAI21_X2 U63 ( .A1(n9), .A2(n18), .B(n112), .ZN(n113) );
  AOI22_X2 U64 ( .A1(dat_in_a[7]), .A2(dat_in_b[0]), .B1(dat_in_a[6]), .B2(
        dat_in_b[1]), .ZN(n112) );
  OAI21_X2 U65 ( .A1(n28), .A2(n29), .B(n116), .ZN(n27) );
  OAI21_X2 U66 ( .A1(n117), .A2(n118), .B(n116), .ZN(n29) );
  NOR4_X2 U67 ( .A1(n119), .A2(n120), .A3(n121), .A4(n122), .ZN(n116) );
  NAND3_X2 U68 ( .A1(n123), .A2(n124), .A3(n125), .ZN(n122) );
  NAND3_X2 U69 ( .A1(dat_in_a[5]), .A2(dat_in_a[4]), .A3(n37), .ZN(n124) );
  NAND3_X2 U70 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n36), .ZN(n123) );
  NOR3_X2 U71 ( .A1(n13), .A2(n128), .A3(n16), .ZN(n119) );
  OAI21_X2 U72 ( .A1(n13), .A2(n16), .B(n128), .ZN(n118) );
  AOI21_X2 U73 ( .A1(dat_in_b[6]), .A2(dat_in_a[0]), .B(n127), .ZN(n128) );
  OAI22_X2 U74 ( .A1(n18), .A2(n10), .B1(n17), .B2(n12), .ZN(n127) );
  OAI21_X2 U75 ( .A1(n7), .A2(n21), .B(n126), .ZN(n117) );
  AOI22_X2 U76 ( .A1(dat_in_b[1]), .A2(dat_in_a[5]), .B1(dat_in_b[2]), .B2(
        dat_in_a[4]), .ZN(n126) );
  NOR4_X2 U77 ( .A1(n130), .A2(n131), .A3(n132), .A4(n133), .ZN(n28) );
  OAI22_X2 U78 ( .A1(n14), .A2(n134), .B1(n9), .B2(n135), .ZN(n133) );
  NAND2_X2 U79 ( .A1(n136), .A2(dat_in_b[1]), .ZN(n135) );
  NAND2_X2 U80 ( .A1(n137), .A2(dat_in_b[5]), .ZN(n134) );
  NOR3_X2 U81 ( .A1(n17), .A2(n138), .A3(n13), .ZN(n132) );
  NOR3_X2 U82 ( .A1(n8), .A2(n139), .A3(n21), .ZN(n131) );
  OAI21_X2 U83 ( .A1(n21), .A2(n8), .B(n139), .ZN(n129) );
  AOI21_X2 U84 ( .A1(dat_in_b[1]), .A2(dat_in_a[4]), .B(n136), .ZN(n139) );
  OAI21_X2 U85 ( .A1(n17), .A2(n13), .B(n138), .ZN(n136) );
  AOI21_X2 U86 ( .A1(dat_in_b[5]), .A2(dat_in_a[0]), .B(n137), .ZN(n138) );
  OAI22_X2 U87 ( .A1(n19), .A2(n10), .B1(n18), .B2(n12), .ZN(n137) );
  INV_X8 U88 ( .I(n47), .ZN(n1) );
  INV_X8 U89 ( .I(n77), .ZN(n2) );
  INV_X8 U90 ( .I(n82), .ZN(n3) );
  INV_X8 U91 ( .I(n76), .ZN(n4) );
  INV_X8 U92 ( .I(dat_in_a[7]), .ZN(n5) );
  INV_X8 U93 ( .I(n24), .ZN(n6) );
  INV_X8 U94 ( .I(dat_in_a[6]), .ZN(n7) );
  INV_X8 U95 ( .I(dat_in_a[5]), .ZN(n8) );
  INV_X8 U96 ( .I(dat_in_a[4]), .ZN(n9) );
  INV_X8 U97 ( .I(dat_in_a[3]), .ZN(n10) );
  INV_X8 U98 ( .I(n100), .ZN(n11) );
  INV_X8 U99 ( .I(dat_in_a[2]), .ZN(n12) );
  INV_X8 U100 ( .I(dat_in_a[1]), .ZN(n13) );
  INV_X8 U101 ( .I(dat_in_a[0]), .ZN(n14) );
  INV_X8 U102 ( .I(dat_in_b[7]), .ZN(n15) );
  INV_X8 U103 ( .I(dat_in_b[5]), .ZN(n16) );
  INV_X8 U105 ( .I(dat_in_b[3]), .ZN(n18) );
  INV_X8 U106 ( .I(dat_in_b[2]), .ZN(n19) );
  INV_X8 U107 ( .I(dat_in_b[1]), .ZN(n20) );
  INV_X8 U108 ( .I(dat_in_b[0]), .ZN(n21) );
  XOR2_X1 U109 ( .A1(n22), .A2(n23), .Z(dat_o[9]) );
  XNOR2_X1 U110 ( .A1(n24), .A2(n25), .ZN(dat_o[8]) );
  XOR2_X1 U111 ( .A1(n26), .A2(n27), .Z(dat_o[7]) );
  XOR2_X1 U112 ( .A1(n28), .A2(n29), .Z(dat_o[6]) );
  AND4_X1 U113 ( .A1(n30), .A2(n31), .A3(n32), .A4(n33), .Z(dat_o[4]) );
  OR3_X1 U114 ( .A1(n35), .A2(n17), .A3(n14), .Z(n32) );
  XOR2_X1 U115 ( .A1(n38), .A2(n39), .Z(n30) );
  XNOR2_X1 U116 ( .A1(n43), .A2(n44), .ZN(dat_o[14]) );
  AND2_X1 U117 ( .A1(dat_in_b[7]), .A2(dat_in_a[7]), .Z(n44) );
  XOR2_X1 U118 ( .A1(n45), .A2(n1), .Z(dat_o[13]) );
  NOR2_X2 U119 ( .A1(n46), .A2(n51), .ZN(n45) );
  AND3_X1 U120 ( .A1(dat_in_b[6]), .A2(dat_in_b[7]), .A3(n52), .Z(n46) );
  XOR2_X1 U121 ( .A1(n48), .A2(n49), .Z(dat_o[12]) );
  OR2_X1 U122 ( .A1(n55), .A2(n56), .Z(n50) );
  AND3_X1 U123 ( .A1(dat_in_b[5]), .A2(dat_in_b[6]), .A3(n52), .Z(n55) );
  XOR2_X1 U124 ( .A1(n58), .A2(n57), .Z(dat_o[11]) );
  AND3_X1 U125 ( .A1(dat_in_b[6]), .A2(n67), .A3(dat_in_a[5]), .Z(n66) );
  AND3_X1 U126 ( .A1(dat_in_b[5]), .A2(dat_in_b[4]), .A3(n52), .Z(n64) );
  XOR2_X1 U127 ( .A1(n60), .A2(n61), .Z(dat_o[10]) );
  OR3_X1 U128 ( .A1(n8), .A2(n74), .A3(n16), .Z(n72) );
  OR3_X1 U129 ( .A1(n4), .A2(n15), .A3(n10), .Z(n71) );
  OR2_X1 U130 ( .A1(n78), .A2(n2), .Z(n22) );
  AND3_X1 U131 ( .A1(n86), .A2(dat_in_a[4]), .A3(dat_in_b[5]), .Z(n85) );
  AND3_X1 U132 ( .A1(dat_in_a[3]), .A2(n88), .A3(dat_in_b[6]), .Z(n80) );
  AND3_X1 U133 ( .A1(dat_in_b[3]), .A2(dat_in_b[2]), .A3(n52), .Z(n79) );
  OR2_X1 U134 ( .A1(n83), .A2(n84), .Z(n88) );
  OR4_X1 U135 ( .A1(n92), .A2(n93), .A3(n94), .A4(n95), .Z(n89) );
  NOR2_X2 U136 ( .A1(n12), .A2(n15), .ZN(n84) );
  AND3_X1 U137 ( .A1(dat_in_b[5]), .A2(n11), .A3(dat_in_a[3]), .Z(n93) );
  AND3_X1 U138 ( .A1(dat_in_a[5]), .A2(n99), .A3(dat_in_b[3]), .Z(n92) );
  OR4_X1 U139 ( .A1(n104), .A2(n105), .A3(n106), .A4(n107), .Z(n101) );
  OR4_X1 U140 ( .A1(n108), .A2(n109), .A3(n110), .A4(n111), .Z(n107) );
  AND3_X1 U141 ( .A1(n52), .A2(dat_in_b[1]), .A3(dat_in_b[0]), .Z(n111) );
  AND2_X1 U142 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .Z(n52) );
  AND3_X1 U143 ( .A1(dat_in_b[5]), .A2(dat_in_b[4]), .A3(n36), .Z(n110) );
  AND3_X1 U144 ( .A1(dat_in_b[2]), .A2(n113), .A3(dat_in_a[5]), .Z(n108) );
  NOR2_X2 U145 ( .A1(n103), .A2(n102), .ZN(n106) );
  AND2_X1 U146 ( .A1(n97), .A2(n114), .Z(n105) );
  NOR2_X2 U147 ( .A1(n97), .A2(n114), .ZN(n103) );
  AND2_X1 U148 ( .A1(dat_in_b[6]), .A2(dat_in_a[1]), .Z(n97) );
  OR3_X1 U149 ( .A1(n126), .A2(n7), .A3(n21), .Z(n125) );
  NOR2_X2 U150 ( .A1(n20), .A2(n19), .ZN(n37) );
  AND2_X1 U151 ( .A1(n118), .A2(n117), .Z(n121) );
  AND3_X1 U152 ( .A1(dat_in_a[0]), .A2(n127), .A3(dat_in_b[6]), .Z(n120) );
  AND2_X1 U153 ( .A1(dat_in_a[0]), .A2(dat_in_b[0]), .Z(dat_o[0]) );
  AND2_X1 U154 ( .A1(n129), .A2(n28), .Z(cpa5) );
  AND3_X1 U155 ( .A1(dat_in_b[3]), .A2(dat_in_b[2]), .A3(n36), .Z(n130) );
  AND2_X1 U156 ( .A1(dat_in_a[3]), .A2(dat_in_a[2]), .Z(n36) );
  INV_X16 U157 ( .I(dat_in_b[4]), .ZN(n17) );
endmodule

