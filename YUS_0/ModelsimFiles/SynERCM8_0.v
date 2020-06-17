/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 12:12:41 2020
/////////////////////////////////////////////////////////////


module ERCM8_0 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183;

  OAI21_X2 U1 ( .A1(n26), .A2(n27), .B(n28), .ZN(dat_o[15]) );
  AOI21_X2 U2 ( .A1(n36), .A2(n37), .B(n35), .ZN(dat_o[5]) );
  AOI21_X2 U3 ( .A1(n43), .A2(n44), .B(n45), .ZN(n42) );
  NAND2_X2 U4 ( .A1(dat_in_b[0]), .A2(dat_in_a[4]), .ZN(n44) );
  AOI21_X2 U5 ( .A1(n50), .A2(n51), .B(n39), .ZN(n49) );
  OAI22_X2 U6 ( .A1(n52), .A2(n24), .B1(n16), .B2(n53), .ZN(n39) );
  AOI22_X2 U7 ( .A1(dat_in_b[2]), .A2(dat_in_a[1]), .B1(dat_in_b[3]), .B2(
        dat_in_a[0]), .ZN(n50) );
  AOI22_X2 U8 ( .A1(dat_in_a[3]), .A2(dat_in_b[0]), .B1(dat_in_a[2]), .B2(
        dat_in_b[1]), .ZN(n51) );
  NOR3_X2 U9 ( .A1(n47), .A2(n46), .A3(n57), .ZN(n56) );
  AOI21_X2 U10 ( .A1(dat_in_a[2]), .A2(dat_in_b[0]), .B(n58), .ZN(n57) );
  OAI22_X2 U11 ( .A1(n17), .A2(n23), .B1(n25), .B2(n16), .ZN(n58) );
  NOR3_X2 U12 ( .A1(n16), .A2(n17), .A3(n59), .ZN(n46) );
  AOI22_X2 U13 ( .A1(n61), .A2(dat_in_a[1]), .B1(dat_o[0]), .B2(dat_in_b[2]), 
        .ZN(n60) );
  AOI22_X2 U14 ( .A1(dat_in_b[1]), .A2(dat_in_a[0]), .B1(dat_in_b[0]), .B2(
        dat_in_a[1]), .ZN(n62) );
  AOI22_X2 U15 ( .A1(n1), .A2(n63), .B1(n64), .B2(n65), .ZN(n26) );
  NAND3_X2 U16 ( .A1(n28), .A2(dat_in_a[7]), .A3(dat_in_b[7]), .ZN(n27) );
  AOI22_X2 U17 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n67) );
  AOI22_X2 U18 ( .A1(n72), .A2(n73), .B1(n74), .B2(n75), .ZN(n66) );
  AOI21_X2 U19 ( .A1(n76), .A2(n77), .B(n71), .ZN(n75) );
  NAND2_X2 U20 ( .A1(n78), .A2(n7), .ZN(n77) );
  NOR3_X2 U21 ( .A1(n68), .A2(n19), .A3(n20), .ZN(n70) );
  OAI21_X2 U22 ( .A1(n18), .A2(n12), .B(n79), .ZN(n78) );
  AOI22_X2 U23 ( .A1(dat_in_a[7]), .A2(dat_in_b[5]), .B1(dat_in_a[6]), .B2(
        dat_in_b[6]), .ZN(n79) );
  OAI21_X2 U24 ( .A1(n82), .A2(n83), .B(n84), .ZN(n72) );
  AOI21_X2 U25 ( .A1(n2), .A2(n85), .B(n86), .ZN(n82) );
  OAI21_X2 U26 ( .A1(n87), .A2(n88), .B(n84), .ZN(n83) );
  NAND2_X2 U27 ( .A1(n88), .A2(n87), .ZN(n84) );
  NAND2_X2 U28 ( .A1(n89), .A2(n90), .ZN(n88) );
  AOI21_X2 U29 ( .A1(n93), .A2(n92), .B(n81), .ZN(n91) );
  OAI22_X2 U30 ( .A1(n69), .A2(n94), .B1(n21), .B2(n95), .ZN(n81) );
  AOI22_X2 U31 ( .A1(dat_in_a[7]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n92) );
  AOI22_X2 U32 ( .A1(dat_in_b[6]), .A2(dat_in_a[5]), .B1(dat_in_b[7]), .B2(
        dat_in_a[4]), .ZN(n93) );
  AOI22_X2 U33 ( .A1(n97), .A2(n98), .B1(n29), .B2(n30), .ZN(n96) );
  OAI22_X2 U34 ( .A1(n3), .A2(n99), .B1(n4), .B2(n31), .ZN(n29) );
  OAI22_X2 U35 ( .A1(n10), .A2(n101), .B1(n32), .B2(n33), .ZN(n100) );
  AOI21_X2 U36 ( .A1(n35), .A2(n34), .B(n103), .ZN(n32) );
  AOI21_X2 U37 ( .A1(n104), .A2(n105), .B(n103), .ZN(n34) );
  AOI21_X2 U38 ( .A1(n110), .A2(n111), .B(n112), .ZN(n109) );
  AOI21_X2 U39 ( .A1(n114), .A2(n115), .B(n107), .ZN(n113) );
  OAI22_X2 U40 ( .A1(n54), .A2(n52), .B1(n94), .B2(n24), .ZN(n118) );
  NOR3_X2 U41 ( .A1(n17), .A2(n119), .A3(n20), .ZN(n117) );
  AOI22_X2 U42 ( .A1(dat_in_a[5]), .A2(dat_in_b[0]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n115) );
  AOI21_X2 U43 ( .A1(dat_in_b[4]), .A2(dat_in_a[1]), .B(n120), .ZN(n114) );
  OAI21_X2 U44 ( .A1(n20), .A2(n17), .B(n119), .ZN(n120) );
  AOI22_X2 U45 ( .A1(dat_in_a[3]), .A2(dat_in_b[2]), .B1(dat_in_b[3]), .B2(
        dat_in_a[2]), .ZN(n119) );
  AOI21_X2 U46 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n121), .ZN(n43) );
  NOR3_X2 U47 ( .A1(n17), .A2(n125), .A3(n21), .ZN(n123) );
  OAI21_X2 U48 ( .A1(n21), .A2(n17), .B(n125), .ZN(n121) );
  AOI22_X2 U49 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n125) );
  AOI21_X2 U50 ( .A1(n128), .A2(n129), .B(n130), .ZN(n127) );
  OAI21_X2 U51 ( .A1(n110), .A2(n111), .B(n11), .ZN(n102) );
  OAI22_X2 U52 ( .A1(n94), .A2(n59), .B1(n17), .B2(n135), .ZN(n134) );
  NOR3_X2 U53 ( .A1(n22), .A2(n21), .A3(n52), .ZN(n131) );
  AOI21_X2 U54 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .B(n138), .ZN(n111) );
  OAI22_X2 U55 ( .A1(n12), .A2(n25), .B1(n13), .B2(n23), .ZN(n138) );
  AOI21_X2 U56 ( .A1(dat_in_b[5]), .A2(dat_in_a[1]), .B(n137), .ZN(n110) );
  OAI21_X2 U57 ( .A1(n19), .A2(n17), .B(n136), .ZN(n137) );
  AOI22_X2 U58 ( .A1(dat_in_b[3]), .A2(dat_in_a[3]), .B1(dat_in_b[4]), .B2(
        dat_in_a[2]), .ZN(n136) );
  AOI21_X2 U59 ( .A1(n141), .A2(n142), .B(n143), .ZN(n140) );
  OAI21_X2 U60 ( .A1(n128), .A2(n129), .B(n5), .ZN(n144) );
  NOR3_X2 U61 ( .A1(n17), .A2(n152), .A3(n18), .ZN(n150) );
  NOR3_X2 U62 ( .A1(n22), .A2(n153), .A3(n13), .ZN(n149) );
  NOR3_X2 U63 ( .A1(n21), .A2(n20), .A3(n52), .ZN(n145) );
  AOI21_X2 U64 ( .A1(dat_in_a[5]), .A2(dat_in_b[2]), .B(n155), .ZN(n129) );
  OAI21_X2 U65 ( .A1(n13), .A2(n22), .B(n153), .ZN(n155) );
  AOI22_X2 U66 ( .A1(dat_in_a[7]), .A2(dat_in_b[0]), .B1(dat_in_a[6]), .B2(
        dat_in_b[1]), .ZN(n153) );
  AOI21_X2 U67 ( .A1(dat_in_b[6]), .A2(dat_in_a[1]), .B(n154), .ZN(n128) );
  OAI21_X2 U68 ( .A1(n18), .A2(n17), .B(n152), .ZN(n154) );
  AOI22_X2 U69 ( .A1(dat_in_b[4]), .A2(dat_in_a[3]), .B1(dat_in_b[5]), .B2(
        dat_in_a[2]), .ZN(n152) );
  AOI21_X2 U70 ( .A1(n158), .A2(n159), .B(n160), .ZN(n157) );
  OAI21_X2 U71 ( .A1(n141), .A2(n142), .B(n6), .ZN(n97) );
  OAI22_X2 U72 ( .A1(n68), .A2(n59), .B1(n13), .B2(n165), .ZN(n164) );
  NOR3_X2 U73 ( .A1(n15), .A2(n69), .A3(n16), .ZN(n161) );
  AOI21_X2 U74 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n168), .ZN(n142) );
  OAI21_X2 U75 ( .A1(n21), .A2(n13), .B(n166), .ZN(n168) );
  AOI22_X2 U76 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n166) );
  AOI21_X2 U77 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B(n167), .ZN(n141) );
  OAI22_X2 U78 ( .A1(n19), .A2(n15), .B1(n18), .B2(n16), .ZN(n167) );
  AOI21_X2 U79 ( .A1(n169), .A2(n170), .B(n86), .ZN(n85) );
  OAI22_X2 U80 ( .A1(n69), .A2(n52), .B1(n68), .B2(n54), .ZN(n173) );
  NAND2_X2 U81 ( .A1(dat_in_b[2]), .A2(dat_in_b[3]), .ZN(n54) );
  NAND2_X2 U82 ( .A1(dat_in_a[2]), .A2(dat_in_a[3]), .ZN(n52) );
  NAND2_X2 U83 ( .A1(dat_in_b[7]), .A2(dat_in_b[6]), .ZN(n69) );
  NOR3_X2 U84 ( .A1(n13), .A2(n174), .A3(n20), .ZN(n172) );
  AOI22_X2 U85 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B1(dat_in_b[7]), .B2(
        dat_in_a[2]), .ZN(n159) );
  AOI21_X2 U86 ( .A1(dat_in_a[5]), .A2(dat_in_b[4]), .B(n175), .ZN(n158) );
  OAI21_X2 U87 ( .A1(n20), .A2(n13), .B(n174), .ZN(n175) );
  AOI22_X2 U88 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n174) );
  OAI21_X2 U89 ( .A1(n9), .A2(n177), .B(n89), .ZN(n176) );
  NOR3_X2 U90 ( .A1(n178), .A2(n179), .A3(n180), .ZN(n89) );
  NOR3_X2 U91 ( .A1(n13), .A2(n181), .A3(n19), .ZN(n180) );
  NOR3_X2 U92 ( .A1(n21), .A2(n68), .A3(n22), .ZN(n178) );
  NAND2_X2 U93 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .ZN(n68) );
  NAND3_X2 U94 ( .A1(n9), .A2(dat_in_b[7]), .A3(dat_in_a[3]), .ZN(n90) );
  AOI21_X2 U95 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n182), .ZN(n183) );
  OAI21_X2 U96 ( .A1(n19), .A2(n13), .B(n181), .ZN(n182) );
  AOI22_X2 U97 ( .A1(dat_in_a[7]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[4]), .ZN(n181) );
  INV_X8 U98 ( .I(n66), .ZN(n1) );
  INV_X8 U99 ( .I(n96), .ZN(n2) );
  INV_X8 U100 ( .I(n144), .ZN(n3) );
  INV_X8 U101 ( .I(n100), .ZN(n4) );
  INV_X8 U102 ( .I(n130), .ZN(n5) );
  INV_X8 U103 ( .I(n143), .ZN(n6) );
  INV_X8 U104 ( .I(n70), .ZN(n7) );
  INV_X8 U105 ( .I(n28), .ZN(n8) );
  INV_X8 U106 ( .I(n183), .ZN(n9) );
  INV_X8 U107 ( .I(n102), .ZN(n10) );
  INV_X8 U108 ( .I(n112), .ZN(n11) );
  INV_X8 U109 ( .I(dat_in_a[5]), .ZN(n12) );
  INV_X8 U111 ( .I(n43), .ZN(n14) );
  INV_X8 U112 ( .I(dat_in_a[2]), .ZN(n15) );
  INV_X8 U113 ( .I(dat_in_a[1]), .ZN(n16) );
  INV_X8 U115 ( .I(dat_in_b[7]), .ZN(n18) );
  INV_X8 U116 ( .I(dat_in_b[6]), .ZN(n19) );
  INV_X8 U117 ( .I(dat_in_b[5]), .ZN(n20) );
  INV_X8 U118 ( .I(dat_in_b[4]), .ZN(n21) );
  INV_X8 U119 ( .I(dat_in_b[3]), .ZN(n22) );
  INV_X8 U120 ( .I(dat_in_b[2]), .ZN(n23) );
  INV_X8 U121 ( .I(n61), .ZN(n24) );
  INV_X8 U122 ( .I(dat_in_b[1]), .ZN(n25) );
  XOR2_X1 U123 ( .A1(n29), .A2(n30), .Z(dat_o[9]) );
  XOR2_X1 U124 ( .A1(n4), .A2(n31), .Z(dat_o[8]) );
  XOR2_X1 U125 ( .A1(n32), .A2(n33), .Z(dat_o[7]) );
  XOR2_X1 U126 ( .A1(n34), .A2(n35), .Z(dat_o[6]) );
  OR3_X1 U127 ( .A1(n38), .A2(n39), .A3(n40), .Z(dat_o[4]) );
  XOR2_X1 U128 ( .A1(n41), .A2(n42), .Z(n40) );
  OR3_X1 U129 ( .A1(n46), .A2(n47), .A3(n48), .Z(dat_o[3]) );
  XOR2_X1 U130 ( .A1(n38), .A2(n49), .Z(n48) );
  OR2_X1 U131 ( .A1(n17), .A2(n54), .Z(n53) );
  NOR2_X2 U132 ( .A1(n51), .A2(n50), .ZN(n38) );
  OR2_X1 U133 ( .A1(n55), .A2(n56), .Z(dat_o[2]) );
  NOR2_X2 U134 ( .A1(n60), .A2(n15), .ZN(n47) );
  NOR2_X2 U135 ( .A1(n55), .A2(n62), .ZN(dat_o[1]) );
  AND3_X1 U136 ( .A1(dat_in_b[1]), .A2(dat_in_a[1]), .A3(dat_o[0]), .Z(n55) );
  XOR2_X1 U137 ( .A1(n27), .A2(n26), .Z(dat_o[14]) );
  XNOR2_X1 U138 ( .A1(n66), .A2(n63), .ZN(dat_o[13]) );
  XOR2_X1 U139 ( .A1(n64), .A2(n65), .Z(n63) );
  NOR2_X2 U140 ( .A1(n8), .A2(n67), .ZN(n65) );
  OR2_X1 U141 ( .A1(n68), .A2(n69), .Z(n28) );
  OR2_X1 U142 ( .A1(n70), .A2(n71), .Z(n64) );
  XOR2_X1 U143 ( .A1(n72), .A2(n73), .Z(dat_o[12]) );
  XOR2_X1 U144 ( .A1(n74), .A2(n75), .Z(n73) );
  NOR2_X2 U145 ( .A1(n76), .A2(n77), .ZN(n71) );
  OR3_X1 U146 ( .A1(n79), .A2(n18), .A3(n12), .Z(n76) );
  OR2_X1 U147 ( .A1(n80), .A2(n81), .Z(n74) );
  XOR2_X1 U148 ( .A1(n83), .A2(n82), .Z(dat_o[11]) );
  XOR2_X1 U149 ( .A1(n91), .A2(n80), .Z(n87) );
  NOR2_X2 U150 ( .A1(n92), .A2(n93), .ZN(n80) );
  OR2_X1 U151 ( .A1(n20), .A2(n68), .Z(n95) );
  XOR2_X1 U152 ( .A1(n85), .A2(n2), .Z(dat_o[10]) );
  XOR2_X1 U153 ( .A1(n97), .A2(n98), .Z(n30) );
  XNOR2_X1 U154 ( .A1(n3), .A2(n99), .ZN(n31) );
  XOR2_X1 U155 ( .A1(n102), .A2(n101), .Z(n33) );
  NOR2_X2 U156 ( .A1(n105), .A2(n104), .ZN(n103) );
  NOR2_X2 U157 ( .A1(n106), .A2(n107), .ZN(n105) );
  XOR2_X1 U158 ( .A1(n108), .A2(n109), .Z(n104) );
  OR2_X1 U159 ( .A1(n111), .A2(n110), .Z(n108) );
  NOR2_X2 U160 ( .A1(n36), .A2(n37), .ZN(n35) );
  XNOR2_X1 U161 ( .A1(n106), .A2(n113), .ZN(n37) );
  OR3_X1 U162 ( .A1(n116), .A2(n117), .A3(n118), .Z(n107) );
  AND3_X1 U163 ( .A1(dat_in_b[4]), .A2(n120), .A3(dat_in_a[1]), .Z(n116) );
  NOR2_X2 U164 ( .A1(n114), .A2(n115), .ZN(n106) );
  NOR2_X2 U165 ( .A1(n45), .A2(n41), .ZN(n36) );
  AND3_X1 U166 ( .A1(n14), .A2(dat_in_a[4]), .A3(dat_in_b[0]), .Z(n41) );
  OR3_X1 U167 ( .A1(n122), .A2(n123), .A3(n124), .Z(n45) );
  NOR2_X2 U168 ( .A1(n59), .A2(n52), .ZN(n124) );
  AND3_X1 U169 ( .A1(dat_in_b[3]), .A2(n121), .A3(dat_in_a[1]), .Z(n122) );
  XOR2_X1 U170 ( .A1(n126), .A2(n127), .Z(n101) );
  OR2_X1 U171 ( .A1(n129), .A2(n128), .Z(n126) );
  OR4_X1 U172 ( .A1(n131), .A2(n132), .A3(n133), .A4(n134), .Z(n112) );
  OR2_X1 U173 ( .A1(n136), .A2(n19), .Z(n135) );
  OR2_X1 U174 ( .A1(n13), .A2(n12), .Z(n94) );
  AND3_X1 U175 ( .A1(dat_in_b[5]), .A2(n137), .A3(dat_in_a[1]), .Z(n133) );
  AND3_X1 U176 ( .A1(dat_in_b[0]), .A2(n138), .A3(dat_in_a[6]), .Z(n132) );
  XOR2_X1 U177 ( .A1(n139), .A2(n140), .Z(n99) );
  OR2_X1 U178 ( .A1(n142), .A2(n141), .Z(n139) );
  OR4_X1 U179 ( .A1(n145), .A2(n146), .A3(n147), .A4(n148), .Z(n130) );
  OR3_X1 U180 ( .A1(n149), .A2(n150), .A3(n151), .Z(n148) );
  NOR2_X2 U181 ( .A1(n24), .A2(n68), .ZN(n151) );
  AND2_X1 U182 ( .A1(dat_in_b[0]), .A2(dat_in_b[1]), .Z(n61) );
  AND3_X1 U183 ( .A1(dat_in_b[6]), .A2(n154), .A3(dat_in_a[1]), .Z(n147) );
  AND3_X1 U184 ( .A1(dat_in_a[5]), .A2(n155), .A3(dat_in_b[2]), .Z(n146) );
  XOR2_X1 U185 ( .A1(n156), .A2(n157), .Z(n98) );
  OR4_X1 U186 ( .A1(n161), .A2(n162), .A3(n163), .A4(n164), .Z(n143) );
  OR2_X1 U187 ( .A1(n166), .A2(n21), .Z(n165) );
  OR2_X1 U188 ( .A1(n25), .A2(n23), .Z(n59) );
  AND3_X1 U189 ( .A1(dat_in_a[3]), .A2(n167), .A3(dat_in_b[5]), .Z(n163) );
  AND3_X1 U190 ( .A1(dat_in_a[5]), .A2(n168), .A3(dat_in_b[3]), .Z(n162) );
  NOR2_X2 U191 ( .A1(n170), .A2(n169), .ZN(n86) );
  NOR2_X2 U192 ( .A1(n156), .A2(n160), .ZN(n170) );
  OR3_X1 U193 ( .A1(n171), .A2(n172), .A3(n173), .Z(n160) );
  AND3_X1 U194 ( .A1(dat_in_a[5]), .A2(n175), .A3(dat_in_b[4]), .Z(n171) );
  NOR2_X2 U195 ( .A1(n158), .A2(n159), .ZN(n156) );
  XNOR2_X1 U196 ( .A1(n90), .A2(n176), .ZN(n169) );
  AND3_X1 U197 ( .A1(dat_in_b[5]), .A2(n182), .A3(dat_in_a[5]), .Z(n179) );
  AND2_X1 U198 ( .A1(dat_in_a[3]), .A2(dat_in_b[7]), .Z(n177) );
  AND2_X1 U199 ( .A1(dat_in_b[0]), .A2(dat_in_a[0]), .Z(dat_o[0]) );
  INV_X16 U200 ( .I(dat_in_a[0]), .ZN(n17) );
  INV_X16 U201 ( .I(dat_in_a[4]), .ZN(n13) );
endmodule

