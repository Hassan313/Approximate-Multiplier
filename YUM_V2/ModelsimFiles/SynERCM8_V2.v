/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sun Jan 26 18:58:49 2020
/////////////////////////////////////////////////////////////


module ERCM8_V2 ( dat_in_a, dat_in_b, mask, dat_o );
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
         n156, n157, n158;

  AOI21_X2 U1 ( .A1(dat_in_a[4]), .A2(dat_in_b[0]), .B(n44), .ZN(n43) );
  NAND2_X2 U2 ( .A1(n45), .A2(n46), .ZN(dat_o[3]) );
  AOI22_X2 U3 ( .A1(dat_in_a[0]), .A2(dat_in_b[3]), .B1(dat_in_a[1]), .B2(
        dat_in_b[2]), .ZN(n46) );
  AOI22_X2 U4 ( .A1(dat_in_b[1]), .A2(dat_in_a[2]), .B1(dat_in_b[0]), .B2(
        dat_in_a[3]), .ZN(n45) );
  OAI21_X2 U5 ( .A1(n19), .A2(n30), .B(n47), .ZN(dat_o[2]) );
  AOI22_X2 U6 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n47) );
  OAI22_X2 U7 ( .A1(n21), .A2(n30), .B1(n29), .B2(n22), .ZN(dat_o[1]) );
  NOR3_X2 U8 ( .A1(n23), .A2(n48), .A3(n10), .ZN(dat_o[15]) );
  AOI21_X2 U9 ( .A1(n1), .A2(n50), .B(n51), .ZN(n48) );
  AOI21_X2 U10 ( .A1(n53), .A2(n54), .B(n55), .ZN(n52) );
  AOI22_X2 U11 ( .A1(dat_in_a[6]), .A2(dat_in_b[7]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n56) );
  AOI21_X2 U12 ( .A1(n58), .A2(n59), .B(n55), .ZN(n54) );
  OAI21_X2 U13 ( .A1(n14), .A2(n60), .B(n61), .ZN(n55) );
  NAND3_X2 U14 ( .A1(dat_in_b[6]), .A2(dat_in_b[5]), .A3(n57), .ZN(n61) );
  AOI22_X2 U15 ( .A1(dat_in_a[7]), .A2(dat_in_b[5]), .B1(dat_in_a[6]), .B2(
        dat_in_b[6]), .ZN(n59) );
  OAI21_X2 U16 ( .A1(n3), .A2(n62), .B(n63), .ZN(n53) );
  OAI21_X2 U17 ( .A1(n65), .A2(n66), .B(n67), .ZN(n64) );
  NAND2_X2 U18 ( .A1(n68), .A2(n63), .ZN(n62) );
  NOR3_X2 U19 ( .A1(n69), .A2(n70), .A3(n71), .ZN(n63) );
  NOR3_X2 U20 ( .A1(n23), .A2(n72), .A3(n15), .ZN(n70) );
  OAI21_X2 U21 ( .A1(n15), .A2(n23), .B(n72), .ZN(n68) );
  AOI21_X2 U22 ( .A1(dat_in_a[5]), .A2(dat_in_b[6]), .B(n2), .ZN(n72) );
  AOI22_X2 U23 ( .A1(dat_in_a[7]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n73) );
  NAND2_X2 U24 ( .A1(n74), .A2(n67), .ZN(n66) );
  NAND2_X2 U25 ( .A1(mask[6]), .A2(n75), .ZN(n67) );
  NAND4_X2 U26 ( .A1(n76), .A2(n77), .A3(n78), .A4(n79), .ZN(n75) );
  NAND3_X2 U27 ( .A1(dat_in_b[4]), .A2(dat_in_b[3]), .A3(n57), .ZN(n79) );
  NAND3_X2 U28 ( .A1(dat_in_b[5]), .A2(n9), .A3(dat_in_a[5]), .ZN(n78) );
  NAND3_X2 U29 ( .A1(n81), .A2(dat_in_a[4]), .A3(dat_in_b[6]), .ZN(n76) );
  OAI21_X2 U30 ( .A1(n17), .A2(n23), .B(n80), .ZN(n74) );
  AOI21_X2 U31 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n9), .ZN(n80) );
  AOI21_X2 U32 ( .A1(dat_in_a[4]), .A2(dat_in_b[6]), .B(n81), .ZN(n82) );
  OAI22_X2 U33 ( .A1(n27), .A2(n10), .B1(n11), .B2(n26), .ZN(n81) );
  AOI21_X2 U34 ( .A1(n33), .A2(n32), .B(n83), .ZN(n65) );
  AOI21_X2 U35 ( .A1(n90), .A2(n91), .B(n92), .ZN(n89) );
  NOR3_X2 U36 ( .A1(n14), .A2(n93), .A3(n26), .ZN(n88) );
  AOI21_X2 U37 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B(n94), .ZN(n84) );
  OAI21_X2 U38 ( .A1(n14), .A2(n26), .B(n93), .ZN(n90) );
  AOI21_X2 U39 ( .A1(dat_in_a[4]), .A2(dat_in_b[5]), .B(n5), .ZN(n93) );
  AOI22_X2 U40 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n95) );
  OAI21_X2 U41 ( .A1(n34), .A2(n35), .B(n96), .ZN(n33) );
  OAI21_X2 U42 ( .A1(n6), .A2(n16), .B(n96), .ZN(n35) );
  OAI21_X2 U43 ( .A1(n97), .A2(n98), .B(mask[4]), .ZN(n96) );
  OAI21_X2 U44 ( .A1(n99), .A2(n100), .B(n101), .ZN(n98) );
  AOI22_X2 U45 ( .A1(n102), .A2(n57), .B1(n103), .B2(n91), .ZN(n101) );
  NOR3_X2 U46 ( .A1(n26), .A2(n107), .A3(n15), .ZN(n106) );
  AOI21_X2 U47 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B(n108), .ZN(n99) );
  OAI22_X2 U48 ( .A1(n19), .A2(n24), .B1(n23), .B2(n21), .ZN(n108) );
  AOI21_X2 U49 ( .A1(dat_in_b[3]), .A2(dat_in_a[5]), .B(n109), .ZN(n100) );
  OAI21_X2 U50 ( .A1(n15), .A2(n26), .B(n107), .ZN(n109) );
  AOI22_X2 U51 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n107) );
  AOI21_X2 U52 ( .A1(n37), .A2(n7), .B(n110), .ZN(n34) );
  OAI21_X2 U53 ( .A1(n111), .A2(n112), .B(n8), .ZN(n36) );
  AOI21_X2 U54 ( .A1(n113), .A2(n114), .B(n31), .ZN(n110) );
  AOI21_X2 U55 ( .A1(n112), .A2(n111), .B(n115), .ZN(n114) );
  OAI22_X2 U56 ( .A1(n116), .A2(n22), .B1(n20), .B2(n117), .ZN(n115) );
  NAND2_X2 U57 ( .A1(n118), .A2(dat_in_b[7]), .ZN(n116) );
  NOR4_X2 U58 ( .A1(n119), .A2(n120), .A3(n121), .A4(n122), .ZN(n113) );
  NOR3_X2 U59 ( .A1(n28), .A2(n125), .A3(n14), .ZN(n119) );
  NAND2_X2 U60 ( .A1(n20), .A2(n117), .ZN(n112) );
  AOI21_X2 U61 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B(n118), .ZN(n117) );
  OAI22_X2 U62 ( .A1(n26), .A2(n17), .B1(n19), .B2(n25), .ZN(n118) );
  OAI21_X2 U63 ( .A1(n28), .A2(n14), .B(n125), .ZN(n111) );
  AOI21_X2 U64 ( .A1(dat_in_b[3]), .A2(dat_in_a[4]), .B(n124), .ZN(n125) );
  OAI22_X2 U65 ( .A1(n10), .A2(n30), .B1(n11), .B2(n29), .ZN(n124) );
  OAI21_X2 U66 ( .A1(n38), .A2(n12), .B(n126), .ZN(n37) );
  AOI21_X2 U67 ( .A1(n127), .A2(n128), .B(n13), .ZN(n39) );
  OAI21_X2 U68 ( .A1(n129), .A2(n130), .B(mask[2]), .ZN(n126) );
  OAI21_X2 U69 ( .A1(n128), .A2(n127), .B(n131), .ZN(n130) );
  NOR3_X2 U70 ( .A1(n22), .A2(n134), .A3(n24), .ZN(n133) );
  NAND3_X2 U71 ( .A1(n136), .A2(n137), .A3(n138), .ZN(n129) );
  NAND3_X2 U72 ( .A1(n139), .A2(dat_in_a[6]), .A3(dat_in_b[0]), .ZN(n138) );
  NAND3_X2 U73 ( .A1(dat_in_a[5]), .A2(dat_in_a[4]), .A3(n102), .ZN(n137) );
  NAND3_X2 U74 ( .A1(dat_in_b[4]), .A2(dat_in_b[3]), .A3(n123), .ZN(n136) );
  AOI21_X2 U75 ( .A1(dat_in_b[5]), .A2(dat_in_a[1]), .B(n135), .ZN(n128) );
  OAI21_X2 U76 ( .A1(n24), .A2(n22), .B(n134), .ZN(n135) );
  AOI22_X2 U77 ( .A1(dat_in_b[3]), .A2(dat_in_a[3]), .B1(dat_in_a[2]), .B2(
        dat_in_b[4]), .ZN(n134) );
  AOI21_X2 U78 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .B(n139), .ZN(n127) );
  OAI22_X2 U79 ( .A1(n14), .A2(n29), .B1(n28), .B2(n15), .ZN(n139) );
  AOI21_X2 U80 ( .A1(n41), .A2(n40), .B(n140), .ZN(n38) );
  OAI22_X2 U81 ( .A1(n22), .A2(n147), .B1(n29), .B2(n148), .ZN(n146) );
  AOI21_X2 U82 ( .A1(dat_in_b[0]), .A2(dat_in_a[5]), .B(n152), .ZN(n141) );
  OAI21_X2 U83 ( .A1(n15), .A2(n29), .B(n149), .ZN(n152) );
  AOI21_X2 U84 ( .A1(dat_in_b[4]), .A2(dat_in_a[1]), .B(n151), .ZN(n149) );
  OAI21_X2 U85 ( .A1(n25), .A2(n22), .B(n150), .ZN(n151) );
  AOI22_X2 U86 ( .A1(dat_in_b[2]), .A2(dat_in_a[3]), .B1(dat_in_a[2]), .B2(
        dat_in_b[3]), .ZN(n150) );
  NAND4_X2 U87 ( .A1(n153), .A2(n154), .A3(n155), .A4(n156), .ZN(n42) );
  NAND3_X2 U88 ( .A1(n44), .A2(dat_in_a[4]), .A3(dat_in_b[0]), .ZN(n155) );
  OAI21_X2 U89 ( .A1(n27), .A2(n21), .B(n157), .ZN(n44) );
  AOI21_X2 U90 ( .A1(dat_in_b[4]), .A2(dat_in_a[0]), .B(n18), .ZN(n157) );
  AOI22_X2 U91 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_a[2]), .B2(
        dat_in_b[2]), .ZN(n158) );
  NAND2_X2 U92 ( .A1(n123), .A2(n102), .ZN(n153) );
  INV_X8 U93 ( .I(n52), .ZN(n1) );
  INV_X8 U94 ( .I(n73), .ZN(n2) );
  INV_X8 U95 ( .I(n64), .ZN(n3) );
  INV_X8 U96 ( .I(n89), .ZN(n4) );
  INV_X8 U97 ( .I(n95), .ZN(n5) );
  INV_X8 U98 ( .I(n100), .ZN(n6) );
  INV_X8 U99 ( .I(n36), .ZN(n7) );
  INV_X8 U100 ( .I(n110), .ZN(n8) );
  INV_X8 U101 ( .I(n82), .ZN(n9) );
  INV_X8 U102 ( .I(dat_in_a[7]), .ZN(n10) );
  INV_X8 U103 ( .I(dat_in_a[6]), .ZN(n11) );
  INV_X8 U104 ( .I(n39), .ZN(n12) );
  INV_X8 U105 ( .I(n126), .ZN(n13) );
  INV_X8 U106 ( .I(dat_in_a[5]), .ZN(n14) );
  INV_X8 U107 ( .I(dat_in_a[4]), .ZN(n15) );
  INV_X8 U108 ( .I(n99), .ZN(n16) );
  INV_X8 U109 ( .I(dat_in_a[3]), .ZN(n17) );
  INV_X8 U110 ( .I(n158), .ZN(n18) );
  INV_X8 U111 ( .I(dat_in_a[2]), .ZN(n19) );
  INV_X8 U112 ( .I(n103), .ZN(n20) );
  INV_X8 U113 ( .I(dat_in_a[1]), .ZN(n21) );
  INV_X8 U114 ( .I(dat_in_a[0]), .ZN(n22) );
  INV_X8 U116 ( .I(dat_in_b[6]), .ZN(n24) );
  INV_X8 U117 ( .I(dat_in_b[5]), .ZN(n25) );
  INV_X8 U118 ( .I(dat_in_b[4]), .ZN(n26) );
  INV_X8 U119 ( .I(dat_in_b[3]), .ZN(n27) );
  INV_X8 U120 ( .I(dat_in_b[2]), .ZN(n28) );
  INV_X8 U121 ( .I(dat_in_b[1]), .ZN(n29) );
  INV_X8 U122 ( .I(dat_in_b[0]), .ZN(n30) );
  INV_X8 U123 ( .I(mask[3]), .ZN(n31) );
  XOR2_X1 U124 ( .A1(n32), .A2(n33), .Z(dat_o[9]) );
  XOR2_X1 U125 ( .A1(n34), .A2(n35), .Z(dat_o[8]) );
  XNOR2_X1 U126 ( .A1(n36), .A2(n37), .ZN(dat_o[7]) );
  XNOR2_X1 U127 ( .A1(n38), .A2(n39), .ZN(dat_o[6]) );
  XOR2_X1 U128 ( .A1(n40), .A2(n41), .Z(dat_o[5]) );
  NOR2_X2 U129 ( .A1(n42), .A2(n43), .ZN(dat_o[4]) );
  XNOR2_X1 U130 ( .A1(n48), .A2(n49), .ZN(dat_o[14]) );
  NOR2_X2 U131 ( .A1(n10), .A2(n23), .ZN(n49) );
  XNOR2_X1 U132 ( .A1(n50), .A2(n52), .ZN(dat_o[13]) );
  NOR2_X2 U133 ( .A1(n51), .A2(n56), .ZN(n50) );
  AND3_X1 U134 ( .A1(dat_in_b[6]), .A2(dat_in_b[7]), .A3(n57), .Z(n51) );
  XOR2_X1 U135 ( .A1(n53), .A2(n54), .Z(dat_o[12]) );
  OR2_X1 U136 ( .A1(n59), .A2(n23), .Z(n60) );
  OR2_X1 U137 ( .A1(n14), .A2(n23), .Z(n58) );
  XNOR2_X1 U138 ( .A1(n62), .A2(n64), .ZN(dat_o[11]) );
  AND3_X1 U139 ( .A1(dat_in_b[6]), .A2(n2), .A3(dat_in_a[5]), .Z(n71) );
  AND3_X1 U140 ( .A1(dat_in_b[4]), .A2(dat_in_b[5]), .A3(n57), .Z(n69) );
  XOR2_X1 U141 ( .A1(n65), .A2(n66), .Z(dat_o[10]) );
  OR3_X1 U142 ( .A1(n80), .A2(n23), .A3(n17), .Z(n77) );
  NOR2_X2 U143 ( .A1(n84), .A2(n83), .ZN(n32) );
  AND2_X1 U144 ( .A1(mask[5]), .A2(n85), .Z(n83) );
  OR4_X1 U145 ( .A1(n86), .A2(n87), .A3(n88), .A4(n4), .Z(n85) );
  AND3_X1 U146 ( .A1(n5), .A2(dat_in_a[4]), .A3(dat_in_b[5]), .Z(n92) );
  AND3_X1 U147 ( .A1(dat_in_b[6]), .A2(n94), .A3(dat_in_a[3]), .Z(n87) );
  AND3_X1 U148 ( .A1(dat_in_b[2]), .A2(dat_in_b[3]), .A3(n57), .Z(n86) );
  OR2_X1 U149 ( .A1(n90), .A2(n91), .Z(n94) );
  NOR2_X2 U150 ( .A1(n23), .A2(n19), .ZN(n91) );
  OR3_X1 U151 ( .A1(n104), .A2(n105), .A3(n106), .Z(n97) );
  AND3_X1 U152 ( .A1(dat_in_a[3]), .A2(n108), .A3(dat_in_b[5]), .Z(n105) );
  AND3_X1 U153 ( .A1(dat_in_b[3]), .A2(n109), .A3(dat_in_a[5]), .Z(n104) );
  AND3_X1 U154 ( .A1(dat_in_b[1]), .A2(n57), .A3(dat_in_b[0]), .Z(n122) );
  AND2_X1 U155 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .Z(n57) );
  AND3_X1 U156 ( .A1(dat_in_b[4]), .A2(dat_in_b[5]), .A3(n123), .Z(n121) );
  AND3_X1 U157 ( .A1(dat_in_a[4]), .A2(n124), .A3(dat_in_b[3]), .Z(n120) );
  AND2_X1 U158 ( .A1(dat_in_a[1]), .A2(dat_in_b[6]), .Z(n103) );
  NOR2_X2 U159 ( .A1(n132), .A2(n133), .ZN(n131) );
  AND3_X1 U160 ( .A1(dat_in_b[5]), .A2(n135), .A3(dat_in_a[1]), .Z(n132) );
  NOR2_X2 U161 ( .A1(n141), .A2(n140), .ZN(n40) );
  AND2_X1 U162 ( .A1(mask[1]), .A2(n142), .Z(n140) );
  OR4_X1 U163 ( .A1(n143), .A2(n144), .A3(n145), .A4(n146), .Z(n142) );
  OR2_X1 U164 ( .A1(n149), .A2(n15), .Z(n148) );
  OR2_X1 U165 ( .A1(n150), .A2(n25), .Z(n147) );
  AND3_X1 U166 ( .A1(dat_in_b[4]), .A2(n151), .A3(dat_in_a[1]), .Z(n145) );
  AND3_X1 U167 ( .A1(dat_in_a[5]), .A2(n152), .A3(dat_in_b[0]), .Z(n144) );
  AND3_X1 U168 ( .A1(dat_in_b[2]), .A2(dat_in_b[3]), .A3(n123), .Z(n143) );
  AND2_X1 U169 ( .A1(mask[0]), .A2(n42), .Z(n41) );
  OR3_X1 U170 ( .A1(n27), .A2(n157), .A3(n21), .Z(n156) );
  OR3_X1 U171 ( .A1(n158), .A2(n26), .A3(n22), .Z(n154) );
  AND2_X1 U172 ( .A1(dat_in_b[1]), .A2(dat_in_b[2]), .Z(n102) );
  AND2_X1 U173 ( .A1(dat_in_a[3]), .A2(dat_in_a[2]), .Z(n123) );
  NOR2_X2 U174 ( .A1(n22), .A2(n30), .ZN(dat_o[0]) );
  INV_X16 U175 ( .I(dat_in_b[7]), .ZN(n23) );
endmodule

