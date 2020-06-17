/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sun Jan 26 18:46:26 2020
/////////////////////////////////////////////////////////////


module ERCM8 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199;

  AOI21_X2 U1 ( .A1(n35), .A2(n36), .B(n37), .ZN(n34) );
  OAI21_X2 U2 ( .A1(n45), .A2(n46), .B(n43), .ZN(n44) );
  AOI21_X2 U3 ( .A1(n52), .A2(n53), .B(n54), .ZN(n51) );
  NAND3_X2 U4 ( .A1(n55), .A2(n56), .A3(n57), .ZN(dat_o[3]) );
  AOI21_X2 U5 ( .A1(n59), .A2(n60), .B(n48), .ZN(n58) );
  OAI22_X2 U6 ( .A1(n19), .A2(n31), .B1(n23), .B2(n61), .ZN(n48) );
  AOI22_X2 U7 ( .A1(dat_in_b[2]), .A2(dat_in_a[1]), .B1(dat_in_b[3]), .B2(
        dat_in_a[0]), .ZN(n59) );
  AOI22_X2 U8 ( .A1(dat_in_a[3]), .A2(dat_in_b[0]), .B1(dat_in_a[2]), .B2(
        dat_in_b[1]), .ZN(n60) );
  OAI21_X2 U9 ( .A1(n21), .A2(n33), .B(n66), .ZN(n65) );
  AOI22_X2 U10 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_b[1]), .B2(
        dat_in_a[1]), .ZN(n66) );
  NAND3_X2 U11 ( .A1(n67), .A2(dat_in_a[1]), .A3(dat_in_a[0]), .ZN(n55) );
  AOI22_X2 U12 ( .A1(n69), .A2(dat_in_a[1]), .B1(dat_o[0]), .B2(dat_in_b[2]), 
        .ZN(n68) );
  AOI22_X2 U13 ( .A1(dat_in_a[0]), .A2(dat_in_b[1]), .B1(dat_in_b[0]), .B2(
        dat_in_a[1]), .ZN(n70) );
  OAI22_X2 U14 ( .A1(n71), .A2(n72), .B1(n73), .B2(n74), .ZN(n35) );
  NOR3_X2 U15 ( .A1(n37), .A2(n2), .A3(n25), .ZN(n36) );
  AOI22_X2 U16 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n75) );
  AOI22_X2 U17 ( .A1(n79), .A2(n80), .B1(n81), .B2(n3), .ZN(n71) );
  OAI21_X2 U18 ( .A1(n83), .A2(n84), .B(n78), .ZN(n82) );
  NAND2_X2 U19 ( .A1(n83), .A2(n84), .ZN(n78) );
  NAND3_X2 U20 ( .A1(n12), .A2(dat_in_b[6]), .A3(dat_in_b[5]), .ZN(n77) );
  OAI21_X2 U21 ( .A1(n25), .A2(n17), .B(n86), .ZN(n85) );
  NOR3_X2 U22 ( .A1(n86), .A2(n25), .A3(n17), .ZN(n83) );
  AOI22_X2 U23 ( .A1(dat_in_a[7]), .A2(dat_in_b[5]), .B1(dat_in_a[6]), .B2(
        dat_in_b[6]), .ZN(n86) );
  NAND2_X2 U24 ( .A1(n87), .A2(n88), .ZN(n81) );
  OAI21_X2 U25 ( .A1(n89), .A2(n90), .B(n91), .ZN(n79) );
  NAND2_X2 U26 ( .A1(n91), .A2(n92), .ZN(n90) );
  NAND3_X2 U27 ( .A1(n95), .A2(n96), .A3(mask[6]), .ZN(n91) );
  AOI21_X2 U28 ( .A1(n99), .A2(n98), .B(n11), .ZN(n97) );
  AOI22_X2 U29 ( .A1(n100), .A2(n101), .B1(dat_in_b[4]), .B2(n102), .ZN(n88)
         );
  AOI22_X2 U30 ( .A1(dat_in_a[7]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n98) );
  AOI22_X2 U31 ( .A1(dat_in_b[6]), .A2(dat_in_a[5]), .B1(dat_in_b[7]), .B2(
        dat_in_a[4]), .ZN(n99) );
  AOI21_X2 U32 ( .A1(n103), .A2(n104), .B(n105), .ZN(n89) );
  OAI21_X2 U33 ( .A1(n4), .A2(n38), .B(n106), .ZN(n103) );
  OAI21_X2 U34 ( .A1(n107), .A2(n108), .B(n106), .ZN(n38) );
  NAND3_X2 U35 ( .A1(n107), .A2(n108), .A3(mask[4]), .ZN(n106) );
  OAI21_X2 U36 ( .A1(n109), .A2(n110), .B(n5), .ZN(n108) );
  OAI21_X2 U37 ( .A1(n114), .A2(n115), .B(n116), .ZN(n113) );
  OAI21_X2 U38 ( .A1(n40), .A2(n39), .B(n118), .ZN(n117) );
  OAI21_X2 U39 ( .A1(n119), .A2(n120), .B(n118), .ZN(n39) );
  NAND3_X2 U40 ( .A1(n119), .A2(n120), .A3(mask[3]), .ZN(n118) );
  OAI21_X2 U41 ( .A1(n121), .A2(n122), .B(n8), .ZN(n120) );
  AOI21_X2 U42 ( .A1(n109), .A2(n110), .B(n111), .ZN(n125) );
  OAI22_X2 U43 ( .A1(n76), .A2(n29), .B1(n18), .B2(n130), .ZN(n129) );
  NOR3_X2 U44 ( .A1(n21), .A2(n24), .A3(n22), .ZN(n126) );
  AOI21_X2 U45 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B(n132), .ZN(n109) );
  OAI22_X2 U46 ( .A1(n26), .A2(n21), .B1(n25), .B2(n22), .ZN(n132) );
  AOI21_X2 U47 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n133), .ZN(n110) );
  OAI21_X2 U48 ( .A1(n27), .A2(n18), .B(n131), .ZN(n133) );
  AOI22_X2 U49 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n131) );
  AOI21_X2 U50 ( .A1(n41), .A2(n6), .B(n7), .ZN(n40) );
  OAI21_X2 U51 ( .A1(n136), .A2(n137), .B(n134), .ZN(n135) );
  NAND3_X2 U52 ( .A1(n136), .A2(n137), .A3(mask[2]), .ZN(n134) );
  OAI21_X2 U53 ( .A1(n138), .A2(n139), .B(n13), .ZN(n137) );
  AOI21_X2 U54 ( .A1(n121), .A2(n122), .B(n123), .ZN(n142) );
  NOR3_X2 U55 ( .A1(n23), .A2(n150), .A3(n25), .ZN(n148) );
  NOR3_X2 U56 ( .A1(n28), .A2(n151), .A3(n18), .ZN(n147) );
  AOI21_X2 U57 ( .A1(dat_in_b[6]), .A2(dat_in_a[1]), .B(n152), .ZN(n121) );
  OAI21_X2 U58 ( .A1(n25), .A2(n23), .B(n150), .ZN(n152) );
  AOI22_X2 U59 ( .A1(dat_in_b[4]), .A2(dat_in_a[3]), .B1(dat_in_b[5]), .B2(
        dat_in_a[2]), .ZN(n150) );
  AOI21_X2 U60 ( .A1(dat_in_a[5]), .A2(dat_in_b[2]), .B(n153), .ZN(n122) );
  OAI21_X2 U61 ( .A1(n18), .A2(n28), .B(n151), .ZN(n153) );
  AOI22_X2 U62 ( .A1(dat_in_a[7]), .A2(dat_in_b[0]), .B1(dat_in_a[6]), .B2(
        dat_in_b[1]), .ZN(n151) );
  OAI21_X2 U63 ( .A1(n43), .A2(n42), .B(n155), .ZN(n41) );
  NAND2_X2 U64 ( .A1(n155), .A2(n156), .ZN(n42) );
  NAND3_X2 U65 ( .A1(n158), .A2(n159), .A3(mask[1]), .ZN(n155) );
  AOI21_X2 U66 ( .A1(n138), .A2(n139), .B(n140), .ZN(n162) );
  OAI22_X2 U67 ( .A1(n16), .A2(n29), .B1(n23), .B2(n167), .ZN(n166) );
  NOR3_X2 U68 ( .A1(n28), .A2(n27), .A3(n19), .ZN(n163) );
  AOI21_X2 U69 ( .A1(dat_in_b[5]), .A2(dat_in_a[1]), .B(n169), .ZN(n138) );
  OAI21_X2 U70 ( .A1(n26), .A2(n23), .B(n168), .ZN(n169) );
  AOI22_X2 U71 ( .A1(dat_in_b[3]), .A2(dat_in_a[3]), .B1(dat_in_b[4]), .B2(
        dat_in_a[2]), .ZN(n168) );
  AOI21_X2 U72 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .B(n170), .ZN(n139) );
  OAI22_X2 U73 ( .A1(n17), .A2(n32), .B1(n18), .B2(n30), .ZN(n170) );
  NAND3_X2 U74 ( .A1(n46), .A2(n45), .A3(mask[0]), .ZN(n43) );
  NOR3_X2 U75 ( .A1(n52), .A2(n18), .A3(n33), .ZN(n50) );
  AOI21_X2 U76 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n171), .ZN(n52) );
  NOR3_X2 U77 ( .A1(n23), .A2(n175), .A3(n27), .ZN(n173) );
  OAI21_X2 U78 ( .A1(n27), .A2(n23), .B(n175), .ZN(n171) );
  AOI22_X2 U79 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n175) );
  OAI21_X2 U80 ( .A1(n177), .A2(n178), .B(n160), .ZN(n176) );
  NOR3_X2 U81 ( .A1(n179), .A2(n180), .A3(n181), .ZN(n160) );
  OAI22_X2 U82 ( .A1(n62), .A2(n19), .B1(n16), .B2(n31), .ZN(n181) );
  NOR3_X2 U83 ( .A1(n27), .A2(n183), .A3(n22), .ZN(n179) );
  OAI22_X2 U84 ( .A1(n17), .A2(n33), .B1(n18), .B2(n32), .ZN(n178) );
  OAI21_X2 U85 ( .A1(n27), .A2(n22), .B(n183), .ZN(n177) );
  AOI21_X2 U86 ( .A1(dat_in_b[5]), .A2(dat_in_a[0]), .B(n182), .ZN(n183) );
  OAI22_X2 U87 ( .A1(n20), .A2(n30), .B1(n28), .B2(n21), .ZN(n182) );
  NOR3_X2 U88 ( .A1(n9), .A2(n112), .A3(n185), .ZN(n184) );
  NOR3_X2 U89 ( .A1(n187), .A2(n188), .A3(n189), .ZN(n116) );
  OAI22_X2 U90 ( .A1(n24), .A2(n19), .B1(n76), .B2(n62), .ZN(n189) );
  NOR3_X2 U91 ( .A1(n17), .A2(n190), .A3(n27), .ZN(n187) );
  OAI22_X2 U92 ( .A1(n26), .A2(n20), .B1(n25), .B2(n21), .ZN(n115) );
  OAI21_X2 U93 ( .A1(n17), .A2(n27), .B(n190), .ZN(n114) );
  AOI21_X2 U94 ( .A1(dat_in_b[5]), .A2(dat_in_a[4]), .B(n10), .ZN(n190) );
  AOI22_X2 U95 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n191) );
  AOI21_X2 U96 ( .A1(n193), .A2(n194), .B(n93), .ZN(n192) );
  NOR3_X2 U97 ( .A1(n18), .A2(n198), .A3(n26), .ZN(n197) );
  NOR3_X2 U98 ( .A1(n27), .A2(n76), .A3(n28), .ZN(n195) );
  NAND2_X2 U99 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .ZN(n76) );
  NOR3_X2 U100 ( .A1(n193), .A2(n25), .A3(n20), .ZN(n94) );
  AOI21_X2 U101 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n199), .ZN(n193) );
  OAI21_X2 U102 ( .A1(n26), .A2(n18), .B(n198), .ZN(n199) );
  AOI22_X2 U103 ( .A1(dat_in_a[7]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[4]), .ZN(n198) );
  INV_X8 U104 ( .I(n34), .ZN(dat_o[15]) );
  INV_X8 U105 ( .I(dat_in_a[7]), .ZN(n2) );
  INV_X8 U106 ( .I(n82), .ZN(n3) );
  INV_X8 U107 ( .I(n117), .ZN(n4) );
  INV_X8 U108 ( .I(n111), .ZN(n5) );
  INV_X8 U109 ( .I(n135), .ZN(n6) );
  INV_X8 U110 ( .I(n134), .ZN(n7) );
  INV_X8 U111 ( .I(n123), .ZN(n8) );
  INV_X8 U112 ( .I(n116), .ZN(n9) );
  INV_X8 U113 ( .I(n191), .ZN(n10) );
  INV_X8 U114 ( .I(n88), .ZN(n11) );
  INV_X8 U115 ( .I(n76), .ZN(n12) );
  INV_X8 U116 ( .I(n140), .ZN(n13) );
  INV_X8 U117 ( .I(n44), .ZN(dat_o[5]) );
  INV_X8 U118 ( .I(n160), .ZN(n15) );
  INV_X8 U119 ( .I(n101), .ZN(n16) );
  INV_X8 U120 ( .I(dat_in_a[5]), .ZN(n17) );
  INV_X8 U122 ( .I(n154), .ZN(n19) );
  INV_X8 U123 ( .I(dat_in_a[3]), .ZN(n20) );
  INV_X8 U124 ( .I(dat_in_a[2]), .ZN(n21) );
  INV_X8 U125 ( .I(dat_in_a[1]), .ZN(n22) );
  INV_X8 U126 ( .I(dat_in_a[0]), .ZN(n23) );
  INV_X8 U127 ( .I(n100), .ZN(n24) );
  INV_X8 U129 ( .I(dat_in_b[6]), .ZN(n26) );
  INV_X8 U131 ( .I(dat_in_b[3]), .ZN(n28) );
  INV_X8 U132 ( .I(n67), .ZN(n29) );
  INV_X8 U133 ( .I(dat_in_b[2]), .ZN(n30) );
  INV_X8 U134 ( .I(n69), .ZN(n31) );
  INV_X8 U135 ( .I(dat_in_b[1]), .ZN(n32) );
  INV_X8 U136 ( .I(dat_in_b[0]), .ZN(n33) );
  XOR2_X1 U137 ( .A1(n4), .A2(n38), .Z(dat_o[9]) );
  XOR2_X1 U138 ( .A1(n39), .A2(n40), .Z(dat_o[8]) );
  XOR2_X1 U139 ( .A1(n41), .A2(n6), .Z(dat_o[7]) );
  XOR2_X1 U140 ( .A1(n42), .A2(n43), .Z(dat_o[6]) );
  OR3_X1 U141 ( .A1(n47), .A2(n48), .A3(n49), .Z(dat_o[4]) );
  XOR2_X1 U142 ( .A1(n50), .A2(n51), .Z(n49) );
  OR2_X1 U143 ( .A1(n33), .A2(n18), .Z(n53) );
  XNOR2_X1 U144 ( .A1(n47), .A2(n58), .ZN(n57) );
  OR2_X1 U145 ( .A1(n22), .A2(n62), .Z(n61) );
  NOR2_X2 U146 ( .A1(n60), .A2(n59), .ZN(n47) );
  OR2_X1 U147 ( .A1(n63), .A2(n64), .Z(dat_o[2]) );
  AND3_X1 U148 ( .A1(n56), .A2(n55), .A3(n65), .Z(n64) );
  OR2_X1 U149 ( .A1(n68), .A2(n21), .Z(n56) );
  NOR2_X2 U150 ( .A1(n63), .A2(n70), .ZN(dat_o[1]) );
  AND3_X1 U151 ( .A1(dat_in_b[1]), .A2(dat_in_a[1]), .A3(dat_o[0]), .Z(n63) );
  XOR2_X1 U152 ( .A1(n36), .A2(n35), .Z(dat_o[14]) );
  XOR2_X1 U153 ( .A1(n71), .A2(n72), .Z(dat_o[13]) );
  XNOR2_X1 U154 ( .A1(n73), .A2(n74), .ZN(n72) );
  OR2_X1 U155 ( .A1(n37), .A2(n75), .Z(n74) );
  NOR2_X2 U156 ( .A1(n76), .A2(n24), .ZN(n37) );
  AND2_X1 U157 ( .A1(n77), .A2(n78), .Z(n73) );
  XOR2_X1 U158 ( .A1(n79), .A2(n80), .Z(dat_o[12]) );
  XNOR2_X1 U159 ( .A1(n81), .A2(n82), .ZN(n80) );
  AND2_X1 U160 ( .A1(n85), .A2(n77), .Z(n84) );
  XOR2_X1 U161 ( .A1(n89), .A2(n90), .Z(dat_o[11]) );
  OR3_X1 U162 ( .A1(n93), .A2(n94), .A3(n95), .Z(n92) );
  OR2_X1 U163 ( .A1(n93), .A2(n94), .Z(n96) );
  XNOR2_X1 U164 ( .A1(n97), .A2(n87), .ZN(n95) );
  OR2_X1 U165 ( .A1(n98), .A2(n99), .Z(n87) );
  AND2_X1 U166 ( .A1(dat_in_b[5]), .A2(n12), .Z(n102) );
  XOR2_X1 U167 ( .A1(n104), .A2(n103), .Z(dat_o[10]) );
  XNOR2_X1 U168 ( .A1(n112), .A2(n113), .ZN(n107) );
  XNOR2_X1 U169 ( .A1(n124), .A2(n125), .ZN(n119) );
  OR4_X1 U170 ( .A1(n126), .A2(n127), .A3(n128), .A4(n129), .Z(n111) );
  OR2_X1 U171 ( .A1(n131), .A2(n27), .Z(n130) );
  AND3_X1 U172 ( .A1(dat_in_a[3]), .A2(n132), .A3(dat_in_b[5]), .Z(n128) );
  AND3_X1 U173 ( .A1(dat_in_a[5]), .A2(n133), .A3(dat_in_b[3]), .Z(n127) );
  OR2_X1 U174 ( .A1(n110), .A2(n109), .Z(n124) );
  XNOR2_X1 U175 ( .A1(n141), .A2(n142), .ZN(n136) );
  OR4_X1 U176 ( .A1(n143), .A2(n144), .A3(n145), .A4(n146), .Z(n123) );
  OR3_X1 U177 ( .A1(n147), .A2(n148), .A3(n149), .Z(n146) );
  NOR2_X2 U178 ( .A1(n31), .A2(n76), .ZN(n149) );
  AND3_X1 U179 ( .A1(dat_in_b[6]), .A2(n152), .A3(dat_in_a[1]), .Z(n145) );
  AND3_X1 U180 ( .A1(dat_in_a[5]), .A2(n153), .A3(dat_in_b[2]), .Z(n144) );
  AND3_X1 U181 ( .A1(dat_in_b[4]), .A2(dat_in_b[5]), .A3(n154), .Z(n143) );
  OR2_X1 U182 ( .A1(n122), .A2(n121), .Z(n141) );
  OR3_X1 U183 ( .A1(n15), .A2(n157), .A3(n158), .Z(n156) );
  OR2_X1 U184 ( .A1(n157), .A2(n15), .Z(n159) );
  XNOR2_X1 U185 ( .A1(n161), .A2(n162), .ZN(n158) );
  OR4_X1 U186 ( .A1(n163), .A2(n164), .A3(n165), .A4(n166), .Z(n140) );
  OR2_X1 U187 ( .A1(n168), .A2(n26), .Z(n167) );
  AND3_X1 U188 ( .A1(dat_in_b[5]), .A2(n169), .A3(dat_in_a[1]), .Z(n165) );
  AND3_X1 U189 ( .A1(dat_in_b[0]), .A2(n170), .A3(dat_in_a[6]), .Z(n164) );
  OR2_X1 U190 ( .A1(n139), .A2(n138), .Z(n161) );
  OR2_X1 U191 ( .A1(n54), .A2(n50), .Z(n45) );
  OR3_X1 U192 ( .A1(n172), .A2(n173), .A3(n174), .Z(n54) );
  NOR2_X2 U193 ( .A1(n29), .A2(n19), .ZN(n174) );
  NOR2_X2 U194 ( .A1(n32), .A2(n30), .ZN(n67) );
  AND3_X1 U195 ( .A1(dat_in_b[3]), .A2(n171), .A3(dat_in_a[1]), .Z(n172) );
  XNOR2_X1 U196 ( .A1(n157), .A2(n176), .ZN(n46) );
  NOR2_X2 U197 ( .A1(n33), .A2(n32), .ZN(n69) );
  NOR2_X2 U198 ( .A1(n18), .A2(n17), .ZN(n101) );
  AND3_X1 U199 ( .A1(dat_in_a[0]), .A2(n182), .A3(dat_in_b[5]), .Z(n180) );
  AND2_X1 U200 ( .A1(n177), .A2(n178), .Z(n157) );
  NOR2_X2 U201 ( .A1(n105), .A2(n184), .ZN(n104) );
  AND3_X1 U202 ( .A1(n185), .A2(n186), .A3(mask[5]), .Z(n105) );
  OR2_X1 U203 ( .A1(n112), .A2(n9), .Z(n186) );
  OR2_X1 U204 ( .A1(n30), .A2(n28), .Z(n62) );
  NOR2_X2 U205 ( .A1(n21), .A2(n20), .ZN(n154) );
  NOR2_X2 U206 ( .A1(n25), .A2(n26), .ZN(n100) );
  AND3_X1 U207 ( .A1(dat_in_a[4]), .A2(n10), .A3(dat_in_b[5]), .Z(n188) );
  AND2_X1 U208 ( .A1(n114), .A2(n115), .Z(n112) );
  XOR2_X1 U209 ( .A1(n94), .A2(n192), .Z(n185) );
  OR3_X1 U210 ( .A1(n195), .A2(n196), .A3(n197), .Z(n93) );
  AND3_X1 U211 ( .A1(dat_in_b[5]), .A2(n199), .A3(dat_in_a[5]), .Z(n196) );
  OR2_X1 U212 ( .A1(n20), .A2(n25), .Z(n194) );
  AND2_X1 U213 ( .A1(dat_in_b[0]), .A2(dat_in_a[0]), .Z(dat_o[0]) );
  INV_X16 U214 ( .I(dat_in_b[4]), .ZN(n27) );
  INV_X16 U215 ( .I(dat_in_b[7]), .ZN(n25) );
  INV_X16 U216 ( .I(dat_in_a[4]), .ZN(n18) );
endmodule

