/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 16:41:34 2020
/////////////////////////////////////////////////////////////


module ERCM8_3 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa6, cpa7, cpa8, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
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
         n165, n166, n167, n168, n169, n170, n171;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;
  assign dat_o[8] = cpa8;

  AOI21_X2 U2 ( .A1(n23), .A2(n24), .B(n25), .ZN(n22) );
  AOI21_X2 U3 ( .A1(n33), .A2(n34), .B(n35), .ZN(n32) );
  AOI21_X2 U4 ( .A1(n40), .A2(n41), .B(n29), .ZN(n39) );
  NOR3_X2 U5 ( .A1(n14), .A2(n47), .A3(n18), .ZN(n43) );
  NOR3_X2 U6 ( .A1(n40), .A2(n9), .A3(n21), .ZN(n28) );
  AOI21_X2 U7 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n48), .ZN(n40) );
  OAI21_X2 U8 ( .A1(n18), .A2(n14), .B(n47), .ZN(n48) );
  AOI22_X2 U9 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n47) );
  NAND3_X2 U10 ( .A1(n49), .A2(n50), .A3(n51), .ZN(dat_o[3]) );
  AOI21_X2 U11 ( .A1(n53), .A2(n54), .B(n37), .ZN(n52) );
  OAI22_X2 U12 ( .A1(n46), .A2(n55), .B1(n13), .B2(n56), .ZN(n37) );
  AOI22_X2 U13 ( .A1(dat_in_b[2]), .A2(dat_in_a[1]), .B1(dat_in_b[3]), .B2(
        dat_in_a[0]), .ZN(n53) );
  AOI22_X2 U14 ( .A1(dat_in_a[3]), .A2(dat_in_b[0]), .B1(dat_in_a[2]), .B2(
        dat_in_b[1]), .ZN(n54) );
  OAI21_X2 U15 ( .A1(n12), .A2(n21), .B(n61), .ZN(n60) );
  AOI22_X2 U16 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_b[1]), .B2(
        dat_in_a[1]), .ZN(n61) );
  AOI22_X2 U17 ( .A1(n20), .A2(dat_in_a[1]), .B1(dat_o[0]), .B2(dat_in_b[2]), 
        .ZN(n62) );
  AOI22_X2 U18 ( .A1(dat_in_b[1]), .A2(dat_in_a[0]), .B1(dat_in_b[0]), .B2(
        dat_in_a[1]), .ZN(n63) );
  OAI22_X2 U19 ( .A1(n64), .A2(n65), .B1(n66), .B2(n67), .ZN(n23) );
  NOR3_X2 U20 ( .A1(n25), .A2(n5), .A3(n15), .ZN(n24) );
  AOI22_X2 U21 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n68) );
  AOI22_X2 U22 ( .A1(n72), .A2(n73), .B1(n74), .B2(n75), .ZN(n64) );
  AOI21_X2 U23 ( .A1(n76), .A2(n77), .B(n71), .ZN(n75) );
  NOR3_X2 U24 ( .A1(n4), .A2(n16), .A3(n17), .ZN(n70) );
  AOI21_X2 U25 ( .A1(dat_in_b[7]), .A2(dat_in_a[5]), .B(n79), .ZN(n78) );
  NAND3_X2 U26 ( .A1(n79), .A2(dat_in_b[7]), .A3(dat_in_a[5]), .ZN(n76) );
  OAI22_X2 U27 ( .A1(n5), .A2(n17), .B1(n7), .B2(n16), .ZN(n79) );
  OAI21_X2 U28 ( .A1(n82), .A2(n83), .B(n84), .ZN(n72) );
  AOI21_X2 U29 ( .A1(n85), .A2(n86), .B(n87), .ZN(n82) );
  OAI21_X2 U30 ( .A1(n88), .A2(n89), .B(n84), .ZN(n83) );
  NAND2_X2 U31 ( .A1(n89), .A2(n88), .ZN(n84) );
  AOI21_X2 U32 ( .A1(n94), .A2(n93), .B(n81), .ZN(n92) );
  OAI22_X2 U33 ( .A1(n69), .A2(n95), .B1(n18), .B2(n96), .ZN(n81) );
  AOI22_X2 U34 ( .A1(dat_in_a[7]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n93) );
  AOI22_X2 U35 ( .A1(dat_in_b[6]), .A2(dat_in_a[5]), .B1(dat_in_b[7]), .B2(
        dat_in_a[4]), .ZN(n94) );
  OAI22_X2 U36 ( .A1(n97), .A2(n98), .B1(n27), .B2(n26), .ZN(n85) );
  NAND2_X2 U37 ( .A1(n99), .A2(n100), .ZN(n26) );
  AOI21_X2 U38 ( .A1(n103), .A2(n104), .B(n105), .ZN(n102) );
  AOI21_X2 U39 ( .A1(n10), .A2(n2), .B(n106), .ZN(n97) );
  AOI21_X2 U40 ( .A1(n109), .A2(n110), .B(n87), .ZN(n86) );
  OAI22_X2 U41 ( .A1(n69), .A2(n46), .B1(n4), .B2(n57), .ZN(n113) );
  NOR3_X2 U42 ( .A1(n9), .A2(n114), .A3(n17), .ZN(n112) );
  AOI22_X2 U43 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B1(dat_in_b[7]), .B2(
        dat_in_a[2]), .ZN(n104) );
  AOI21_X2 U44 ( .A1(dat_in_a[5]), .A2(dat_in_b[4]), .B(n115), .ZN(n103) );
  OAI21_X2 U45 ( .A1(n17), .A2(n9), .B(n114), .ZN(n115) );
  AOI22_X2 U46 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n114) );
  AOI21_X2 U47 ( .A1(n117), .A2(n118), .B(n90), .ZN(n116) );
  NOR3_X2 U48 ( .A1(n9), .A2(n122), .A3(n16), .ZN(n121) );
  NOR3_X2 U49 ( .A1(n18), .A2(n4), .A3(n19), .ZN(n119) );
  NOR3_X2 U50 ( .A1(n117), .A2(n15), .A3(n11), .ZN(n91) );
  AOI21_X2 U51 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n123), .ZN(n117) );
  OAI21_X2 U52 ( .A1(n16), .A2(n9), .B(n122), .ZN(n123) );
  AOI22_X2 U53 ( .A1(dat_in_a[7]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[4]), .ZN(n122) );
  AOI21_X2 U54 ( .A1(n108), .A2(n107), .B(n106), .ZN(n125) );
  OAI22_X2 U55 ( .A1(n4), .A2(n45), .B1(n9), .B2(n130), .ZN(n129) );
  NOR3_X2 U56 ( .A1(n12), .A2(n69), .A3(n13), .ZN(n126) );
  AOI21_X2 U57 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B(n132), .ZN(n108) );
  OAI22_X2 U58 ( .A1(n16), .A2(n12), .B1(n15), .B2(n13), .ZN(n132) );
  AOI21_X2 U59 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n133), .ZN(n107) );
  OAI21_X2 U60 ( .A1(n18), .A2(n9), .B(n131), .ZN(n133) );
  AOI22_X2 U61 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n131) );
  OAI21_X2 U62 ( .A1(n134), .A2(n135), .B(n136), .ZN(n99) );
  OAI21_X2 U63 ( .A1(n139), .A2(n140), .B(n141), .ZN(n138) );
  AOI21_X2 U64 ( .A1(n134), .A2(n135), .B(n3), .ZN(n143) );
  NOR4_X2 U65 ( .A1(n144), .A2(n145), .A3(n146), .A4(n147), .ZN(n136) );
  NOR3_X2 U66 ( .A1(n14), .A2(n152), .A3(n15), .ZN(n149) );
  NOR3_X2 U67 ( .A1(n19), .A2(n153), .A3(n9), .ZN(n148) );
  NOR3_X2 U68 ( .A1(n18), .A2(n17), .A3(n46), .ZN(n144) );
  AOI21_X2 U69 ( .A1(dat_in_b[6]), .A2(dat_in_a[1]), .B(n154), .ZN(n134) );
  OAI21_X2 U70 ( .A1(n15), .A2(n14), .B(n152), .ZN(n154) );
  AOI22_X2 U71 ( .A1(dat_in_b[4]), .A2(dat_in_a[3]), .B1(dat_in_b[5]), .B2(
        dat_in_a[2]), .ZN(n152) );
  AOI21_X2 U72 ( .A1(dat_in_a[5]), .A2(dat_in_b[2]), .B(n155), .ZN(n135) );
  OAI21_X2 U73 ( .A1(n9), .A2(n19), .B(n153), .ZN(n155) );
  AOI22_X2 U74 ( .A1(dat_in_a[7]), .A2(dat_in_b[0]), .B1(dat_in_a[6]), .B2(
        dat_in_b[1]), .ZN(n153) );
  AOI21_X2 U75 ( .A1(n139), .A2(n140), .B(n6), .ZN(n158) );
  NOR4_X2 U76 ( .A1(n159), .A2(n160), .A3(n161), .A4(n162), .ZN(n141) );
  OAI22_X2 U77 ( .A1(n95), .A2(n45), .B1(n14), .B2(n163), .ZN(n162) );
  NAND2_X2 U78 ( .A1(dat_in_b[1]), .A2(dat_in_b[2]), .ZN(n45) );
  NOR3_X2 U79 ( .A1(n21), .A2(n166), .A3(n7), .ZN(n160) );
  NOR3_X2 U80 ( .A1(n19), .A2(n18), .A3(n46), .ZN(n159) );
  AOI21_X2 U81 ( .A1(dat_in_b[5]), .A2(dat_in_a[1]), .B(n165), .ZN(n139) );
  OAI21_X2 U82 ( .A1(n16), .A2(n14), .B(n164), .ZN(n165) );
  AOI22_X2 U83 ( .A1(dat_in_b[3]), .A2(dat_in_a[3]), .B1(dat_in_b[4]), .B2(
        dat_in_a[2]), .ZN(n164) );
  AOI21_X2 U84 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .B(n8), .ZN(n140) );
  AOI22_X2 U85 ( .A1(dat_in_a[5]), .A2(dat_in_b[1]), .B1(dat_in_a[4]), .B2(
        dat_in_b[2]), .ZN(n166) );
  OAI22_X2 U86 ( .A1(n57), .A2(n46), .B1(n95), .B2(n55), .ZN(n169) );
  NAND2_X2 U87 ( .A1(dat_in_b[0]), .A2(dat_in_b[1]), .ZN(n55) );
  NAND2_X2 U88 ( .A1(dat_in_a[4]), .A2(dat_in_a[5]), .ZN(n95) );
  NAND2_X2 U89 ( .A1(dat_in_b[2]), .A2(dat_in_b[3]), .ZN(n57) );
  NOR3_X2 U90 ( .A1(n14), .A2(n170), .A3(n17), .ZN(n168) );
  AOI22_X2 U91 ( .A1(dat_in_a[5]), .A2(dat_in_b[0]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n34) );
  AOI21_X2 U92 ( .A1(dat_in_b[4]), .A2(dat_in_a[1]), .B(n171), .ZN(n33) );
  OAI21_X2 U93 ( .A1(n17), .A2(n14), .B(n170), .ZN(n171) );
  AOI22_X2 U94 ( .A1(dat_in_a[3]), .A2(dat_in_b[2]), .B1(dat_in_b[3]), .B2(
        dat_in_a[2]), .ZN(n170) );
  INV_X8 U95 ( .I(n22), .ZN(dat_o[15]) );
  INV_X8 U96 ( .I(n107), .ZN(n2) );
  INV_X8 U97 ( .I(n136), .ZN(n3) );
  INV_X8 U98 ( .I(n151), .ZN(n4) );
  INV_X8 U99 ( .I(dat_in_a[7]), .ZN(n5) );
  INV_X8 U100 ( .I(n141), .ZN(n6) );
  INV_X8 U101 ( .I(dat_in_a[6]), .ZN(n7) );
  INV_X8 U102 ( .I(n166), .ZN(n8) );
  INV_X8 U104 ( .I(n108), .ZN(n10) );
  INV_X8 U105 ( .I(dat_in_a[3]), .ZN(n11) );
  INV_X8 U106 ( .I(dat_in_a[2]), .ZN(n12) );
  INV_X8 U107 ( .I(dat_in_a[1]), .ZN(n13) );
  INV_X8 U109 ( .I(dat_in_b[7]), .ZN(n15) );
  INV_X8 U110 ( .I(dat_in_b[6]), .ZN(n16) );
  INV_X8 U111 ( .I(dat_in_b[5]), .ZN(n17) );
  INV_X8 U112 ( .I(dat_in_b[4]), .ZN(n18) );
  INV_X8 U113 ( .I(dat_in_b[3]), .ZN(n19) );
  INV_X8 U114 ( .I(n55), .ZN(n20) );
  INV_X8 U115 ( .I(dat_in_b[0]), .ZN(n21) );
  XOR2_X1 U116 ( .A1(n26), .A2(n27), .Z(dat_o[9]) );
  OR3_X1 U117 ( .A1(n28), .A2(n29), .A3(n30), .Z(dat_o[5]) );
  XOR2_X1 U118 ( .A1(n31), .A2(n32), .Z(n30) );
  OR3_X1 U119 ( .A1(n36), .A2(n37), .A3(n38), .Z(dat_o[4]) );
  XOR2_X1 U120 ( .A1(n28), .A2(n39), .Z(n38) );
  OR3_X1 U121 ( .A1(n42), .A2(n43), .A3(n44), .Z(n29) );
  NOR2_X2 U122 ( .A1(n45), .A2(n46), .ZN(n44) );
  AND3_X1 U123 ( .A1(dat_in_b[3]), .A2(n48), .A3(dat_in_a[1]), .Z(n42) );
  OR2_X1 U124 ( .A1(n21), .A2(n9), .Z(n41) );
  XNOR2_X1 U125 ( .A1(n36), .A2(n52), .ZN(n51) );
  OR2_X1 U126 ( .A1(n14), .A2(n57), .Z(n56) );
  NOR2_X2 U127 ( .A1(n54), .A2(n53), .ZN(n36) );
  OR2_X1 U128 ( .A1(n58), .A2(n59), .Z(dat_o[2]) );
  AND3_X1 U129 ( .A1(n50), .A2(n49), .A3(n60), .Z(n59) );
  OR3_X1 U130 ( .A1(n13), .A2(n14), .A3(n45), .Z(n49) );
  OR2_X1 U131 ( .A1(n62), .A2(n12), .Z(n50) );
  NOR2_X2 U132 ( .A1(n58), .A2(n63), .ZN(dat_o[1]) );
  AND3_X1 U133 ( .A1(dat_in_b[1]), .A2(dat_in_a[1]), .A3(dat_o[0]), .Z(n58) );
  XOR2_X1 U134 ( .A1(n24), .A2(n23), .Z(dat_o[14]) );
  XOR2_X1 U135 ( .A1(n64), .A2(n65), .Z(dat_o[13]) );
  XNOR2_X1 U136 ( .A1(n66), .A2(n67), .ZN(n65) );
  OR2_X1 U137 ( .A1(n25), .A2(n68), .Z(n67) );
  NOR2_X2 U138 ( .A1(n4), .A2(n69), .ZN(n25) );
  NOR2_X2 U139 ( .A1(n70), .A2(n71), .ZN(n66) );
  XOR2_X1 U140 ( .A1(n72), .A2(n73), .Z(dat_o[12]) );
  XOR2_X1 U141 ( .A1(n74), .A2(n75), .Z(n73) );
  NOR2_X2 U142 ( .A1(n76), .A2(n77), .ZN(n71) );
  OR2_X1 U143 ( .A1(n78), .A2(n70), .Z(n77) );
  OR2_X1 U144 ( .A1(n80), .A2(n81), .Z(n74) );
  XOR2_X1 U145 ( .A1(n83), .A2(n82), .Z(dat_o[11]) );
  OR2_X1 U146 ( .A1(n90), .A2(n91), .Z(n89) );
  XOR2_X1 U147 ( .A1(n92), .A2(n80), .Z(n88) );
  NOR2_X2 U148 ( .A1(n93), .A2(n94), .ZN(n80) );
  OR2_X1 U149 ( .A1(n17), .A2(n4), .Z(n96) );
  XOR2_X1 U150 ( .A1(n86), .A2(n85), .Z(dat_o[10]) );
  XNOR2_X1 U151 ( .A1(n97), .A2(n98), .ZN(n27) );
  XNOR2_X1 U152 ( .A1(n101), .A2(n102), .ZN(n98) );
  NOR2_X2 U153 ( .A1(n110), .A2(n109), .ZN(n87) );
  NOR2_X2 U154 ( .A1(n101), .A2(n105), .ZN(n110) );
  OR3_X1 U155 ( .A1(n111), .A2(n112), .A3(n113), .Z(n105) );
  AND3_X1 U156 ( .A1(dat_in_a[5]), .A2(n115), .A3(dat_in_b[4]), .Z(n111) );
  NOR2_X2 U157 ( .A1(n103), .A2(n104), .ZN(n101) );
  XNOR2_X1 U158 ( .A1(n91), .A2(n116), .ZN(n109) );
  OR3_X1 U159 ( .A1(n119), .A2(n120), .A3(n121), .Z(n90) );
  AND3_X1 U160 ( .A1(dat_in_b[5]), .A2(n123), .A3(dat_in_a[5]), .Z(n120) );
  OR2_X1 U161 ( .A1(n11), .A2(n15), .Z(n118) );
  AND2_X1 U162 ( .A1(dat_in_b[0]), .A2(dat_in_a[0]), .Z(dat_o[0]) );
  XOR2_X1 U163 ( .A1(n99), .A2(n100), .Z(cpa8) );
  XNOR2_X1 U164 ( .A1(n124), .A2(n125), .ZN(n100) );
  OR4_X1 U165 ( .A1(n126), .A2(n127), .A3(n128), .A4(n129), .Z(n106) );
  OR2_X1 U166 ( .A1(n131), .A2(n18), .Z(n130) );
  AND3_X1 U167 ( .A1(dat_in_a[3]), .A2(n132), .A3(dat_in_b[5]), .Z(n128) );
  AND3_X1 U168 ( .A1(dat_in_a[5]), .A2(n133), .A3(dat_in_b[3]), .Z(n127) );
  OR2_X1 U169 ( .A1(n15), .A2(n16), .Z(n69) );
  OR2_X1 U170 ( .A1(n107), .A2(n108), .Z(n124) );
  OR2_X1 U171 ( .A1(n137), .A2(n138), .Z(cpa7) );
  XOR2_X1 U172 ( .A1(n142), .A2(n143), .Z(n137) );
  OR3_X1 U173 ( .A1(n148), .A2(n149), .A3(n150), .Z(n147) );
  NOR2_X2 U174 ( .A1(n55), .A2(n4), .ZN(n150) );
  NOR2_X2 U175 ( .A1(n5), .A2(n7), .ZN(n151) );
  AND3_X1 U176 ( .A1(dat_in_b[6]), .A2(n154), .A3(dat_in_a[1]), .Z(n146) );
  AND3_X1 U177 ( .A1(dat_in_a[5]), .A2(n155), .A3(dat_in_b[2]), .Z(n145) );
  NOR2_X2 U178 ( .A1(n135), .A2(n134), .ZN(n142) );
  OR3_X1 U179 ( .A1(n31), .A2(n35), .A3(n156), .Z(cpa6) );
  XOR2_X1 U180 ( .A1(n157), .A2(n158), .Z(n156) );
  OR2_X1 U181 ( .A1(n164), .A2(n16), .Z(n163) );
  AND3_X1 U182 ( .A1(dat_in_b[5]), .A2(n165), .A3(dat_in_a[1]), .Z(n161) );
  NOR2_X2 U183 ( .A1(n140), .A2(n139), .ZN(n157) );
  OR3_X1 U184 ( .A1(n167), .A2(n168), .A3(n169), .Z(n35) );
  OR2_X1 U185 ( .A1(n12), .A2(n11), .Z(n46) );
  AND3_X1 U186 ( .A1(dat_in_b[4]), .A2(n171), .A3(dat_in_a[1]), .Z(n167) );
  NOR2_X2 U187 ( .A1(n33), .A2(n34), .ZN(n31) );
  INV_X16 U188 ( .I(dat_in_a[0]), .ZN(n14) );
  INV_X16 U189 ( .I(dat_in_a[4]), .ZN(n9) );
endmodule

