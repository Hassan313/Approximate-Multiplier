/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 16:19:30 2020
/////////////////////////////////////////////////////////////


module ERCM8_5 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa6, cpa7, cpa8, cpa9, cpa10, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;
  assign dat_o[8] = cpa8;
  assign dat_o[9] = cpa9;
  assign dat_o[10] = cpa10;

  AOI21_X2 U2 ( .A1(n28), .A2(n29), .B(n30), .ZN(n27) );
  AOI21_X2 U3 ( .A1(n36), .A2(n37), .B(n38), .ZN(n35) );
  AOI21_X2 U4 ( .A1(n42), .A2(n43), .B(n32), .ZN(n41) );
  NOR3_X2 U5 ( .A1(n19), .A2(n49), .A3(n23), .ZN(n45) );
  NAND2_X2 U6 ( .A1(dat_in_b[0]), .A2(dat_in_a[4]), .ZN(n43) );
  NOR3_X2 U7 ( .A1(n42), .A2(n14), .A3(n26), .ZN(n31) );
  AOI21_X2 U8 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n50), .ZN(n42) );
  OAI21_X2 U9 ( .A1(n23), .A2(n19), .B(n49), .ZN(n50) );
  AOI22_X2 U10 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n49) );
  NAND3_X2 U11 ( .A1(n51), .A2(n52), .A3(n53), .ZN(dat_o[3]) );
  AOI21_X2 U12 ( .A1(n55), .A2(n56), .B(n16), .ZN(n54) );
  AOI22_X2 U13 ( .A1(n48), .A2(n58), .B1(dat_in_a[1]), .B2(n59), .ZN(n57) );
  AOI22_X2 U14 ( .A1(dat_in_b[2]), .A2(dat_in_a[1]), .B1(dat_in_b[3]), .B2(
        dat_in_a[0]), .ZN(n55) );
  AOI22_X2 U15 ( .A1(dat_in_a[3]), .A2(dat_in_b[0]), .B1(dat_in_a[2]), .B2(
        dat_in_b[1]), .ZN(n56) );
  OAI21_X2 U16 ( .A1(n17), .A2(n26), .B(n64), .ZN(n63) );
  AOI22_X2 U17 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n64) );
  NAND3_X2 U18 ( .A1(dat_in_a[1]), .A2(dat_in_a[0]), .A3(n47), .ZN(n51) );
  AOI22_X2 U19 ( .A1(n58), .A2(dat_in_a[1]), .B1(dat_o[0]), .B2(dat_in_b[2]), 
        .ZN(n65) );
  AOI22_X2 U20 ( .A1(dat_in_a[0]), .A2(dat_in_b[1]), .B1(dat_in_b[0]), .B2(
        dat_in_a[1]), .ZN(n66) );
  NOR3_X2 U21 ( .A1(n30), .A2(n5), .A3(n20), .ZN(n29) );
  OAI22_X2 U22 ( .A1(n67), .A2(n68), .B1(n69), .B2(n70), .ZN(n28) );
  AOI22_X2 U23 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n71) );
  AOI22_X2 U24 ( .A1(n76), .A2(n77), .B1(n78), .B2(n79), .ZN(n67) );
  AOI21_X2 U25 ( .A1(n80), .A2(n81), .B(n75), .ZN(n79) );
  AOI21_X2 U26 ( .A1(dat_in_b[7]), .A2(dat_in_a[5]), .B(n83), .ZN(n82) );
  NAND3_X2 U27 ( .A1(n83), .A2(dat_in_b[7]), .A3(dat_in_a[5]), .ZN(n80) );
  OAI22_X2 U28 ( .A1(n5), .A2(n22), .B1(n9), .B2(n21), .ZN(n83) );
  NAND2_X2 U29 ( .A1(n84), .A2(n85), .ZN(n78) );
  OAI21_X2 U30 ( .A1(n86), .A2(n87), .B(n88), .ZN(n76) );
  OAI21_X2 U31 ( .A1(n89), .A2(n90), .B(n88), .ZN(n87) );
  NAND2_X2 U32 ( .A1(n90), .A2(n89), .ZN(n88) );
  AOI21_X2 U33 ( .A1(n95), .A2(n94), .B(n8), .ZN(n93) );
  AOI22_X2 U34 ( .A1(n73), .A2(n96), .B1(dat_in_b[4]), .B2(n97), .ZN(n85) );
  AOI22_X2 U35 ( .A1(dat_in_a[7]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n94) );
  AOI22_X2 U36 ( .A1(dat_in_b[6]), .A2(dat_in_a[5]), .B1(dat_in_b[7]), .B2(
        dat_in_a[4]), .ZN(n95) );
  OAI21_X2 U37 ( .A1(n100), .A2(n101), .B(n2), .ZN(n99) );
  AOI21_X2 U38 ( .A1(n105), .A2(n106), .B(n107), .ZN(n104) );
  NAND2_X2 U39 ( .A1(n108), .A2(n109), .ZN(cpa8) );
  AOI21_X2 U40 ( .A1(n110), .A2(n111), .B(n112), .ZN(n109) );
  AOI21_X2 U41 ( .A1(n100), .A2(n101), .B(n102), .ZN(n114) );
  AOI22_X2 U42 ( .A1(n72), .A2(n47), .B1(dat_in_a[4]), .B2(n119), .ZN(n118) );
  AOI21_X2 U43 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B(n121), .ZN(n100) );
  OAI22_X2 U44 ( .A1(n21), .A2(n17), .B1(n20), .B2(n18), .ZN(n121) );
  AOI21_X2 U45 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n122), .ZN(n101) );
  OAI21_X2 U46 ( .A1(n23), .A2(n14), .B(n120), .ZN(n122) );
  AOI22_X2 U47 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n120) );
  OAI21_X2 U48 ( .A1(n125), .A2(n126), .B(n10), .ZN(n124) );
  OAI21_X2 U49 ( .A1(n110), .A2(n111), .B(n4), .ZN(n129) );
  NOR3_X2 U50 ( .A1(n21), .A2(n139), .A3(n18), .ZN(n132) );
  NOR3_X2 U51 ( .A1(n11), .A2(n140), .A3(n24), .ZN(n131) );
  OAI21_X2 U52 ( .A1(n21), .A2(n18), .B(n139), .ZN(n110) );
  AOI21_X2 U53 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B(n137), .ZN(n139) );
  OAI22_X2 U54 ( .A1(n23), .A2(n15), .B1(n22), .B2(n17), .ZN(n137) );
  OAI21_X2 U55 ( .A1(n11), .A2(n24), .B(n140), .ZN(n111) );
  AOI21_X2 U56 ( .A1(dat_in_a[4]), .A2(dat_in_b[3]), .B(n138), .ZN(n140) );
  OAI22_X2 U57 ( .A1(n5), .A2(n26), .B1(n9), .B2(n25), .ZN(n138) );
  AOI21_X2 U58 ( .A1(n125), .A2(n126), .B(n127), .ZN(n143) );
  AOI22_X2 U59 ( .A1(n96), .A2(n47), .B1(dat_in_a[0]), .B2(n148), .ZN(n147) );
  AOI21_X2 U60 ( .A1(dat_in_b[5]), .A2(dat_in_a[1]), .B(n150), .ZN(n125) );
  OAI21_X2 U61 ( .A1(n21), .A2(n19), .B(n149), .ZN(n150) );
  AOI22_X2 U62 ( .A1(dat_in_b[3]), .A2(dat_in_a[3]), .B1(dat_in_b[4]), .B2(
        dat_in_a[2]), .ZN(n149) );
  AOI21_X2 U63 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .B(n151), .ZN(n126) );
  OAI22_X2 U64 ( .A1(n11), .A2(n25), .B1(n14), .B2(n24), .ZN(n151) );
  AOI22_X2 U65 ( .A1(n60), .A2(n48), .B1(n96), .B2(n58), .ZN(n154) );
  NOR3_X2 U66 ( .A1(n19), .A2(n155), .A3(n22), .ZN(n153) );
  AOI22_X2 U67 ( .A1(dat_in_a[5]), .A2(dat_in_b[0]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n37) );
  AOI21_X2 U68 ( .A1(dat_in_b[4]), .A2(dat_in_a[1]), .B(n156), .ZN(n36) );
  OAI21_X2 U69 ( .A1(n22), .A2(n19), .B(n155), .ZN(n156) );
  AOI22_X2 U70 ( .A1(dat_in_a[3]), .A2(dat_in_b[2]), .B1(dat_in_b[3]), .B2(
        dat_in_a[2]), .ZN(n155) );
  AOI21_X2 U71 ( .A1(n157), .A2(n158), .B(n6), .ZN(cpa10) );
  AOI21_X2 U72 ( .A1(n160), .A2(n161), .B(n91), .ZN(n159) );
  NOR3_X2 U73 ( .A1(n14), .A2(n165), .A3(n21), .ZN(n164) );
  NAND2_X2 U74 ( .A1(dat_in_a[3]), .A2(dat_in_b[7]), .ZN(n161) );
  NOR3_X2 U75 ( .A1(n160), .A2(n20), .A3(n15), .ZN(n92) );
  AOI21_X2 U76 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n166), .ZN(n160) );
  OAI21_X2 U77 ( .A1(n21), .A2(n14), .B(n165), .ZN(n166) );
  AOI22_X2 U78 ( .A1(dat_in_a[7]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[4]), .ZN(n165) );
  AOI22_X2 U79 ( .A1(n73), .A2(n48), .B1(n72), .B2(n60), .ZN(n169) );
  NOR3_X2 U80 ( .A1(n14), .A2(n170), .A3(n22), .ZN(n168) );
  AOI22_X2 U81 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B1(dat_in_b[7]), .B2(
        dat_in_a[2]), .ZN(n106) );
  AOI21_X2 U82 ( .A1(dat_in_a[5]), .A2(dat_in_b[4]), .B(n171), .ZN(n105) );
  OAI21_X2 U83 ( .A1(n22), .A2(n14), .B(n170), .ZN(n171) );
  AOI22_X2 U84 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n170) );
  INV_X8 U85 ( .I(n27), .ZN(dat_o[15]) );
  INV_X8 U86 ( .I(n102), .ZN(n2) );
  INV_X8 U87 ( .I(n118), .ZN(n3) );
  INV_X8 U88 ( .I(n112), .ZN(n4) );
  INV_X8 U89 ( .I(dat_in_a[7]), .ZN(n5) );
  INV_X8 U90 ( .I(n86), .ZN(n6) );
  INV_X8 U91 ( .I(n169), .ZN(n7) );
  INV_X8 U92 ( .I(n85), .ZN(n8) );
  INV_X8 U93 ( .I(dat_in_a[6]), .ZN(n9) );
  INV_X8 U94 ( .I(n127), .ZN(n10) );
  INV_X8 U95 ( .I(dat_in_a[5]), .ZN(n11) );
  INV_X8 U96 ( .I(n154), .ZN(n12) );
  INV_X8 U97 ( .I(n147), .ZN(n13) );
  INV_X8 U98 ( .I(dat_in_a[4]), .ZN(n14) );
  INV_X8 U99 ( .I(dat_in_a[3]), .ZN(n15) );
  INV_X8 U100 ( .I(n57), .ZN(n16) );
  INV_X8 U101 ( .I(dat_in_a[2]), .ZN(n17) );
  INV_X8 U102 ( .I(dat_in_a[1]), .ZN(n18) );
  INV_X8 U103 ( .I(dat_in_a[0]), .ZN(n19) );
  INV_X8 U104 ( .I(dat_in_b[7]), .ZN(n20) );
  INV_X8 U105 ( .I(dat_in_b[6]), .ZN(n21) );
  INV_X8 U106 ( .I(dat_in_b[5]), .ZN(n22) );
  INV_X8 U107 ( .I(dat_in_b[4]), .ZN(n23) );
  INV_X8 U108 ( .I(dat_in_b[2]), .ZN(n24) );
  INV_X8 U109 ( .I(dat_in_b[1]), .ZN(n25) );
  INV_X8 U110 ( .I(dat_in_b[0]), .ZN(n26) );
  OR3_X1 U111 ( .A1(n31), .A2(n32), .A3(n33), .Z(dat_o[5]) );
  XOR2_X1 U112 ( .A1(n34), .A2(n35), .Z(n33) );
  OR3_X1 U113 ( .A1(n39), .A2(n16), .A3(n40), .Z(dat_o[4]) );
  XOR2_X1 U114 ( .A1(n31), .A2(n41), .Z(n40) );
  OR3_X1 U115 ( .A1(n44), .A2(n45), .A3(n46), .Z(n32) );
  AND2_X1 U116 ( .A1(n47), .A2(n48), .Z(n46) );
  AND3_X1 U117 ( .A1(dat_in_b[3]), .A2(n50), .A3(dat_in_a[1]), .Z(n44) );
  XNOR2_X1 U118 ( .A1(n39), .A2(n54), .ZN(n53) );
  AND2_X1 U119 ( .A1(dat_in_a[0]), .A2(n60), .Z(n59) );
  NOR2_X2 U120 ( .A1(n56), .A2(n55), .ZN(n39) );
  OR2_X1 U121 ( .A1(n61), .A2(n62), .Z(dat_o[2]) );
  AND3_X1 U122 ( .A1(n52), .A2(n51), .A3(n63), .Z(n62) );
  OR2_X1 U123 ( .A1(n65), .A2(n17), .Z(n52) );
  NOR2_X2 U124 ( .A1(n61), .A2(n66), .ZN(dat_o[1]) );
  AND3_X1 U125 ( .A1(dat_in_a[1]), .A2(dat_in_b[1]), .A3(dat_o[0]), .Z(n61) );
  XOR2_X1 U126 ( .A1(n28), .A2(n29), .Z(dat_o[14]) );
  XOR2_X1 U127 ( .A1(n67), .A2(n68), .Z(dat_o[13]) );
  XNOR2_X1 U128 ( .A1(n69), .A2(n70), .ZN(n68) );
  OR2_X1 U129 ( .A1(n30), .A2(n71), .Z(n70) );
  AND2_X1 U130 ( .A1(n72), .A2(n73), .Z(n30) );
  NOR2_X2 U131 ( .A1(n74), .A2(n75), .ZN(n69) );
  XOR2_X1 U132 ( .A1(n76), .A2(n77), .Z(dat_o[12]) );
  XOR2_X1 U133 ( .A1(n78), .A2(n79), .Z(n77) );
  NOR2_X2 U134 ( .A1(n80), .A2(n81), .ZN(n75) );
  OR2_X1 U135 ( .A1(n82), .A2(n74), .Z(n81) );
  AND3_X1 U136 ( .A1(n72), .A2(dat_in_b[6]), .A3(dat_in_b[5]), .Z(n74) );
  XOR2_X1 U137 ( .A1(n87), .A2(n86), .Z(dat_o[11]) );
  OR2_X1 U138 ( .A1(n91), .A2(n92), .Z(n90) );
  XNOR2_X1 U139 ( .A1(n93), .A2(n84), .ZN(n89) );
  OR2_X1 U140 ( .A1(n94), .A2(n95), .Z(n84) );
  AND2_X1 U141 ( .A1(dat_in_b[5]), .A2(n72), .Z(n97) );
  NOR2_X2 U142 ( .A1(n26), .A2(n19), .ZN(dat_o[0]) );
  OR2_X1 U143 ( .A1(n98), .A2(n99), .Z(cpa9) );
  XOR2_X1 U144 ( .A1(n103), .A2(n104), .Z(n98) );
  XNOR2_X1 U145 ( .A1(n113), .A2(n114), .ZN(n108) );
  OR4_X1 U146 ( .A1(n115), .A2(n116), .A3(n117), .A4(n3), .Z(n102) );
  NOR2_X2 U147 ( .A1(n120), .A2(n23), .ZN(n119) );
  AND3_X1 U148 ( .A1(dat_in_a[3]), .A2(n121), .A3(dat_in_b[5]), .Z(n117) );
  AND3_X1 U149 ( .A1(dat_in_a[5]), .A2(n122), .A3(dat_in_b[3]), .Z(n116) );
  AND3_X1 U150 ( .A1(dat_in_a[2]), .A2(n73), .A3(dat_in_a[1]), .Z(n115) );
  NOR2_X2 U151 ( .A1(n101), .A2(n100), .ZN(n113) );
  OR2_X1 U152 ( .A1(n123), .A2(n124), .Z(cpa7) );
  XNOR2_X1 U153 ( .A1(n128), .A2(n129), .ZN(n123) );
  OR4_X1 U154 ( .A1(n130), .A2(n131), .A3(n132), .A4(n133), .Z(n112) );
  OR3_X1 U155 ( .A1(n134), .A2(n135), .A3(n136), .Z(n133) );
  AND2_X1 U156 ( .A1(n58), .A2(n72), .Z(n136) );
  AND3_X1 U157 ( .A1(dat_in_a[0]), .A2(n137), .A3(dat_in_b[7]), .Z(n135) );
  AND3_X1 U158 ( .A1(dat_in_b[3]), .A2(n138), .A3(dat_in_a[4]), .Z(n134) );
  AND3_X1 U159 ( .A1(dat_in_b[4]), .A2(dat_in_b[5]), .A3(n48), .Z(n130) );
  AND2_X1 U160 ( .A1(n111), .A2(n110), .Z(n128) );
  OR3_X1 U161 ( .A1(n34), .A2(n38), .A3(n141), .Z(cpa6) );
  XOR2_X1 U162 ( .A1(n142), .A2(n143), .Z(n141) );
  OR4_X1 U163 ( .A1(n144), .A2(n145), .A3(n146), .A4(n13), .Z(n127) );
  NOR2_X2 U164 ( .A1(n149), .A2(n21), .ZN(n148) );
  AND2_X1 U165 ( .A1(dat_in_b[1]), .A2(dat_in_b[2]), .Z(n47) );
  AND3_X1 U166 ( .A1(dat_in_b[5]), .A2(n150), .A3(dat_in_a[1]), .Z(n146) );
  AND3_X1 U167 ( .A1(dat_in_b[0]), .A2(n151), .A3(dat_in_a[6]), .Z(n145) );
  AND3_X1 U168 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n48), .Z(n144) );
  NOR2_X2 U169 ( .A1(n126), .A2(n125), .ZN(n142) );
  OR3_X1 U170 ( .A1(n152), .A2(n153), .A3(n12), .Z(n38) );
  AND2_X1 U171 ( .A1(dat_in_b[0]), .A2(dat_in_b[1]), .Z(n58) );
  AND2_X1 U172 ( .A1(dat_in_a[4]), .A2(dat_in_a[5]), .Z(n96) );
  AND3_X1 U173 ( .A1(dat_in_b[4]), .A2(n156), .A3(dat_in_a[1]), .Z(n152) );
  NOR2_X2 U174 ( .A1(n36), .A2(n37), .ZN(n34) );
  OR2_X1 U175 ( .A1(n157), .A2(n158), .Z(n86) );
  XNOR2_X1 U176 ( .A1(n92), .A2(n159), .ZN(n158) );
  OR3_X1 U177 ( .A1(n162), .A2(n163), .A3(n164), .Z(n91) );
  AND3_X1 U178 ( .A1(dat_in_b[5]), .A2(n166), .A3(dat_in_a[5]), .Z(n163) );
  AND3_X1 U179 ( .A1(dat_in_b[4]), .A2(n72), .A3(dat_in_b[3]), .Z(n162) );
  NOR2_X2 U180 ( .A1(n103), .A2(n107), .ZN(n157) );
  OR3_X1 U181 ( .A1(n167), .A2(n168), .A3(n7), .Z(n107) );
  AND2_X1 U182 ( .A1(dat_in_b[2]), .A2(dat_in_b[3]), .Z(n60) );
  AND2_X1 U183 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .Z(n72) );
  AND2_X1 U184 ( .A1(dat_in_a[2]), .A2(dat_in_a[3]), .Z(n48) );
  AND2_X1 U185 ( .A1(dat_in_b[7]), .A2(dat_in_b[6]), .Z(n73) );
  AND3_X1 U186 ( .A1(dat_in_a[5]), .A2(n171), .A3(dat_in_b[4]), .Z(n167) );
  NOR2_X2 U187 ( .A1(n105), .A2(n106), .ZN(n103) );
endmodule

