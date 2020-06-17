/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 12:17:52 2020
/////////////////////////////////////////////////////////////


module ERCM8_7 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa6, cpa7, cpa8, cpa9, cpa10, cpa11, cpa12, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;
  assign dat_o[8] = cpa8;
  assign dat_o[9] = cpa9;
  assign dat_o[10] = cpa10;
  assign dat_o[11] = cpa11;
  assign dat_o[12] = cpa12;

  AOI21_X2 U2 ( .A1(n29), .A2(n30), .B(n31), .ZN(n28) );
  AOI21_X2 U3 ( .A1(n37), .A2(n38), .B(n39), .ZN(n36) );
  AOI21_X2 U4 ( .A1(n44), .A2(n45), .B(n33), .ZN(n43) );
  NOR3_X2 U5 ( .A1(n18), .A2(n51), .A3(n23), .ZN(n47) );
  NOR3_X2 U6 ( .A1(n44), .A2(n13), .A3(n27), .ZN(n32) );
  AOI21_X2 U7 ( .A1(dat_in_a[1]), .A2(dat_in_b[3]), .B(n52), .ZN(n44) );
  OAI21_X2 U8 ( .A1(n23), .A2(n18), .B(n51), .ZN(n52) );
  AOI22_X2 U9 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_a[2]), .B2(
        dat_in_b[2]), .ZN(n51) );
  NAND3_X2 U10 ( .A1(n53), .A2(n54), .A3(n55), .ZN(dat_o[3]) );
  AOI21_X2 U11 ( .A1(n57), .A2(n58), .B(n41), .ZN(n56) );
  OAI22_X2 U12 ( .A1(n14), .A2(n25), .B1(n59), .B2(n60), .ZN(n41) );
  AOI22_X2 U13 ( .A1(dat_in_b[2]), .A2(dat_in_a[1]), .B1(dat_in_a[0]), .B2(
        dat_in_b[3]), .ZN(n58) );
  AOI22_X2 U14 ( .A1(dat_in_a[3]), .A2(dat_in_b[0]), .B1(dat_in_a[2]), .B2(
        dat_in_b[1]), .ZN(n57) );
  OAI21_X2 U15 ( .A1(n16), .A2(n27), .B(n64), .ZN(n63) );
  AOI22_X2 U16 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n64) );
  NAND3_X2 U17 ( .A1(dat_in_a[1]), .A2(dat_in_a[0]), .A3(n50), .ZN(n53) );
  AOI22_X2 U18 ( .A1(n66), .A2(dat_in_a[1]), .B1(dat_o[0]), .B2(dat_in_b[2]), 
        .ZN(n65) );
  AOI22_X2 U19 ( .A1(dat_in_a[0]), .A2(dat_in_b[1]), .B1(dat_in_b[0]), .B2(
        dat_in_a[1]), .ZN(n67) );
  OAI22_X2 U20 ( .A1(n68), .A2(n69), .B1(n4), .B2(n70), .ZN(n29) );
  NAND2_X2 U21 ( .A1(n71), .A2(n72), .ZN(n70) );
  NOR3_X2 U22 ( .A1(n31), .A2(n7), .A3(n20), .ZN(n30) );
  AOI22_X2 U23 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n74) );
  NAND2_X2 U24 ( .A1(n71), .A2(n77), .ZN(n73) );
  OAI21_X2 U25 ( .A1(n80), .A2(n81), .B(n82), .ZN(n79) );
  AOI21_X2 U26 ( .A1(n85), .A2(n86), .B(n87), .ZN(n84) );
  NAND2_X2 U27 ( .A1(n88), .A2(n89), .ZN(cpa8) );
  AOI21_X2 U28 ( .A1(n90), .A2(n91), .B(n5), .ZN(n89) );
  AOI21_X2 U29 ( .A1(n80), .A2(n81), .B(n2), .ZN(n94) );
  NOR4_X2 U30 ( .A1(n95), .A2(n96), .A3(n97), .A4(n3), .ZN(n82) );
  AOI22_X2 U31 ( .A1(n99), .A2(n50), .B1(dat_in_a[4]), .B2(n100), .ZN(n98) );
  NOR3_X2 U32 ( .A1(n16), .A2(n19), .A3(n17), .ZN(n95) );
  AOI21_X2 U33 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B(n102), .ZN(n80) );
  OAI22_X2 U34 ( .A1(n21), .A2(n16), .B1(n20), .B2(n17), .ZN(n102) );
  AOI21_X2 U35 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n103), .ZN(n81) );
  OAI21_X2 U36 ( .A1(n23), .A2(n13), .B(n101), .ZN(n103) );
  AOI22_X2 U37 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n101) );
  OAI21_X2 U38 ( .A1(n106), .A2(n107), .B(n108), .ZN(n105) );
  OAI21_X2 U39 ( .A1(n90), .A2(n91), .B(n92), .ZN(n110) );
  NOR4_X2 U40 ( .A1(n111), .A2(n112), .A3(n113), .A4(n114), .ZN(n92) );
  NOR3_X2 U41 ( .A1(n21), .A2(n120), .A3(n17), .ZN(n113) );
  NOR3_X2 U42 ( .A1(n12), .A2(n121), .A3(n24), .ZN(n112) );
  NOR3_X2 U43 ( .A1(n23), .A2(n22), .A3(n14), .ZN(n111) );
  OAI21_X2 U44 ( .A1(n21), .A2(n17), .B(n120), .ZN(n90) );
  AOI21_X2 U45 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B(n118), .ZN(n120) );
  OAI22_X2 U46 ( .A1(n23), .A2(n15), .B1(n22), .B2(n16), .ZN(n118) );
  OAI21_X2 U47 ( .A1(n12), .A2(n24), .B(n121), .ZN(n91) );
  AOI21_X2 U48 ( .A1(dat_in_a[4]), .A2(dat_in_b[3]), .B(n119), .ZN(n121) );
  OAI22_X2 U49 ( .A1(n7), .A2(n27), .B1(n9), .B2(n26), .ZN(n119) );
  AOI21_X2 U50 ( .A1(n106), .A2(n107), .B(n8), .ZN(n124) );
  NOR4_X2 U51 ( .A1(n125), .A2(n126), .A3(n127), .A4(n11), .ZN(n108) );
  AOI22_X2 U52 ( .A1(n129), .A2(n50), .B1(dat_in_a[0]), .B2(n130), .ZN(n128)
         );
  AOI21_X2 U53 ( .A1(dat_in_b[5]), .A2(dat_in_a[1]), .B(n132), .ZN(n106) );
  OAI21_X2 U54 ( .A1(n21), .A2(n18), .B(n131), .ZN(n132) );
  AOI22_X2 U55 ( .A1(dat_in_a[3]), .A2(dat_in_b[3]), .B1(dat_in_b[4]), .B2(
        dat_in_a[2]), .ZN(n131) );
  AOI21_X2 U56 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .B(n133), .ZN(n107) );
  OAI22_X2 U57 ( .A1(n12), .A2(n26), .B1(n13), .B2(n24), .ZN(n133) );
  OAI22_X2 U58 ( .A1(n14), .A2(n59), .B1(n10), .B2(n25), .ZN(n136) );
  NOR3_X2 U59 ( .A1(n18), .A2(n137), .A3(n22), .ZN(n135) );
  AOI22_X2 U60 ( .A1(dat_in_a[5]), .A2(dat_in_b[0]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n38) );
  AOI21_X2 U61 ( .A1(dat_in_b[4]), .A2(dat_in_a[1]), .B(n138), .ZN(n37) );
  OAI21_X2 U62 ( .A1(n22), .A2(n18), .B(n137), .ZN(n138) );
  AOI22_X2 U63 ( .A1(dat_in_b[2]), .A2(dat_in_a[3]), .B1(dat_in_a[2]), .B2(
        dat_in_b[3]), .ZN(n137) );
  AOI21_X2 U64 ( .A1(n139), .A2(n140), .B(n76), .ZN(n77) );
  NOR3_X2 U65 ( .A1(n6), .A2(n21), .A3(n22), .ZN(n75) );
  AOI21_X2 U66 ( .A1(dat_in_b[7]), .A2(dat_in_a[5]), .B(n142), .ZN(n141) );
  NAND3_X2 U67 ( .A1(n142), .A2(dat_in_b[7]), .A3(dat_in_a[5]), .ZN(n139) );
  OAI22_X2 U68 ( .A1(n7), .A2(n22), .B1(n9), .B2(n21), .ZN(n142) );
  NAND2_X2 U69 ( .A1(n143), .A2(n144), .ZN(n71) );
  OAI21_X2 U70 ( .A1(n149), .A2(n150), .B(n144), .ZN(n148) );
  AOI22_X2 U71 ( .A1(n151), .A2(n129), .B1(dat_in_b[4]), .B2(n152), .ZN(n144)
         );
  NAND2_X2 U72 ( .A1(n150), .A2(n149), .ZN(n143) );
  OAI22_X2 U73 ( .A1(n21), .A2(n12), .B1(n20), .B2(n13), .ZN(n149) );
  OAI22_X2 U74 ( .A1(n7), .A2(n23), .B1(n9), .B2(n22), .ZN(n150) );
  AOI21_X2 U75 ( .A1(n155), .A2(n156), .B(n146), .ZN(n154) );
  NOR3_X2 U76 ( .A1(n13), .A2(n160), .A3(n21), .ZN(n159) );
  NOR3_X2 U77 ( .A1(n155), .A2(n20), .A3(n15), .ZN(n145) );
  AOI21_X2 U78 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n161), .ZN(n155) );
  OAI21_X2 U79 ( .A1(n21), .A2(n13), .B(n160), .ZN(n161) );
  AOI22_X2 U80 ( .A1(dat_in_a[7]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[4]), .ZN(n160) );
  OAI22_X2 U81 ( .A1(n19), .A2(n14), .B1(n6), .B2(n59), .ZN(n164) );
  NAND2_X2 U82 ( .A1(dat_in_b[3]), .A2(dat_in_b[2]), .ZN(n59) );
  NOR3_X2 U83 ( .A1(n13), .A2(n165), .A3(n22), .ZN(n163) );
  AOI22_X2 U84 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B1(dat_in_b[7]), .B2(
        dat_in_a[2]), .ZN(n86) );
  AOI21_X2 U85 ( .A1(dat_in_b[4]), .A2(dat_in_a[5]), .B(n166), .ZN(n85) );
  OAI21_X2 U86 ( .A1(n22), .A2(n13), .B(n165), .ZN(n166) );
  AOI22_X2 U87 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n165) );
  INV_X8 U88 ( .I(n28), .ZN(dat_o[15]) );
  INV_X8 U89 ( .I(n82), .ZN(n2) );
  INV_X8 U90 ( .I(n98), .ZN(n3) );
  INV_X8 U91 ( .I(n77), .ZN(n4) );
  INV_X8 U92 ( .I(n92), .ZN(n5) );
  INV_X8 U93 ( .I(n99), .ZN(n6) );
  INV_X8 U94 ( .I(dat_in_a[7]), .ZN(n7) );
  INV_X8 U95 ( .I(n108), .ZN(n8) );
  INV_X8 U96 ( .I(dat_in_a[6]), .ZN(n9) );
  INV_X8 U97 ( .I(n129), .ZN(n10) );
  INV_X8 U98 ( .I(n128), .ZN(n11) );
  INV_X8 U99 ( .I(dat_in_a[5]), .ZN(n12) );
  INV_X8 U101 ( .I(n49), .ZN(n14) );
  INV_X8 U102 ( .I(dat_in_a[3]), .ZN(n15) );
  INV_X8 U103 ( .I(dat_in_a[2]), .ZN(n16) );
  INV_X8 U104 ( .I(dat_in_a[1]), .ZN(n17) );
  INV_X8 U105 ( .I(dat_in_a[0]), .ZN(n18) );
  INV_X8 U106 ( .I(n151), .ZN(n19) );
  INV_X8 U107 ( .I(dat_in_b[7]), .ZN(n20) );
  INV_X8 U110 ( .I(dat_in_b[4]), .ZN(n23) );
  INV_X8 U111 ( .I(dat_in_b[2]), .ZN(n24) );
  INV_X8 U112 ( .I(n66), .ZN(n25) );
  INV_X8 U113 ( .I(dat_in_b[1]), .ZN(n26) );
  INV_X8 U114 ( .I(dat_in_b[0]), .ZN(n27) );
  OR3_X1 U115 ( .A1(n32), .A2(n33), .A3(n34), .Z(dat_o[5]) );
  XOR2_X1 U116 ( .A1(n35), .A2(n36), .Z(n34) );
  OR3_X1 U117 ( .A1(n40), .A2(n41), .A3(n42), .Z(dat_o[4]) );
  XOR2_X1 U118 ( .A1(n32), .A2(n43), .Z(n42) );
  OR3_X1 U119 ( .A1(n46), .A2(n47), .A3(n48), .Z(n33) );
  AND2_X1 U120 ( .A1(n49), .A2(n50), .Z(n48) );
  AND3_X1 U121 ( .A1(dat_in_a[1]), .A2(n52), .A3(dat_in_b[3]), .Z(n46) );
  OR2_X1 U122 ( .A1(n27), .A2(n13), .Z(n45) );
  XNOR2_X1 U123 ( .A1(n40), .A2(n56), .ZN(n55) );
  OR2_X1 U124 ( .A1(n17), .A2(n18), .Z(n60) );
  NOR2_X2 U125 ( .A1(n57), .A2(n58), .ZN(n40) );
  OR2_X1 U126 ( .A1(n61), .A2(n62), .Z(dat_o[2]) );
  AND3_X1 U127 ( .A1(n54), .A2(n53), .A3(n63), .Z(n62) );
  OR2_X1 U128 ( .A1(n65), .A2(n16), .Z(n54) );
  NOR2_X2 U129 ( .A1(n61), .A2(n67), .ZN(dat_o[1]) );
  AND3_X1 U130 ( .A1(dat_in_a[1]), .A2(dat_in_b[1]), .A3(dat_o[0]), .Z(n61) );
  XOR2_X1 U131 ( .A1(n30), .A2(n29), .Z(dat_o[14]) );
  XNOR2_X1 U132 ( .A1(n73), .A2(n72), .ZN(dat_o[13]) );
  XOR2_X1 U133 ( .A1(n68), .A2(n69), .Z(n72) );
  OR2_X1 U134 ( .A1(n31), .A2(n74), .Z(n69) );
  NOR2_X2 U135 ( .A1(n6), .A2(n19), .ZN(n31) );
  NOR2_X2 U136 ( .A1(n75), .A2(n76), .ZN(n68) );
  AND2_X1 U137 ( .A1(dat_in_b[0]), .A2(dat_in_a[0]), .Z(dat_o[0]) );
  OR2_X1 U138 ( .A1(n78), .A2(n79), .Z(cpa9) );
  XOR2_X1 U139 ( .A1(n83), .A2(n84), .Z(n78) );
  XNOR2_X1 U140 ( .A1(n93), .A2(n94), .ZN(n88) );
  NOR2_X2 U141 ( .A1(n101), .A2(n23), .ZN(n100) );
  AND3_X1 U142 ( .A1(dat_in_a[3]), .A2(n102), .A3(dat_in_b[5]), .Z(n97) );
  AND3_X1 U143 ( .A1(dat_in_a[5]), .A2(n103), .A3(dat_in_b[3]), .Z(n96) );
  NOR2_X2 U144 ( .A1(n81), .A2(n80), .ZN(n93) );
  OR2_X1 U145 ( .A1(n104), .A2(n105), .Z(cpa7) );
  XNOR2_X1 U146 ( .A1(n109), .A2(n110), .ZN(n104) );
  OR3_X1 U147 ( .A1(n115), .A2(n116), .A3(n117), .Z(n114) );
  NOR2_X2 U148 ( .A1(n25), .A2(n6), .ZN(n117) );
  AND3_X1 U149 ( .A1(dat_in_a[0]), .A2(n118), .A3(dat_in_b[7]), .Z(n116) );
  AND3_X1 U150 ( .A1(dat_in_b[3]), .A2(n119), .A3(dat_in_a[4]), .Z(n115) );
  AND2_X1 U151 ( .A1(n91), .A2(n90), .Z(n109) );
  OR3_X1 U152 ( .A1(n35), .A2(n39), .A3(n122), .Z(cpa6) );
  XOR2_X1 U153 ( .A1(n123), .A2(n124), .Z(n122) );
  NOR2_X2 U154 ( .A1(n131), .A2(n21), .ZN(n130) );
  NOR2_X2 U155 ( .A1(n26), .A2(n24), .ZN(n50) );
  AND3_X1 U156 ( .A1(dat_in_b[5]), .A2(n132), .A3(dat_in_a[1]), .Z(n127) );
  AND3_X1 U157 ( .A1(dat_in_b[0]), .A2(n133), .A3(dat_in_a[6]), .Z(n126) );
  AND3_X1 U158 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n49), .Z(n125) );
  NOR2_X2 U159 ( .A1(n107), .A2(n106), .ZN(n123) );
  OR3_X1 U160 ( .A1(n134), .A2(n135), .A3(n136), .Z(n39) );
  NOR2_X2 U161 ( .A1(n27), .A2(n26), .ZN(n66) );
  AND3_X1 U162 ( .A1(dat_in_b[4]), .A2(n138), .A3(dat_in_a[1]), .Z(n134) );
  NOR2_X2 U163 ( .A1(n37), .A2(n38), .ZN(n35) );
  XNOR2_X1 U164 ( .A1(n71), .A2(n4), .ZN(cpa12) );
  NOR2_X2 U165 ( .A1(n139), .A2(n140), .ZN(n76) );
  OR2_X1 U166 ( .A1(n141), .A2(n75), .Z(n140) );
  OR3_X1 U167 ( .A1(n145), .A2(n146), .A3(n147), .Z(cpa11) );
  XOR2_X1 U168 ( .A1(n143), .A2(n148), .Z(n147) );
  AND2_X1 U169 ( .A1(dat_in_b[5]), .A2(n99), .Z(n152) );
  NOR2_X2 U170 ( .A1(n12), .A2(n13), .ZN(n129) );
  OR3_X1 U171 ( .A1(n83), .A2(n87), .A3(n153), .Z(cpa10) );
  XOR2_X1 U172 ( .A1(n145), .A2(n154), .Z(n153) );
  OR3_X1 U173 ( .A1(n157), .A2(n158), .A3(n159), .Z(n146) );
  AND3_X1 U174 ( .A1(dat_in_b[5]), .A2(n161), .A3(dat_in_a[5]), .Z(n158) );
  AND3_X1 U175 ( .A1(dat_in_b[4]), .A2(n99), .A3(dat_in_b[3]), .Z(n157) );
  OR2_X1 U176 ( .A1(n15), .A2(n20), .Z(n156) );
  OR3_X1 U177 ( .A1(n162), .A2(n163), .A3(n164), .Z(n87) );
  NOR2_X2 U178 ( .A1(n7), .A2(n9), .ZN(n99) );
  NOR2_X2 U179 ( .A1(n15), .A2(n16), .ZN(n49) );
  NOR2_X2 U180 ( .A1(n20), .A2(n21), .ZN(n151) );
  AND3_X1 U181 ( .A1(dat_in_b[4]), .A2(n166), .A3(dat_in_a[5]), .Z(n162) );
  NOR2_X2 U182 ( .A1(n85), .A2(n86), .ZN(n83) );
  INV_X16 U183 ( .I(dat_in_b[5]), .ZN(n22) );
  INV_X16 U184 ( .I(dat_in_b[6]), .ZN(n21) );
  INV_X16 U185 ( .I(dat_in_a[4]), .ZN(n13) );
endmodule

