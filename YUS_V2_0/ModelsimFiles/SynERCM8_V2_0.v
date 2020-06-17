/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 12:28:51 2020
/////////////////////////////////////////////////////////////


module ERCM8_V2_0 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144;

  OAI21_X2 U1 ( .A1(n10), .A2(n22), .B(n32), .ZN(n31) );
  NAND2_X2 U2 ( .A1(n33), .A2(n34), .ZN(dat_o[3]) );
  AOI22_X2 U3 ( .A1(dat_in_a[0]), .A2(dat_in_b[3]), .B1(dat_in_a[1]), .B2(
        dat_in_b[2]), .ZN(n34) );
  AOI22_X2 U4 ( .A1(dat_in_a[2]), .A2(dat_in_b[1]), .B1(dat_in_b[0]), .B2(
        dat_in_a[3]), .ZN(n33) );
  OAI21_X2 U5 ( .A1(n12), .A2(n22), .B(n35), .ZN(dat_o[2]) );
  AOI22_X2 U6 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n35) );
  AOI22_X2 U7 ( .A1(dat_in_a[1]), .A2(dat_in_b[0]), .B1(dat_in_b[1]), .B2(
        dat_in_a[0]), .ZN(n36) );
  NOR3_X2 U8 ( .A1(n6), .A2(n37), .A3(n16), .ZN(dat_o[15]) );
  AOI21_X2 U9 ( .A1(n1), .A2(n39), .B(n40), .ZN(n37) );
  AOI21_X2 U10 ( .A1(n42), .A2(n43), .B(n44), .ZN(n41) );
  AOI22_X2 U11 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n45) );
  AOI21_X2 U12 ( .A1(n47), .A2(n48), .B(n44), .ZN(n43) );
  NOR3_X2 U13 ( .A1(n16), .A2(n48), .A3(n9), .ZN(n50) );
  AOI22_X2 U14 ( .A1(dat_in_a[7]), .A2(dat_in_b[5]), .B1(dat_in_a[6]), .B2(
        dat_in_b[6]), .ZN(n48) );
  OAI21_X2 U15 ( .A1(n51), .A2(n52), .B(n53), .ZN(n42) );
  AOI21_X2 U16 ( .A1(n54), .A2(n55), .B(n56), .ZN(n51) );
  NAND2_X2 U17 ( .A1(n57), .A2(n53), .ZN(n52) );
  NOR3_X2 U18 ( .A1(n58), .A2(n59), .A3(n60), .ZN(n53) );
  NOR3_X2 U19 ( .A1(n10), .A2(n62), .A3(n16), .ZN(n59) );
  OAI21_X2 U20 ( .A1(n16), .A2(n10), .B(n62), .ZN(n57) );
  AOI21_X2 U21 ( .A1(dat_in_a[5]), .A2(dat_in_b[6]), .B(n61), .ZN(n62) );
  OAI22_X2 U22 ( .A1(n6), .A2(n19), .B1(n7), .B2(n18), .ZN(n61) );
  AOI21_X2 U23 ( .A1(n63), .A2(n64), .B(n56), .ZN(n55) );
  NAND4_X2 U24 ( .A1(n65), .A2(n66), .A3(n67), .A4(n68), .ZN(n56) );
  NAND3_X2 U25 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n46), .ZN(n68) );
  NAND3_X2 U26 ( .A1(dat_in_a[5]), .A2(n5), .A3(dat_in_b[5]), .ZN(n67) );
  NAND3_X2 U27 ( .A1(n69), .A2(dat_in_a[4]), .A3(dat_in_b[6]), .ZN(n65) );
  AOI21_X2 U28 ( .A1(dat_in_a[5]), .A2(dat_in_b[5]), .B(n5), .ZN(n64) );
  AOI21_X2 U29 ( .A1(dat_in_a[4]), .A2(dat_in_b[6]), .B(n69), .ZN(n70) );
  OAI22_X2 U30 ( .A1(n6), .A2(n20), .B1(n7), .B2(n19), .ZN(n69) );
  OAI21_X2 U31 ( .A1(n24), .A2(n23), .B(n3), .ZN(n54) );
  AOI21_X2 U32 ( .A1(n77), .A2(n78), .B(n79), .ZN(n76) );
  NOR3_X2 U33 ( .A1(n19), .A2(n81), .A3(n9), .ZN(n75) );
  AOI21_X2 U34 ( .A1(dat_in_a[3]), .A2(dat_in_b[6]), .B(n82), .ZN(n72) );
  OAI21_X2 U35 ( .A1(n19), .A2(n9), .B(n81), .ZN(n77) );
  AOI21_X2 U36 ( .A1(dat_in_a[4]), .A2(dat_in_b[5]), .B(n80), .ZN(n81) );
  OAI22_X2 U37 ( .A1(n21), .A2(n6), .B1(n7), .B2(n20), .ZN(n80) );
  AOI21_X2 U38 ( .A1(n2), .A2(n25), .B(n83), .ZN(n24) );
  AOI21_X2 U39 ( .A1(n84), .A2(n85), .B(n83), .ZN(n25) );
  OAI21_X2 U40 ( .A1(n85), .A2(n84), .B(n90), .ZN(n89) );
  AOI22_X2 U41 ( .A1(n46), .A2(n91), .B1(n78), .B2(n92), .ZN(n90) );
  NOR3_X2 U42 ( .A1(n19), .A2(n93), .A3(n10), .ZN(n88) );
  AOI21_X2 U43 ( .A1(dat_in_a[3]), .A2(dat_in_b[5]), .B(n94), .ZN(n85) );
  OAI22_X2 U44 ( .A1(n12), .A2(n17), .B1(n14), .B2(n16), .ZN(n94) );
  AOI21_X2 U45 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n95), .ZN(n84) );
  OAI21_X2 U46 ( .A1(n10), .A2(n19), .B(n93), .ZN(n95) );
  AOI22_X2 U47 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n93) );
  AOI21_X2 U48 ( .A1(n27), .A2(n26), .B(n97), .ZN(n96) );
  AOI21_X2 U49 ( .A1(n98), .A2(n99), .B(n97), .ZN(n26) );
  NOR3_X2 U50 ( .A1(n20), .A2(n109), .A3(n10), .ZN(n105) );
  NOR3_X2 U51 ( .A1(n15), .A2(n112), .A3(n16), .ZN(n100) );
  OAI21_X2 U52 ( .A1(n16), .A2(n15), .B(n112), .ZN(n111) );
  AOI22_X2 U53 ( .A1(dat_in_b[4]), .A2(dat_in_a[3]), .B1(dat_in_a[2]), .B2(
        dat_in_b[5]), .ZN(n112) );
  AOI21_X2 U54 ( .A1(dat_in_b[2]), .A2(dat_in_a[5]), .B(n110), .ZN(n98) );
  OAI21_X2 U55 ( .A1(n10), .A2(n20), .B(n109), .ZN(n110) );
  AOI22_X2 U56 ( .A1(dat_in_a[7]), .A2(dat_in_b[0]), .B1(dat_in_a[6]), .B2(
        dat_in_b[1]), .ZN(n109) );
  OAI21_X2 U57 ( .A1(n8), .A2(n28), .B(n113), .ZN(n27) );
  OAI21_X2 U58 ( .A1(n114), .A2(n115), .B(n113), .ZN(n28) );
  NOR4_X2 U59 ( .A1(n116), .A2(n117), .A3(n118), .A4(n119), .ZN(n113) );
  NAND3_X2 U60 ( .A1(n120), .A2(n121), .A3(n122), .ZN(n119) );
  NAND3_X2 U61 ( .A1(dat_in_a[5]), .A2(dat_in_a[4]), .A3(n91), .ZN(n121) );
  NAND3_X2 U62 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n108), .ZN(n120) );
  NOR3_X2 U63 ( .A1(n14), .A2(n125), .A3(n18), .ZN(n116) );
  OAI21_X2 U64 ( .A1(n14), .A2(n18), .B(n125), .ZN(n115) );
  AOI21_X2 U65 ( .A1(dat_in_b[6]), .A2(dat_in_a[0]), .B(n124), .ZN(n125) );
  OAI22_X2 U66 ( .A1(n20), .A2(n11), .B1(n19), .B2(n12), .ZN(n124) );
  OAI21_X2 U67 ( .A1(n7), .A2(n22), .B(n123), .ZN(n114) );
  AOI22_X2 U68 ( .A1(dat_in_b[1]), .A2(dat_in_a[5]), .B1(dat_in_b[2]), .B2(
        dat_in_a[4]), .ZN(n123) );
  OAI21_X2 U69 ( .A1(n30), .A2(n29), .B(n127), .ZN(n126) );
  NAND2_X2 U70 ( .A1(n128), .A2(n127), .ZN(n29) );
  NOR4_X2 U71 ( .A1(n129), .A2(n130), .A3(n131), .A4(n132), .ZN(n127) );
  OAI22_X2 U72 ( .A1(n15), .A2(n133), .B1(n10), .B2(n134), .ZN(n132) );
  NAND2_X2 U73 ( .A1(n135), .A2(dat_in_b[1]), .ZN(n134) );
  NAND2_X2 U74 ( .A1(n136), .A2(dat_in_b[5]), .ZN(n133) );
  NOR3_X2 U75 ( .A1(n19), .A2(n137), .A3(n14), .ZN(n131) );
  NOR3_X2 U76 ( .A1(n9), .A2(n138), .A3(n22), .ZN(n130) );
  OAI21_X2 U77 ( .A1(n22), .A2(n9), .B(n138), .ZN(n128) );
  AOI21_X2 U78 ( .A1(dat_in_b[1]), .A2(dat_in_a[4]), .B(n135), .ZN(n138) );
  OAI21_X2 U79 ( .A1(n19), .A2(n14), .B(n137), .ZN(n135) );
  AOI21_X2 U80 ( .A1(dat_in_b[5]), .A2(dat_in_a[0]), .B(n136), .ZN(n137) );
  OAI22_X2 U81 ( .A1(n21), .A2(n11), .B1(n20), .B2(n12), .ZN(n136) );
  NAND3_X2 U82 ( .A1(dat_in_b[3]), .A2(n143), .A3(dat_in_a[1]), .ZN(n142) );
  AOI21_X2 U83 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n143), .ZN(n32) );
  OAI21_X2 U84 ( .A1(n19), .A2(n15), .B(n144), .ZN(n143) );
  AOI22_X2 U85 ( .A1(dat_in_b[1]), .A2(dat_in_a[3]), .B1(dat_in_b[2]), .B2(
        dat_in_a[2]), .ZN(n144) );
  NAND2_X2 U86 ( .A1(n108), .A2(n91), .ZN(n139) );
  INV_X8 U87 ( .I(n41), .ZN(n1) );
  INV_X8 U88 ( .I(n96), .ZN(n2) );
  INV_X8 U89 ( .I(n71), .ZN(n3) );
  INV_X8 U90 ( .I(n76), .ZN(n4) );
  INV_X8 U91 ( .I(n70), .ZN(n5) );
  INV_X8 U92 ( .I(dat_in_a[7]), .ZN(n6) );
  INV_X8 U93 ( .I(dat_in_a[6]), .ZN(n7) );
  INV_X8 U94 ( .I(n126), .ZN(n8) );
  INV_X8 U95 ( .I(dat_in_a[5]), .ZN(n9) );
  INV_X8 U97 ( .I(dat_in_a[3]), .ZN(n11) );
  INV_X8 U98 ( .I(dat_in_a[2]), .ZN(n12) );
  INV_X8 U99 ( .I(n36), .ZN(dat_o[1]) );
  INV_X8 U100 ( .I(dat_in_a[1]), .ZN(n14) );
  INV_X8 U101 ( .I(dat_in_a[0]), .ZN(n15) );
  INV_X8 U103 ( .I(dat_in_b[6]), .ZN(n17) );
  INV_X8 U104 ( .I(dat_in_b[5]), .ZN(n18) );
  INV_X8 U106 ( .I(dat_in_b[3]), .ZN(n20) );
  INV_X8 U107 ( .I(dat_in_b[2]), .ZN(n21) );
  INV_X8 U108 ( .I(dat_in_b[0]), .ZN(n22) );
  XOR2_X1 U109 ( .A1(n23), .A2(n24), .Z(dat_o[9]) );
  XOR2_X1 U110 ( .A1(n2), .A2(n25), .Z(dat_o[8]) );
  XOR2_X1 U111 ( .A1(n26), .A2(n27), .Z(dat_o[7]) );
  XOR2_X1 U112 ( .A1(n8), .A2(n28), .Z(dat_o[6]) );
  XOR2_X1 U113 ( .A1(n29), .A2(n30), .Z(dat_o[5]) );
  AND2_X1 U114 ( .A1(n30), .A2(n31), .Z(dat_o[4]) );
  XNOR2_X1 U115 ( .A1(n37), .A2(n38), .ZN(dat_o[14]) );
  NOR2_X2 U116 ( .A1(n16), .A2(n6), .ZN(n38) );
  XNOR2_X1 U117 ( .A1(n39), .A2(n41), .ZN(dat_o[13]) );
  NOR2_X2 U118 ( .A1(n40), .A2(n45), .ZN(n39) );
  AND3_X1 U119 ( .A1(dat_in_b[6]), .A2(dat_in_b[7]), .A3(n46), .Z(n40) );
  XOR2_X1 U120 ( .A1(n42), .A2(n43), .Z(dat_o[12]) );
  OR2_X1 U121 ( .A1(n49), .A2(n50), .Z(n44) );
  AND3_X1 U122 ( .A1(dat_in_b[5]), .A2(dat_in_b[6]), .A3(n46), .Z(n49) );
  OR2_X1 U123 ( .A1(n16), .A2(n9), .Z(n47) );
  XOR2_X1 U124 ( .A1(n52), .A2(n51), .Z(dat_o[11]) );
  AND3_X1 U125 ( .A1(dat_in_b[6]), .A2(n61), .A3(dat_in_a[5]), .Z(n60) );
  AND3_X1 U126 ( .A1(dat_in_b[5]), .A2(dat_in_b[4]), .A3(n46), .Z(n58) );
  XOR2_X1 U127 ( .A1(n54), .A2(n55), .Z(dat_o[10]) );
  OR3_X1 U128 ( .A1(n64), .A2(n16), .A3(n11), .Z(n66) );
  OR2_X1 U129 ( .A1(n11), .A2(n16), .Z(n63) );
  OR2_X1 U130 ( .A1(n72), .A2(n71), .Z(n23) );
  OR4_X1 U131 ( .A1(n73), .A2(n74), .A3(n75), .A4(n4), .Z(n71) );
  AND3_X1 U132 ( .A1(n80), .A2(dat_in_a[4]), .A3(dat_in_b[5]), .Z(n79) );
  AND3_X1 U133 ( .A1(dat_in_a[3]), .A2(n82), .A3(dat_in_b[6]), .Z(n74) );
  AND3_X1 U134 ( .A1(dat_in_b[3]), .A2(dat_in_b[2]), .A3(n46), .Z(n73) );
  OR2_X1 U135 ( .A1(n77), .A2(n78), .Z(n82) );
  OR4_X1 U136 ( .A1(n86), .A2(n87), .A3(n88), .A4(n89), .Z(n83) );
  AND2_X1 U137 ( .A1(dat_in_a[2]), .A2(dat_in_b[7]), .Z(n78) );
  AND3_X1 U138 ( .A1(dat_in_b[5]), .A2(n94), .A3(dat_in_a[3]), .Z(n87) );
  AND3_X1 U139 ( .A1(dat_in_a[5]), .A2(n95), .A3(dat_in_b[3]), .Z(n86) );
  OR4_X1 U140 ( .A1(n100), .A2(n101), .A3(n102), .A4(n103), .Z(n97) );
  OR4_X1 U141 ( .A1(n104), .A2(n105), .A3(n106), .A4(n107), .Z(n103) );
  AND3_X1 U142 ( .A1(n46), .A2(dat_in_b[1]), .A3(dat_in_b[0]), .Z(n107) );
  NOR2_X2 U143 ( .A1(n6), .A2(n7), .ZN(n46) );
  AND3_X1 U144 ( .A1(dat_in_b[5]), .A2(dat_in_b[4]), .A3(n108), .Z(n106) );
  AND3_X1 U145 ( .A1(dat_in_b[2]), .A2(n110), .A3(dat_in_a[5]), .Z(n104) );
  NOR2_X2 U146 ( .A1(n99), .A2(n98), .ZN(n102) );
  AND2_X1 U147 ( .A1(n92), .A2(n111), .Z(n101) );
  NOR2_X2 U148 ( .A1(n92), .A2(n111), .ZN(n99) );
  AND2_X1 U149 ( .A1(dat_in_b[6]), .A2(dat_in_a[1]), .Z(n92) );
  OR3_X1 U150 ( .A1(n123), .A2(n7), .A3(n22), .Z(n122) );
  AND2_X1 U151 ( .A1(n115), .A2(n114), .Z(n118) );
  AND3_X1 U152 ( .A1(dat_in_a[0]), .A2(n124), .A3(dat_in_b[6]), .Z(n117) );
  AND3_X1 U153 ( .A1(dat_in_b[3]), .A2(dat_in_b[2]), .A3(n108), .Z(n129) );
  AND4_X1 U154 ( .A1(n139), .A2(n140), .A3(n141), .A4(n142), .Z(n30) );
  OR3_X1 U155 ( .A1(n32), .A2(n10), .A3(n22), .Z(n141) );
  OR3_X1 U156 ( .A1(n144), .A2(n19), .A3(n15), .Z(n140) );
  AND2_X1 U157 ( .A1(dat_in_b[1]), .A2(dat_in_b[2]), .Z(n91) );
  NOR2_X2 U158 ( .A1(n11), .A2(n12), .ZN(n108) );
  NOR2_X2 U159 ( .A1(n15), .A2(n22), .ZN(dat_o[0]) );
  INV_X16 U160 ( .I(dat_in_b[4]), .ZN(n19) );
  INV_X16 U161 ( .I(dat_in_b[7]), .ZN(n16) );
  INV_X16 U162 ( .I(dat_in_a[4]), .ZN(n10) );
endmodule

