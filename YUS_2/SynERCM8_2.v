/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 16:43:57 2020
/////////////////////////////////////////////////////////////


module ERCM8_2 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa6, cpa7, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;

  OAI21_X2 U2 ( .A1(n24), .A2(n25), .B(n26), .ZN(dat_o[15]) );
  NAND2_X2 U3 ( .A1(n31), .A2(n32), .ZN(n29) );
  AOI21_X2 U4 ( .A1(n38), .A2(n39), .B(n40), .ZN(n37) );
  AOI21_X2 U5 ( .A1(n45), .A2(n46), .B(n34), .ZN(n44) );
  NOR3_X2 U6 ( .A1(n14), .A2(n52), .A3(n18), .ZN(n48) );
  NAND2_X2 U7 ( .A1(dat_in_b[0]), .A2(dat_in_a[4]), .ZN(n46) );
  NOR3_X2 U8 ( .A1(n45), .A2(n9), .A3(n23), .ZN(n33) );
  AOI21_X2 U9 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n53), .ZN(n45) );
  OAI21_X2 U10 ( .A1(n18), .A2(n14), .B(n52), .ZN(n53) );
  AOI22_X2 U11 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n52) );
  AOI21_X2 U12 ( .A1(n58), .A2(n59), .B(n42), .ZN(n57) );
  OAI22_X2 U13 ( .A1(n51), .A2(n21), .B1(n13), .B2(n60), .ZN(n42) );
  AOI22_X2 U14 ( .A1(dat_in_b[2]), .A2(dat_in_a[1]), .B1(dat_in_b[3]), .B2(
        dat_in_a[0]), .ZN(n58) );
  AOI22_X2 U15 ( .A1(dat_in_a[3]), .A2(dat_in_b[0]), .B1(dat_in_a[2]), .B2(
        dat_in_b[1]), .ZN(n59) );
  NOR3_X2 U16 ( .A1(n55), .A2(n54), .A3(n64), .ZN(n63) );
  AOI21_X2 U17 ( .A1(dat_in_a[2]), .A2(dat_in_b[0]), .B(n65), .ZN(n64) );
  OAI22_X2 U18 ( .A1(n14), .A2(n20), .B1(n22), .B2(n13), .ZN(n65) );
  NOR3_X2 U19 ( .A1(n13), .A2(n14), .A3(n50), .ZN(n54) );
  AOI22_X2 U20 ( .A1(n67), .A2(dat_in_a[1]), .B1(dat_o[0]), .B2(dat_in_b[2]), 
        .ZN(n66) );
  AOI22_X2 U21 ( .A1(dat_in_b[1]), .A2(dat_in_a[0]), .B1(dat_in_b[0]), .B2(
        dat_in_a[1]), .ZN(n68) );
  AOI22_X2 U22 ( .A1(n1), .A2(n69), .B1(n70), .B2(n71), .ZN(n24) );
  NAND3_X2 U23 ( .A1(n26), .A2(dat_in_a[7]), .A3(dat_in_b[7]), .ZN(n25) );
  OAI22_X2 U24 ( .A1(n15), .A2(n6), .B1(n16), .B2(n5), .ZN(n73) );
  AOI22_X2 U25 ( .A1(n78), .A2(n79), .B1(n80), .B2(n81), .ZN(n72) );
  AOI21_X2 U26 ( .A1(n82), .A2(n83), .B(n77), .ZN(n81) );
  NOR3_X2 U27 ( .A1(n74), .A2(n16), .A3(n17), .ZN(n76) );
  AOI21_X2 U28 ( .A1(dat_in_b[7]), .A2(dat_in_a[5]), .B(n85), .ZN(n84) );
  NAND3_X2 U29 ( .A1(n85), .A2(dat_in_b[7]), .A3(dat_in_a[5]), .ZN(n82) );
  OAI22_X2 U30 ( .A1(n5), .A2(n17), .B1(n6), .B2(n16), .ZN(n85) );
  OAI21_X2 U31 ( .A1(n88), .A2(n89), .B(n90), .ZN(n78) );
  AOI21_X2 U32 ( .A1(n91), .A2(n92), .B(n93), .ZN(n88) );
  OAI21_X2 U33 ( .A1(n94), .A2(n95), .B(n90), .ZN(n89) );
  NAND2_X2 U34 ( .A1(n95), .A2(n94), .ZN(n90) );
  NAND2_X2 U35 ( .A1(n96), .A2(n97), .ZN(n95) );
  AOI21_X2 U36 ( .A1(n100), .A2(n99), .B(n87), .ZN(n98) );
  OAI22_X2 U37 ( .A1(n75), .A2(n101), .B1(n18), .B2(n102), .ZN(n87) );
  AOI22_X2 U38 ( .A1(dat_in_a[7]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n99) );
  AOI22_X2 U39 ( .A1(dat_in_b[6]), .A2(dat_in_a[5]), .B1(dat_in_b[7]), .B2(
        dat_in_a[4]), .ZN(n100) );
  OAI22_X2 U40 ( .A1(n103), .A2(n104), .B1(n27), .B2(n28), .ZN(n91) );
  AOI22_X2 U41 ( .A1(n3), .A2(n105), .B1(n30), .B2(n106), .ZN(n27) );
  AOI21_X2 U42 ( .A1(n109), .A2(n4), .B(n110), .ZN(n108) );
  NAND2_X2 U43 ( .A1(n111), .A2(n10), .ZN(n107) );
  AOI21_X2 U44 ( .A1(n113), .A2(n114), .B(n115), .ZN(n112) );
  AOI21_X2 U45 ( .A1(n118), .A2(n119), .B(n120), .ZN(n117) );
  AOI21_X2 U46 ( .A1(n10), .A2(n111), .B(n110), .ZN(n103) );
  OAI22_X2 U47 ( .A1(n74), .A2(n50), .B1(n9), .B2(n125), .ZN(n124) );
  NAND2_X2 U48 ( .A1(n126), .A2(dat_in_b[4]), .ZN(n125) );
  NOR3_X2 U49 ( .A1(n8), .A2(n128), .A3(n19), .ZN(n122) );
  NOR3_X2 U50 ( .A1(n12), .A2(n75), .A3(n13), .ZN(n121) );
  OAI21_X2 U51 ( .A1(n8), .A2(n19), .B(n128), .ZN(n111) );
  AOI21_X2 U52 ( .A1(dat_in_b[4]), .A2(dat_in_a[4]), .B(n126), .ZN(n128) );
  OAI22_X2 U53 ( .A1(n5), .A2(n22), .B1(n6), .B2(n20), .ZN(n126) );
  AOI21_X2 U54 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B(n127), .ZN(n109) );
  OAI22_X2 U55 ( .A1(n16), .A2(n12), .B1(n15), .B2(n13), .ZN(n127) );
  AOI21_X2 U56 ( .A1(n129), .A2(n130), .B(n93), .ZN(n92) );
  OAI22_X2 U57 ( .A1(n75), .A2(n51), .B1(n74), .B2(n61), .ZN(n133) );
  NAND2_X2 U58 ( .A1(dat_in_b[7]), .A2(dat_in_b[6]), .ZN(n75) );
  NOR3_X2 U59 ( .A1(n9), .A2(n134), .A3(n17), .ZN(n132) );
  AOI22_X2 U60 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B1(dat_in_b[7]), .B2(
        dat_in_a[2]), .ZN(n119) );
  AOI21_X2 U61 ( .A1(dat_in_a[5]), .A2(dat_in_b[4]), .B(n135), .ZN(n118) );
  OAI21_X2 U62 ( .A1(n17), .A2(n9), .B(n134), .ZN(n135) );
  AOI22_X2 U63 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n134) );
  OAI21_X2 U64 ( .A1(n137), .A2(n138), .B(n96), .ZN(n136) );
  NOR3_X2 U65 ( .A1(n139), .A2(n140), .A3(n141), .ZN(n96) );
  NOR3_X2 U66 ( .A1(n17), .A2(n143), .A3(n8), .ZN(n140) );
  NOR3_X2 U67 ( .A1(n18), .A2(n74), .A3(n19), .ZN(n139) );
  NAND3_X2 U68 ( .A1(n137), .A2(dat_in_b[7]), .A3(dat_in_a[3]), .ZN(n97) );
  OAI21_X2 U69 ( .A1(n17), .A2(n8), .B(n143), .ZN(n137) );
  AOI21_X2 U70 ( .A1(dat_in_b[6]), .A2(dat_in_a[4]), .B(n142), .ZN(n143) );
  OAI22_X2 U71 ( .A1(n5), .A2(n19), .B1(n6), .B2(n18), .ZN(n142) );
  OAI21_X2 U72 ( .A1(n113), .A2(n114), .B(n2), .ZN(n145) );
  NAND2_X2 U73 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .ZN(n74) );
  NOR3_X2 U74 ( .A1(n14), .A2(n153), .A3(n15), .ZN(n151) );
  NOR3_X2 U75 ( .A1(n16), .A2(n155), .A3(n13), .ZN(n148) );
  NOR3_X2 U76 ( .A1(n8), .A2(n156), .A3(n20), .ZN(n147) );
  NOR3_X2 U77 ( .A1(n18), .A2(n17), .A3(n51), .ZN(n146) );
  NAND2_X2 U78 ( .A1(n114), .A2(n113), .ZN(n144) );
  OAI21_X2 U79 ( .A1(n16), .A2(n13), .B(n155), .ZN(n113) );
  AOI21_X2 U80 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B(n11), .ZN(n155) );
  AOI22_X2 U81 ( .A1(dat_in_b[4]), .A2(dat_in_a[3]), .B1(dat_in_b[5]), .B2(
        dat_in_a[2]), .ZN(n153) );
  OAI21_X2 U82 ( .A1(n8), .A2(n20), .B(n156), .ZN(n114) );
  AOI21_X2 U83 ( .A1(dat_in_a[4]), .A2(dat_in_b[3]), .B(n154), .ZN(n156) );
  OAI22_X2 U84 ( .A1(n5), .A2(n23), .B1(n6), .B2(n22), .ZN(n154) );
  OAI21_X2 U85 ( .A1(n157), .A2(n158), .B(n7), .ZN(n31) );
  AOI21_X2 U86 ( .A1(n157), .A2(n158), .B(n159), .ZN(n162) );
  OAI22_X2 U87 ( .A1(n101), .A2(n50), .B1(n14), .B2(n167), .ZN(n166) );
  NOR3_X2 U88 ( .A1(n19), .A2(n18), .A3(n51), .ZN(n163) );
  AOI21_X2 U89 ( .A1(dat_in_b[5]), .A2(dat_in_a[1]), .B(n169), .ZN(n157) );
  OAI21_X2 U90 ( .A1(n16), .A2(n14), .B(n168), .ZN(n169) );
  AOI22_X2 U91 ( .A1(dat_in_b[3]), .A2(dat_in_a[3]), .B1(dat_in_b[4]), .B2(
        dat_in_a[2]), .ZN(n168) );
  AOI21_X2 U92 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .B(n170), .ZN(n158) );
  OAI22_X2 U93 ( .A1(n8), .A2(n22), .B1(n9), .B2(n20), .ZN(n170) );
  OAI22_X2 U94 ( .A1(n61), .A2(n51), .B1(n101), .B2(n21), .ZN(n173) );
  NAND2_X2 U95 ( .A1(dat_in_a[2]), .A2(dat_in_a[3]), .ZN(n51) );
  NAND2_X2 U96 ( .A1(dat_in_b[2]), .A2(dat_in_b[3]), .ZN(n61) );
  NOR3_X2 U97 ( .A1(n14), .A2(n174), .A3(n17), .ZN(n172) );
  AOI22_X2 U98 ( .A1(dat_in_a[5]), .A2(dat_in_b[0]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n39) );
  AOI21_X2 U99 ( .A1(dat_in_b[4]), .A2(dat_in_a[1]), .B(n175), .ZN(n38) );
  OAI21_X2 U100 ( .A1(n17), .A2(n14), .B(n174), .ZN(n175) );
  AOI22_X2 U101 ( .A1(dat_in_a[3]), .A2(dat_in_b[2]), .B1(dat_in_b[3]), .B2(
        dat_in_a[2]), .ZN(n174) );
  INV_X8 U102 ( .I(n72), .ZN(n1) );
  INV_X8 U103 ( .I(n115), .ZN(n2) );
  INV_X8 U104 ( .I(n112), .ZN(n3) );
  INV_X8 U105 ( .I(n111), .ZN(n4) );
  INV_X8 U106 ( .I(dat_in_a[7]), .ZN(n5) );
  INV_X8 U107 ( .I(dat_in_a[6]), .ZN(n6) );
  INV_X8 U108 ( .I(n159), .ZN(n7) );
  INV_X8 U109 ( .I(dat_in_a[5]), .ZN(n8) );
  INV_X8 U110 ( .I(dat_in_a[4]), .ZN(n9) );
  INV_X8 U111 ( .I(n109), .ZN(n10) );
  INV_X8 U112 ( .I(n153), .ZN(n11) );
  INV_X8 U113 ( .I(dat_in_a[2]), .ZN(n12) );
  INV_X8 U114 ( .I(dat_in_a[1]), .ZN(n13) );
  INV_X8 U116 ( .I(dat_in_b[7]), .ZN(n15) );
  INV_X8 U117 ( .I(dat_in_b[6]), .ZN(n16) );
  INV_X8 U119 ( .I(dat_in_b[4]), .ZN(n18) );
  INV_X8 U120 ( .I(dat_in_b[3]), .ZN(n19) );
  INV_X8 U121 ( .I(dat_in_b[2]), .ZN(n20) );
  INV_X8 U122 ( .I(n67), .ZN(n21) );
  INV_X8 U123 ( .I(dat_in_b[1]), .ZN(n22) );
  INV_X8 U124 ( .I(dat_in_b[0]), .ZN(n23) );
  XOR2_X1 U125 ( .A1(n27), .A2(n28), .Z(dat_o[9]) );
  XNOR2_X1 U126 ( .A1(n29), .A2(n30), .ZN(dat_o[8]) );
  OR3_X1 U127 ( .A1(n33), .A2(n34), .A3(n35), .Z(dat_o[5]) );
  XOR2_X1 U128 ( .A1(n36), .A2(n37), .Z(n35) );
  OR3_X1 U129 ( .A1(n41), .A2(n42), .A3(n43), .Z(dat_o[4]) );
  XOR2_X1 U130 ( .A1(n33), .A2(n44), .Z(n43) );
  OR3_X1 U131 ( .A1(n47), .A2(n48), .A3(n49), .Z(n34) );
  NOR2_X2 U132 ( .A1(n50), .A2(n51), .ZN(n49) );
  AND3_X1 U133 ( .A1(dat_in_b[3]), .A2(n53), .A3(dat_in_a[1]), .Z(n47) );
  OR3_X1 U134 ( .A1(n54), .A2(n55), .A3(n56), .Z(dat_o[3]) );
  XOR2_X1 U135 ( .A1(n41), .A2(n57), .Z(n56) );
  OR2_X1 U136 ( .A1(n14), .A2(n61), .Z(n60) );
  NOR2_X2 U137 ( .A1(n59), .A2(n58), .ZN(n41) );
  OR2_X1 U138 ( .A1(n62), .A2(n63), .Z(dat_o[2]) );
  NOR2_X2 U139 ( .A1(n66), .A2(n12), .ZN(n55) );
  NOR2_X2 U140 ( .A1(n62), .A2(n68), .ZN(dat_o[1]) );
  AND3_X1 U141 ( .A1(dat_in_b[1]), .A2(dat_in_a[1]), .A3(dat_o[0]), .Z(n62) );
  XOR2_X1 U142 ( .A1(n25), .A2(n24), .Z(dat_o[14]) );
  XNOR2_X1 U143 ( .A1(n72), .A2(n69), .ZN(dat_o[13]) );
  XOR2_X1 U144 ( .A1(n70), .A2(n71), .Z(n69) );
  AND2_X1 U145 ( .A1(n26), .A2(n73), .Z(n71) );
  OR2_X1 U146 ( .A1(n74), .A2(n75), .Z(n26) );
  OR2_X1 U147 ( .A1(n76), .A2(n77), .Z(n70) );
  XOR2_X1 U148 ( .A1(n78), .A2(n79), .Z(dat_o[12]) );
  XOR2_X1 U149 ( .A1(n80), .A2(n81), .Z(n79) );
  NOR2_X2 U150 ( .A1(n82), .A2(n83), .ZN(n77) );
  OR2_X1 U151 ( .A1(n84), .A2(n76), .Z(n83) );
  OR2_X1 U152 ( .A1(n86), .A2(n87), .Z(n80) );
  XOR2_X1 U153 ( .A1(n89), .A2(n88), .Z(dat_o[11]) );
  XOR2_X1 U154 ( .A1(n98), .A2(n86), .Z(n94) );
  NOR2_X2 U155 ( .A1(n99), .A2(n100), .ZN(n86) );
  OR2_X1 U156 ( .A1(n17), .A2(n74), .Z(n102) );
  XOR2_X1 U157 ( .A1(n92), .A2(n91), .Z(dat_o[10]) );
  XNOR2_X1 U158 ( .A1(n103), .A2(n104), .ZN(n28) );
  AND2_X1 U159 ( .A1(n31), .A2(n32), .Z(n106) );
  XOR2_X1 U160 ( .A1(n3), .A2(n105), .Z(n30) );
  XNOR2_X1 U161 ( .A1(n107), .A2(n108), .ZN(n105) );
  XNOR2_X1 U162 ( .A1(n116), .A2(n117), .ZN(n104) );
  OR4_X1 U163 ( .A1(n121), .A2(n122), .A3(n123), .A4(n124), .Z(n110) );
  AND3_X1 U164 ( .A1(dat_in_a[3]), .A2(n127), .A3(dat_in_b[5]), .Z(n123) );
  NOR2_X2 U165 ( .A1(n130), .A2(n129), .ZN(n93) );
  NOR2_X2 U166 ( .A1(n116), .A2(n120), .ZN(n130) );
  OR3_X1 U167 ( .A1(n131), .A2(n132), .A3(n133), .Z(n120) );
  AND3_X1 U168 ( .A1(dat_in_a[5]), .A2(n135), .A3(dat_in_b[4]), .Z(n131) );
  NOR2_X2 U169 ( .A1(n118), .A2(n119), .ZN(n116) );
  XNOR2_X1 U170 ( .A1(n97), .A2(n136), .ZN(n129) );
  AND3_X1 U171 ( .A1(dat_in_a[4]), .A2(n142), .A3(dat_in_b[6]), .Z(n141) );
  AND2_X1 U172 ( .A1(dat_in_a[3]), .A2(dat_in_b[7]), .Z(n138) );
  AND2_X1 U173 ( .A1(dat_in_b[0]), .A2(dat_in_a[0]), .Z(dat_o[0]) );
  XOR2_X1 U174 ( .A1(n31), .A2(n32), .Z(cpa7) );
  XOR2_X1 U175 ( .A1(n144), .A2(n145), .Z(n32) );
  OR4_X1 U176 ( .A1(n146), .A2(n147), .A3(n148), .A4(n149), .Z(n115) );
  OR3_X1 U177 ( .A1(n150), .A2(n151), .A3(n152), .Z(n149) );
  NOR2_X2 U178 ( .A1(n21), .A2(n74), .ZN(n152) );
  AND3_X1 U179 ( .A1(dat_in_b[3]), .A2(n154), .A3(dat_in_a[4]), .Z(n150) );
  OR3_X1 U180 ( .A1(n36), .A2(n40), .A3(n160), .Z(cpa6) );
  XOR2_X1 U181 ( .A1(n161), .A2(n162), .Z(n160) );
  OR4_X1 U182 ( .A1(n163), .A2(n164), .A3(n165), .A4(n166), .Z(n159) );
  OR2_X1 U183 ( .A1(n168), .A2(n16), .Z(n167) );
  OR2_X1 U184 ( .A1(n22), .A2(n20), .Z(n50) );
  AND3_X1 U185 ( .A1(dat_in_b[5]), .A2(n169), .A3(dat_in_a[1]), .Z(n165) );
  AND3_X1 U186 ( .A1(dat_in_b[0]), .A2(n170), .A3(dat_in_a[6]), .Z(n164) );
  NOR2_X2 U187 ( .A1(n158), .A2(n157), .ZN(n161) );
  OR3_X1 U188 ( .A1(n171), .A2(n172), .A3(n173), .Z(n40) );
  NOR2_X2 U189 ( .A1(n23), .A2(n22), .ZN(n67) );
  OR2_X1 U190 ( .A1(n9), .A2(n8), .Z(n101) );
  AND3_X1 U191 ( .A1(dat_in_b[4]), .A2(n175), .A3(dat_in_a[1]), .Z(n171) );
  NOR2_X2 U192 ( .A1(n38), .A2(n39), .ZN(n36) );
  INV_X16 U193 ( .I(dat_in_b[5]), .ZN(n17) );
  INV_X16 U194 ( .I(dat_in_a[0]), .ZN(n14) );
endmodule

