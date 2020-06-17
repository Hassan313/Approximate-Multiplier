/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 14:00:45 2020
/////////////////////////////////////////////////////////////


module ERCM8_V2_4 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa5, cpa6, cpa7, cpa8, n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101;
  assign dat_o[5] = cpa5;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;
  assign dat_o[8] = cpa8;

  NAND4_X2 U2 ( .A1(dat_in_a[3]), .A2(dat_in_b[2]), .A3(dat_in_b[1]), .A4(
        dat_in_a[2]), .ZN(n23) );
  NAND3_X2 U3 ( .A1(dat_in_a[1]), .A2(n24), .A3(dat_in_b[3]), .ZN(n22) );
  AOI21_X2 U4 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n24), .ZN(n27) );
  OAI21_X2 U5 ( .A1(n16), .A2(n12), .B(n25), .ZN(n24) );
  AOI22_X2 U6 ( .A1(dat_in_b[1]), .A2(dat_in_a[3]), .B1(dat_in_a[2]), .B2(
        dat_in_b[2]), .ZN(n25) );
  NAND2_X2 U7 ( .A1(n28), .A2(n29), .ZN(dat_o[3]) );
  AOI22_X2 U8 ( .A1(dat_in_a[0]), .A2(dat_in_b[3]), .B1(dat_in_b[2]), .B2(
        dat_in_a[1]), .ZN(n29) );
  AOI22_X2 U9 ( .A1(dat_in_b[1]), .A2(dat_in_a[2]), .B1(dat_in_b[0]), .B2(
        dat_in_a[3]), .ZN(n28) );
  OAI21_X2 U10 ( .A1(n9), .A2(n17), .B(n30), .ZN(dat_o[2]) );
  AOI22_X2 U11 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_b[1]), .B2(
        dat_in_a[1]), .ZN(n30) );
  AOI22_X2 U12 ( .A1(dat_in_a[1]), .A2(dat_in_b[0]), .B1(dat_in_b[1]), .B2(
        dat_in_a[0]), .ZN(n31) );
  NOR3_X2 U13 ( .A1(n13), .A2(n32), .A3(n2), .ZN(dat_o[15]) );
  AOI21_X2 U14 ( .A1(n1), .A2(n34), .B(n35), .ZN(n32) );
  AOI21_X2 U15 ( .A1(n37), .A2(n38), .B(n39), .ZN(n36) );
  AOI22_X2 U16 ( .A1(dat_in_a[6]), .A2(dat_in_b[7]), .B1(dat_in_a[7]), .B2(
        dat_in_b[6]), .ZN(n40) );
  AOI21_X2 U17 ( .A1(n42), .A2(n43), .B(n39), .ZN(n38) );
  NOR3_X2 U18 ( .A1(n7), .A2(n43), .A3(n13), .ZN(n45) );
  AOI22_X2 U19 ( .A1(dat_in_a[7]), .A2(dat_in_b[5]), .B1(dat_in_b[6]), .B2(
        dat_in_a[6]), .ZN(n43) );
  OAI21_X2 U20 ( .A1(n46), .A2(n47), .B(n48), .ZN(n37) );
  AOI21_X2 U21 ( .A1(n5), .A2(n49), .B(n50), .ZN(n46) );
  NAND2_X2 U22 ( .A1(n52), .A2(n48), .ZN(n47) );
  NOR3_X2 U23 ( .A1(n53), .A2(n54), .A3(n55), .ZN(n48) );
  NOR3_X2 U24 ( .A1(n13), .A2(n57), .A3(n8), .ZN(n54) );
  OAI21_X2 U25 ( .A1(n8), .A2(n13), .B(n57), .ZN(n52) );
  AOI21_X2 U26 ( .A1(dat_in_b[6]), .A2(dat_in_a[5]), .B(n56), .ZN(n57) );
  OAI22_X2 U27 ( .A1(n2), .A2(n16), .B1(n6), .B2(n15), .ZN(n56) );
  AOI21_X2 U28 ( .A1(n58), .A2(n3), .B(n50), .ZN(n49) );
  NAND4_X2 U29 ( .A1(n59), .A2(n60), .A3(n61), .A4(n62), .ZN(n50) );
  NAND3_X2 U30 ( .A1(dat_in_b[4]), .A2(n41), .A3(dat_in_b[3]), .ZN(n62) );
  NAND3_X2 U31 ( .A1(n64), .A2(dat_in_b[7]), .A3(dat_in_a[3]), .ZN(n60) );
  OAI21_X2 U32 ( .A1(n7), .A2(n15), .B(n63), .ZN(n64) );
  AOI21_X2 U33 ( .A1(dat_in_b[6]), .A2(dat_in_a[4]), .B(n4), .ZN(n63) );
  AOI22_X2 U34 ( .A1(dat_in_a[7]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[4]), .ZN(n65) );
  NAND2_X2 U35 ( .A1(dat_in_a[3]), .A2(dat_in_b[7]), .ZN(n58) );
  AOI21_X2 U36 ( .A1(n19), .A2(n18), .B(n66), .ZN(n51) );
  OAI21_X2 U37 ( .A1(n72), .A2(n73), .B(n74), .ZN(n71) );
  AOI21_X2 U38 ( .A1(dat_in_a[3]), .A2(dat_in_b[6]), .B(n77), .ZN(n67) );
  NAND2_X2 U39 ( .A1(n72), .A2(n73), .ZN(n77) );
  AOI21_X2 U40 ( .A1(dat_in_b[4]), .A2(dat_in_a[5]), .B(n76), .ZN(n72) );
  OAI21_X2 U41 ( .A1(n8), .A2(n15), .B(n75), .ZN(n76) );
  AOI22_X2 U42 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n75) );
  AOI21_X2 U43 ( .A1(n78), .A2(n79), .B(n19), .ZN(cpa8) );
  NOR3_X2 U44 ( .A1(n11), .A2(n73), .A3(n14), .ZN(n84) );
  NOR3_X2 U45 ( .A1(n16), .A2(n88), .A3(n8), .ZN(n81) );
  AOI21_X2 U46 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B(n87), .ZN(n79) );
  OAI21_X2 U47 ( .A1(n8), .A2(n16), .B(n88), .ZN(n87) );
  AOI22_X2 U48 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n88) );
  AOI21_X2 U49 ( .A1(dat_in_a[3]), .A2(dat_in_b[5]), .B(n89), .ZN(n78) );
  OAI22_X2 U50 ( .A1(n9), .A2(n14), .B1(n13), .B2(n11), .ZN(n89) );
  NAND4_X2 U51 ( .A1(n90), .A2(n91), .A3(n92), .A4(n93), .ZN(cpa7) );
  AOI22_X2 U52 ( .A1(dat_in_a[0]), .A2(dat_in_b[7]), .B1(dat_in_b[6]), .B2(
        dat_in_a[1]), .ZN(n93) );
  AOI22_X2 U53 ( .A1(dat_in_b[5]), .A2(dat_in_a[2]), .B1(dat_in_a[3]), .B2(
        dat_in_b[4]), .ZN(n92) );
  AOI22_X2 U54 ( .A1(dat_in_b[3]), .A2(dat_in_a[4]), .B1(dat_in_a[5]), .B2(
        dat_in_b[2]), .ZN(n91) );
  AOI22_X2 U55 ( .A1(dat_in_b[1]), .A2(dat_in_a[6]), .B1(dat_in_b[0]), .B2(
        dat_in_a[7]), .ZN(n90) );
  NAND4_X2 U56 ( .A1(n94), .A2(n95), .A3(n96), .A4(n97), .ZN(cpa6) );
  AOI22_X2 U57 ( .A1(dat_in_a[0]), .A2(dat_in_b[6]), .B1(dat_in_b[5]), .B2(
        dat_in_a[1]), .ZN(n97) );
  AOI22_X2 U58 ( .A1(dat_in_b[4]), .A2(dat_in_a[2]), .B1(dat_in_a[3]), .B2(
        dat_in_b[3]), .ZN(n96) );
  AOI22_X2 U59 ( .A1(dat_in_a[4]), .A2(dat_in_b[2]), .B1(dat_in_a[5]), .B2(
        dat_in_b[1]), .ZN(n94) );
  NAND4_X2 U60 ( .A1(n98), .A2(n99), .A3(n100), .A4(n101), .ZN(cpa5) );
  NAND2_X2 U61 ( .A1(dat_in_b[3]), .A2(dat_in_a[2]), .ZN(n101) );
  AOI22_X2 U62 ( .A1(dat_in_a[0]), .A2(dat_in_b[5]), .B1(dat_in_b[4]), .B2(
        dat_in_a[1]), .ZN(n100) );
  AOI22_X2 U63 ( .A1(dat_in_a[3]), .A2(dat_in_b[2]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n98) );
  INV_X8 U64 ( .I(n36), .ZN(n1) );
  INV_X8 U65 ( .I(dat_in_a[7]), .ZN(n2) );
  INV_X8 U66 ( .I(n64), .ZN(n3) );
  INV_X8 U67 ( .I(n65), .ZN(n4) );
  INV_X8 U68 ( .I(n51), .ZN(n5) );
  INV_X8 U69 ( .I(dat_in_a[6]), .ZN(n6) );
  INV_X8 U70 ( .I(dat_in_a[5]), .ZN(n7) );
  INV_X8 U71 ( .I(dat_in_a[4]), .ZN(n8) );
  INV_X8 U72 ( .I(dat_in_a[2]), .ZN(n9) );
  INV_X8 U73 ( .I(n31), .ZN(dat_o[1]) );
  INV_X8 U74 ( .I(dat_in_a[1]), .ZN(n11) );
  INV_X8 U75 ( .I(dat_in_a[0]), .ZN(n12) );
  INV_X8 U76 ( .I(dat_in_b[7]), .ZN(n13) );
  INV_X8 U77 ( .I(dat_in_b[6]), .ZN(n14) );
  INV_X8 U78 ( .I(dat_in_b[5]), .ZN(n15) );
  INV_X8 U79 ( .I(dat_in_b[4]), .ZN(n16) );
  INV_X8 U80 ( .I(dat_in_b[0]), .ZN(n17) );
  XOR2_X1 U81 ( .A1(n18), .A2(n19), .Z(dat_o[9]) );
  AND4_X1 U82 ( .A1(n20), .A2(n21), .A3(n22), .A4(n23), .Z(dat_o[4]) );
  OR3_X1 U83 ( .A1(n25), .A2(n16), .A3(n12), .Z(n21) );
  XOR2_X1 U84 ( .A1(n26), .A2(n27), .Z(n20) );
  OR2_X1 U85 ( .A1(n17), .A2(n8), .Z(n26) );
  XNOR2_X1 U86 ( .A1(n32), .A2(n33), .ZN(dat_o[14]) );
  NOR2_X2 U87 ( .A1(n2), .A2(n13), .ZN(n33) );
  XNOR2_X1 U88 ( .A1(n34), .A2(n36), .ZN(dat_o[13]) );
  NOR2_X2 U89 ( .A1(n35), .A2(n40), .ZN(n34) );
  AND3_X1 U90 ( .A1(dat_in_b[6]), .A2(dat_in_b[7]), .A3(n41), .Z(n35) );
  XOR2_X1 U91 ( .A1(n37), .A2(n38), .Z(dat_o[12]) );
  OR2_X1 U92 ( .A1(n44), .A2(n45), .Z(n39) );
  AND3_X1 U93 ( .A1(n41), .A2(dat_in_b[6]), .A3(dat_in_b[5]), .Z(n44) );
  OR2_X1 U94 ( .A1(n7), .A2(n13), .Z(n42) );
  XOR2_X1 U95 ( .A1(n47), .A2(n46), .Z(dat_o[11]) );
  AND3_X1 U96 ( .A1(dat_in_a[5]), .A2(n56), .A3(dat_in_b[6]), .Z(n55) );
  AND3_X1 U97 ( .A1(dat_in_b[4]), .A2(n41), .A3(dat_in_b[5]), .Z(n53) );
  XNOR2_X1 U98 ( .A1(n51), .A2(n49), .ZN(dat_o[10]) );
  OR3_X1 U99 ( .A1(n7), .A2(n63), .A3(n15), .Z(n61) );
  OR3_X1 U100 ( .A1(n65), .A2(n14), .A3(n8), .Z(n59) );
  NOR2_X2 U101 ( .A1(n67), .A2(n66), .ZN(n18) );
  OR4_X1 U102 ( .A1(n68), .A2(n69), .A3(n70), .A4(n71), .Z(n66) );
  OR3_X1 U103 ( .A1(n75), .A2(n8), .A3(n15), .Z(n74) );
  AND3_X1 U104 ( .A1(dat_in_b[4]), .A2(n76), .A3(dat_in_a[5]), .Z(n70) );
  AND3_X1 U105 ( .A1(dat_in_a[3]), .A2(n77), .A3(dat_in_b[6]), .Z(n69) );
  AND3_X1 U106 ( .A1(dat_in_b[2]), .A2(n41), .A3(dat_in_b[3]), .Z(n68) );
  NOR2_X2 U107 ( .A1(n17), .A2(n12), .ZN(dat_o[0]) );
  OR4_X1 U108 ( .A1(n80), .A2(n81), .A3(n82), .A4(n83), .Z(n19) );
  OR3_X1 U109 ( .A1(n84), .A2(n85), .A3(n86), .Z(n83) );
  AND3_X1 U110 ( .A1(dat_in_a[5]), .A2(n87), .A3(dat_in_b[3]), .Z(n86) );
  AND3_X1 U111 ( .A1(dat_in_b[1]), .A2(n41), .A3(dat_in_b[2]), .Z(n85) );
  AND2_X1 U112 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .Z(n41) );
  OR2_X1 U113 ( .A1(n13), .A2(n9), .Z(n73) );
  NOR2_X2 U114 ( .A1(n78), .A2(n79), .ZN(n82) );
  AND3_X1 U115 ( .A1(dat_in_b[5]), .A2(n89), .A3(dat_in_a[3]), .Z(n80) );
  OR2_X1 U116 ( .A1(n17), .A2(n6), .Z(n95) );
  OR2_X1 U117 ( .A1(n17), .A2(n7), .Z(n99) );
endmodule

