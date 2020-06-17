/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 16:36:22 2020
/////////////////////////////////////////////////////////////


module ERCM8_4 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa6, cpa7, cpa8, cpa9, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;
  assign dat_o[8] = cpa8;
  assign dat_o[9] = cpa9;

  AOI21_X2 U2 ( .A1(n28), .A2(n29), .B(n30), .ZN(n27) );
  AOI21_X2 U3 ( .A1(n36), .A2(n37), .B(n38), .ZN(n35) );
  AOI21_X2 U4 ( .A1(n43), .A2(n44), .B(n32), .ZN(n42) );
  NOR3_X2 U5 ( .A1(n17), .A2(n49), .A3(n22), .ZN(n46) );
  NOR3_X2 U6 ( .A1(n43), .A2(n12), .A3(n26), .ZN(n31) );
  AOI21_X2 U7 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n50), .ZN(n43) );
  OAI21_X2 U8 ( .A1(n22), .A2(n17), .B(n49), .ZN(n50) );
  AOI22_X2 U9 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n49) );
  NAND3_X2 U10 ( .A1(n51), .A2(n52), .A3(n53), .ZN(dat_o[3]) );
  AOI21_X2 U11 ( .A1(n55), .A2(n56), .B(n40), .ZN(n54) );
  OAI22_X2 U12 ( .A1(n13), .A2(n24), .B1(n17), .B2(n57), .ZN(n40) );
  AOI22_X2 U13 ( .A1(dat_in_b[2]), .A2(dat_in_a[1]), .B1(dat_in_b[3]), .B2(
        dat_in_a[0]), .ZN(n55) );
  AOI22_X2 U14 ( .A1(dat_in_a[3]), .A2(dat_in_b[0]), .B1(dat_in_a[2]), .B2(
        dat_in_b[1]), .ZN(n56) );
  OAI21_X2 U15 ( .A1(n15), .A2(n26), .B(n62), .ZN(n61) );
  AOI22_X2 U16 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_b[1]), .B2(
        dat_in_a[1]), .ZN(n62) );
  AOI22_X2 U17 ( .A1(n64), .A2(dat_in_a[1]), .B1(dat_o[0]), .B2(dat_in_b[2]), 
        .ZN(n63) );
  AOI22_X2 U18 ( .A1(dat_in_a[0]), .A2(dat_in_b[1]), .B1(dat_in_b[0]), .B2(
        dat_in_a[1]), .ZN(n65) );
  OAI22_X2 U19 ( .A1(n66), .A2(n67), .B1(n68), .B2(n69), .ZN(n28) );
  NOR3_X2 U20 ( .A1(n30), .A2(n7), .A3(n19), .ZN(n29) );
  AOI22_X2 U21 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n70) );
  AOI22_X2 U22 ( .A1(n2), .A2(n73), .B1(n74), .B2(n75), .ZN(n66) );
  AOI21_X2 U23 ( .A1(n77), .A2(n78), .B(n72), .ZN(n75) );
  NOR3_X2 U24 ( .A1(n5), .A2(n20), .A3(n21), .ZN(n71) );
  AOI21_X2 U25 ( .A1(dat_in_b[7]), .A2(dat_in_a[5]), .B(n80), .ZN(n79) );
  NAND3_X2 U26 ( .A1(n80), .A2(dat_in_b[7]), .A3(dat_in_a[5]), .ZN(n77) );
  OAI22_X2 U27 ( .A1(n7), .A2(n21), .B1(n8), .B2(n20), .ZN(n80) );
  NAND2_X2 U28 ( .A1(n81), .A2(n82), .ZN(n74) );
  AOI21_X2 U29 ( .A1(n83), .A2(n84), .B(n85), .ZN(n76) );
  AOI21_X2 U30 ( .A1(n86), .A2(n87), .B(n85), .ZN(n84) );
  AOI21_X2 U31 ( .A1(n92), .A2(n91), .B(n6), .ZN(n90) );
  AOI22_X2 U32 ( .A1(n93), .A2(n94), .B1(dat_in_b[4]), .B2(n95), .ZN(n82) );
  AOI22_X2 U33 ( .A1(dat_in_a[7]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n91) );
  AOI22_X2 U34 ( .A1(dat_in_b[6]), .A2(dat_in_a[5]), .B1(dat_in_b[7]), .B2(
        dat_in_a[4]), .ZN(n92) );
  OAI21_X2 U35 ( .A1(n97), .A2(n98), .B(n99), .ZN(n83) );
  NAND2_X2 U36 ( .A1(n100), .A2(n101), .ZN(n97) );
  OAI21_X2 U37 ( .A1(n102), .A2(n103), .B(n99), .ZN(n98) );
  NAND2_X2 U38 ( .A1(n103), .A2(n102), .ZN(n99) );
  AOI21_X2 U39 ( .A1(n107), .A2(n108), .B(n88), .ZN(n106) );
  NOR3_X2 U40 ( .A1(n12), .A2(n112), .A3(n20), .ZN(n111) );
  NOR3_X2 U41 ( .A1(n107), .A2(n19), .A3(n14), .ZN(n89) );
  AOI21_X2 U42 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n113), .ZN(n107) );
  OAI21_X2 U43 ( .A1(n20), .A2(n12), .B(n112), .ZN(n113) );
  AOI22_X2 U44 ( .A1(dat_in_a[7]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[4]), .ZN(n112) );
  AOI21_X2 U45 ( .A1(n115), .A2(n116), .B(n105), .ZN(n114) );
  OAI22_X2 U46 ( .A1(n18), .A2(n13), .B1(n5), .B2(n58), .ZN(n119) );
  NOR3_X2 U47 ( .A1(n12), .A2(n120), .A3(n21), .ZN(n118) );
  AOI22_X2 U48 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B1(dat_in_b[7]), .B2(
        dat_in_a[2]), .ZN(n116) );
  AOI21_X2 U49 ( .A1(dat_in_a[5]), .A2(dat_in_b[4]), .B(n121), .ZN(n115) );
  OAI21_X2 U50 ( .A1(n21), .A2(n12), .B(n120), .ZN(n121) );
  AOI22_X2 U51 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n120) );
  OAI21_X2 U52 ( .A1(n122), .A2(n123), .B(n124), .ZN(n100) );
  NAND2_X2 U53 ( .A1(n125), .A2(n126), .ZN(cpa8) );
  AOI21_X2 U54 ( .A1(n127), .A2(n128), .B(n4), .ZN(n126) );
  AOI21_X2 U55 ( .A1(n122), .A2(n123), .B(n3), .ZN(n131) );
  NOR4_X2 U56 ( .A1(n132), .A2(n133), .A3(n134), .A4(n135), .ZN(n124) );
  OAI22_X2 U57 ( .A1(n5), .A2(n48), .B1(n12), .B2(n136), .ZN(n135) );
  NOR3_X2 U58 ( .A1(n15), .A2(n18), .A3(n16), .ZN(n132) );
  AOI21_X2 U59 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B(n138), .ZN(n122) );
  OAI22_X2 U60 ( .A1(n20), .A2(n15), .B1(n19), .B2(n16), .ZN(n138) );
  AOI21_X2 U61 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n139), .ZN(n123) );
  OAI21_X2 U62 ( .A1(n22), .A2(n12), .B(n137), .ZN(n139) );
  AOI22_X2 U63 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n137) );
  OAI21_X2 U64 ( .A1(n142), .A2(n143), .B(n144), .ZN(n141) );
  OAI21_X2 U65 ( .A1(n127), .A2(n128), .B(n129), .ZN(n146) );
  NOR4_X2 U66 ( .A1(n147), .A2(n148), .A3(n149), .A4(n150), .ZN(n129) );
  NOR3_X2 U67 ( .A1(n20), .A2(n156), .A3(n16), .ZN(n149) );
  NOR3_X2 U68 ( .A1(n11), .A2(n157), .A3(n23), .ZN(n148) );
  OAI21_X2 U69 ( .A1(n20), .A2(n16), .B(n156), .ZN(n127) );
  AOI21_X2 U70 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B(n154), .ZN(n156) );
  OAI22_X2 U71 ( .A1(n22), .A2(n14), .B1(n21), .B2(n15), .ZN(n154) );
  OAI21_X2 U72 ( .A1(n11), .A2(n23), .B(n157), .ZN(n128) );
  AOI21_X2 U73 ( .A1(dat_in_a[4]), .A2(dat_in_b[3]), .B(n155), .ZN(n157) );
  OAI22_X2 U74 ( .A1(n7), .A2(n26), .B1(n8), .B2(n25), .ZN(n155) );
  AOI21_X2 U75 ( .A1(n142), .A2(n143), .B(n9), .ZN(n161) );
  NOR4_X2 U76 ( .A1(n162), .A2(n163), .A3(n164), .A4(n165), .ZN(n144) );
  OAI22_X2 U77 ( .A1(n10), .A2(n48), .B1(n17), .B2(n166), .ZN(n165) );
  NAND2_X2 U78 ( .A1(dat_in_b[1]), .A2(dat_in_b[2]), .ZN(n48) );
  AOI21_X2 U79 ( .A1(dat_in_b[5]), .A2(dat_in_a[1]), .B(n168), .ZN(n142) );
  OAI21_X2 U80 ( .A1(n20), .A2(n17), .B(n167), .ZN(n168) );
  AOI22_X2 U81 ( .A1(dat_in_b[3]), .A2(dat_in_a[3]), .B1(dat_in_b[4]), .B2(
        dat_in_a[2]), .ZN(n167) );
  AOI21_X2 U82 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .B(n169), .ZN(n143) );
  OAI22_X2 U83 ( .A1(n11), .A2(n25), .B1(n12), .B2(n23), .ZN(n169) );
  OAI22_X2 U84 ( .A1(n58), .A2(n13), .B1(n10), .B2(n24), .ZN(n172) );
  NAND2_X2 U85 ( .A1(dat_in_b[2]), .A2(dat_in_b[3]), .ZN(n58) );
  NOR3_X2 U86 ( .A1(n17), .A2(n173), .A3(n21), .ZN(n171) );
  AOI22_X2 U87 ( .A1(dat_in_a[5]), .A2(dat_in_b[0]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n37) );
  AOI21_X2 U88 ( .A1(dat_in_b[4]), .A2(dat_in_a[1]), .B(n174), .ZN(n36) );
  OAI21_X2 U89 ( .A1(n21), .A2(n17), .B(n173), .ZN(n174) );
  AOI22_X2 U90 ( .A1(dat_in_a[3]), .A2(dat_in_b[2]), .B1(dat_in_b[3]), .B2(
        dat_in_a[2]), .ZN(n173) );
  INV_X8 U91 ( .I(n27), .ZN(dat_o[15]) );
  INV_X8 U92 ( .I(n76), .ZN(n2) );
  INV_X8 U93 ( .I(n124), .ZN(n3) );
  INV_X8 U94 ( .I(n129), .ZN(n4) );
  INV_X8 U95 ( .I(n96), .ZN(n5) );
  INV_X8 U96 ( .I(n82), .ZN(n6) );
  INV_X8 U97 ( .I(dat_in_a[7]), .ZN(n7) );
  INV_X8 U98 ( .I(dat_in_a[6]), .ZN(n8) );
  INV_X8 U99 ( .I(n144), .ZN(n9) );
  INV_X8 U100 ( .I(n94), .ZN(n10) );
  INV_X8 U101 ( .I(dat_in_a[5]), .ZN(n11) );
  INV_X8 U103 ( .I(n158), .ZN(n13) );
  INV_X8 U104 ( .I(dat_in_a[3]), .ZN(n14) );
  INV_X8 U105 ( .I(dat_in_a[2]), .ZN(n15) );
  INV_X8 U106 ( .I(dat_in_a[1]), .ZN(n16) );
  INV_X8 U107 ( .I(dat_in_a[0]), .ZN(n17) );
  INV_X8 U108 ( .I(n93), .ZN(n18) );
  INV_X8 U109 ( .I(dat_in_b[7]), .ZN(n19) );
  INV_X8 U111 ( .I(dat_in_b[5]), .ZN(n21) );
  INV_X8 U112 ( .I(dat_in_b[4]), .ZN(n22) );
  INV_X8 U113 ( .I(dat_in_b[2]), .ZN(n23) );
  INV_X8 U114 ( .I(n64), .ZN(n24) );
  INV_X8 U115 ( .I(dat_in_b[1]), .ZN(n25) );
  INV_X8 U116 ( .I(dat_in_b[0]), .ZN(n26) );
  OR3_X1 U117 ( .A1(n31), .A2(n32), .A3(n33), .Z(dat_o[5]) );
  XOR2_X1 U118 ( .A1(n34), .A2(n35), .Z(n33) );
  OR3_X1 U119 ( .A1(n39), .A2(n40), .A3(n41), .Z(dat_o[4]) );
  XOR2_X1 U120 ( .A1(n31), .A2(n42), .Z(n41) );
  OR3_X1 U121 ( .A1(n45), .A2(n46), .A3(n47), .Z(n32) );
  NOR2_X2 U122 ( .A1(n48), .A2(n13), .ZN(n47) );
  AND3_X1 U123 ( .A1(dat_in_b[3]), .A2(n50), .A3(dat_in_a[1]), .Z(n45) );
  OR2_X1 U124 ( .A1(n26), .A2(n12), .Z(n44) );
  XNOR2_X1 U125 ( .A1(n39), .A2(n54), .ZN(n53) );
  OR2_X1 U126 ( .A1(n16), .A2(n58), .Z(n57) );
  NOR2_X2 U127 ( .A1(n56), .A2(n55), .ZN(n39) );
  OR2_X1 U128 ( .A1(n59), .A2(n60), .Z(dat_o[2]) );
  AND3_X1 U129 ( .A1(n52), .A2(n51), .A3(n61), .Z(n60) );
  OR3_X1 U130 ( .A1(n48), .A2(n16), .A3(n17), .Z(n51) );
  OR2_X1 U131 ( .A1(n63), .A2(n15), .Z(n52) );
  NOR2_X2 U132 ( .A1(n59), .A2(n65), .ZN(dat_o[1]) );
  AND3_X1 U133 ( .A1(dat_in_b[1]), .A2(dat_in_a[1]), .A3(dat_o[0]), .Z(n59) );
  XOR2_X1 U134 ( .A1(n29), .A2(n28), .Z(dat_o[14]) );
  XOR2_X1 U135 ( .A1(n66), .A2(n67), .Z(dat_o[13]) );
  XNOR2_X1 U136 ( .A1(n68), .A2(n69), .ZN(n67) );
  OR2_X1 U137 ( .A1(n30), .A2(n70), .Z(n69) );
  NOR2_X2 U138 ( .A1(n5), .A2(n18), .ZN(n30) );
  NOR2_X2 U139 ( .A1(n71), .A2(n72), .ZN(n68) );
  XNOR2_X1 U140 ( .A1(n76), .A2(n73), .ZN(dat_o[12]) );
  XOR2_X1 U141 ( .A1(n74), .A2(n75), .Z(n73) );
  NOR2_X2 U142 ( .A1(n77), .A2(n78), .ZN(n72) );
  OR2_X1 U143 ( .A1(n79), .A2(n71), .Z(n78) );
  XOR2_X1 U144 ( .A1(n83), .A2(n84), .Z(dat_o[11]) );
  NOR2_X2 U145 ( .A1(n87), .A2(n86), .ZN(n85) );
  NOR2_X2 U146 ( .A1(n88), .A2(n89), .ZN(n87) );
  XOR2_X1 U147 ( .A1(n90), .A2(n81), .Z(n86) );
  OR2_X1 U148 ( .A1(n91), .A2(n92), .Z(n81) );
  AND2_X1 U149 ( .A1(dat_in_b[5]), .A2(n96), .Z(n95) );
  XOR2_X1 U150 ( .A1(n98), .A2(n97), .Z(dat_o[10]) );
  OR2_X1 U151 ( .A1(n104), .A2(n105), .Z(n103) );
  XOR2_X1 U152 ( .A1(n89), .A2(n106), .Z(n102) );
  OR3_X1 U153 ( .A1(n109), .A2(n110), .A3(n111), .Z(n88) );
  AND3_X1 U154 ( .A1(dat_in_b[5]), .A2(n113), .A3(dat_in_a[5]), .Z(n110) );
  AND3_X1 U155 ( .A1(dat_in_b[4]), .A2(n96), .A3(dat_in_b[3]), .Z(n109) );
  OR2_X1 U156 ( .A1(n14), .A2(n19), .Z(n108) );
  AND2_X1 U157 ( .A1(dat_in_b[0]), .A2(dat_in_a[0]), .Z(dat_o[0]) );
  XOR2_X1 U158 ( .A1(n100), .A2(n101), .Z(cpa9) );
  XOR2_X1 U159 ( .A1(n104), .A2(n114), .Z(n101) );
  OR3_X1 U160 ( .A1(n117), .A2(n118), .A3(n119), .Z(n105) );
  AND3_X1 U161 ( .A1(dat_in_a[5]), .A2(n121), .A3(dat_in_b[4]), .Z(n117) );
  NOR2_X2 U162 ( .A1(n115), .A2(n116), .ZN(n104) );
  XNOR2_X1 U163 ( .A1(n130), .A2(n131), .ZN(n125) );
  OR2_X1 U164 ( .A1(n137), .A2(n22), .Z(n136) );
  AND3_X1 U165 ( .A1(dat_in_a[3]), .A2(n138), .A3(dat_in_b[5]), .Z(n134) );
  AND3_X1 U166 ( .A1(dat_in_a[5]), .A2(n139), .A3(dat_in_b[3]), .Z(n133) );
  NOR2_X2 U167 ( .A1(n19), .A2(n20), .ZN(n93) );
  NOR2_X2 U168 ( .A1(n123), .A2(n122), .ZN(n130) );
  OR2_X1 U169 ( .A1(n140), .A2(n141), .Z(cpa7) );
  XNOR2_X1 U170 ( .A1(n145), .A2(n146), .ZN(n140) );
  OR3_X1 U171 ( .A1(n151), .A2(n152), .A3(n153), .Z(n150) );
  NOR2_X2 U172 ( .A1(n24), .A2(n5), .ZN(n153) );
  NOR2_X2 U173 ( .A1(n7), .A2(n8), .ZN(n96) );
  AND3_X1 U174 ( .A1(dat_in_a[0]), .A2(n154), .A3(dat_in_b[7]), .Z(n152) );
  AND3_X1 U175 ( .A1(dat_in_b[3]), .A2(n155), .A3(dat_in_a[4]), .Z(n151) );
  AND3_X1 U176 ( .A1(dat_in_b[4]), .A2(dat_in_b[5]), .A3(n158), .Z(n147) );
  AND2_X1 U177 ( .A1(n128), .A2(n127), .Z(n145) );
  OR3_X1 U178 ( .A1(n34), .A2(n38), .A3(n159), .Z(cpa6) );
  XOR2_X1 U179 ( .A1(n160), .A2(n161), .Z(n159) );
  OR2_X1 U180 ( .A1(n167), .A2(n20), .Z(n166) );
  AND3_X1 U181 ( .A1(dat_in_b[5]), .A2(n168), .A3(dat_in_a[1]), .Z(n164) );
  AND3_X1 U182 ( .A1(dat_in_b[0]), .A2(n169), .A3(dat_in_a[6]), .Z(n163) );
  AND3_X1 U183 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n158), .Z(n162) );
  NOR2_X2 U184 ( .A1(n143), .A2(n142), .ZN(n160) );
  OR3_X1 U185 ( .A1(n170), .A2(n171), .A3(n172), .Z(n38) );
  NOR2_X2 U186 ( .A1(n26), .A2(n25), .ZN(n64) );
  NOR2_X2 U187 ( .A1(n12), .A2(n11), .ZN(n94) );
  NOR2_X2 U188 ( .A1(n15), .A2(n14), .ZN(n158) );
  AND3_X1 U189 ( .A1(dat_in_b[4]), .A2(n174), .A3(dat_in_a[1]), .Z(n170) );
  NOR2_X2 U190 ( .A1(n36), .A2(n37), .ZN(n34) );
  INV_X16 U191 ( .I(dat_in_b[6]), .ZN(n20) );
  INV_X16 U192 ( .I(dat_in_a[4]), .ZN(n12) );
endmodule

