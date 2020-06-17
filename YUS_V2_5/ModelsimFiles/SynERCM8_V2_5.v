/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 13:59:52 2020
/////////////////////////////////////////////////////////////


module ERCM8_V2_5 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa5, cpa6, cpa7, cpa8, cpa9, n1, n2, n3, n4, n5, n6, n7, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87;
  assign dat_o[5] = cpa5;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;
  assign dat_o[8] = cpa8;
  assign dat_o[9] = cpa9;

  NAND4_X2 U2 ( .A1(dat_in_b[2]), .A2(dat_in_b[1]), .A3(dat_in_a[3]), .A4(
        dat_in_a[2]), .ZN(n18) );
  NAND3_X2 U3 ( .A1(dat_in_a[1]), .A2(n19), .A3(dat_in_b[3]), .ZN(n17) );
  AOI21_X2 U4 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n19), .ZN(n22) );
  OAI21_X2 U5 ( .A1(n9), .A2(n13), .B(n20), .ZN(n19) );
  AOI22_X2 U6 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_a[2]), .B2(
        dat_in_b[2]), .ZN(n20) );
  NAND2_X2 U7 ( .A1(n23), .A2(n24), .ZN(dat_o[3]) );
  AOI22_X2 U8 ( .A1(dat_in_b[3]), .A2(dat_in_a[0]), .B1(dat_in_a[1]), .B2(
        dat_in_b[2]), .ZN(n24) );
  AOI22_X2 U9 ( .A1(dat_in_b[1]), .A2(dat_in_a[2]), .B1(dat_in_b[0]), .B2(
        dat_in_a[3]), .ZN(n23) );
  OAI21_X2 U10 ( .A1(n7), .A2(n14), .B(n25), .ZN(dat_o[2]) );
  AOI22_X2 U11 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n25) );
  AOI22_X2 U12 ( .A1(dat_in_a[1]), .A2(dat_in_b[0]), .B1(dat_in_b[1]), .B2(
        dat_in_a[0]), .ZN(n26) );
  AOI21_X2 U13 ( .A1(n29), .A2(n30), .B(n31), .ZN(n28) );
  OAI21_X2 U14 ( .A1(n32), .A2(n33), .B(n34), .ZN(n29) );
  AOI22_X2 U15 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n35) );
  OAI21_X2 U16 ( .A1(n37), .A2(n2), .B(n34), .ZN(n33) );
  NOR3_X2 U17 ( .A1(n4), .A2(n40), .A3(n10), .ZN(n39) );
  AOI22_X2 U18 ( .A1(dat_in_a[7]), .A2(dat_in_b[5]), .B1(dat_in_a[6]), .B2(
        dat_in_b[6]), .ZN(n40) );
  AOI21_X2 U19 ( .A1(n3), .A2(n41), .B(n42), .ZN(n32) );
  AOI21_X2 U20 ( .A1(n44), .A2(n45), .B(n46), .ZN(n43) );
  NOR3_X2 U21 ( .A1(n4), .A2(n51), .A3(n11), .ZN(n50) );
  AOI21_X2 U22 ( .A1(dat_in_b[7]), .A2(dat_in_a[4]), .B(n52), .ZN(n47) );
  OAI21_X2 U23 ( .A1(n11), .A2(n4), .B(n51), .ZN(n52) );
  AOI22_X2 U24 ( .A1(dat_in_b[4]), .A2(dat_in_a[7]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n51) );
  AOI21_X2 U25 ( .A1(n53), .A2(n54), .B(n46), .ZN(n45) );
  NAND4_X2 U26 ( .A1(n55), .A2(n56), .A3(n57), .A4(n58), .ZN(n46) );
  NAND3_X2 U27 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n36), .ZN(n58) );
  NAND3_X2 U28 ( .A1(dat_in_b[5]), .A2(n59), .A3(dat_in_a[5]), .ZN(n57) );
  AOI21_X2 U29 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n59), .ZN(n54) );
  OAI21_X2 U30 ( .A1(n5), .A2(n11), .B(n60), .ZN(n59) );
  AOI22_X2 U31 ( .A1(dat_in_b[3]), .A2(dat_in_a[7]), .B1(dat_in_b[4]), .B2(
        dat_in_a[6]), .ZN(n60) );
  OAI22_X2 U32 ( .A1(n12), .A2(n66), .B1(n10), .B2(n67), .ZN(n65) );
  AOI21_X2 U33 ( .A1(dat_in_b[6]), .A2(dat_in_a[3]), .B(n71), .ZN(n61) );
  OAI21_X2 U34 ( .A1(n7), .A2(n10), .B(n68), .ZN(n71) );
  AOI21_X2 U35 ( .A1(dat_in_b[4]), .A2(dat_in_a[5]), .B(n70), .ZN(n68) );
  OAI21_X2 U36 ( .A1(n5), .A2(n12), .B(n69), .ZN(n70) );
  AOI22_X2 U37 ( .A1(dat_in_b[2]), .A2(dat_in_a[7]), .B1(dat_in_b[3]), .B2(
        dat_in_a[6]), .ZN(n69) );
  NAND4_X2 U38 ( .A1(n72), .A2(n73), .A3(n74), .A4(n75), .ZN(cpa8) );
  AOI22_X2 U39 ( .A1(dat_in_b[7]), .A2(dat_in_a[1]), .B1(dat_in_b[6]), .B2(
        dat_in_a[2]), .ZN(n75) );
  AOI22_X2 U40 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B1(dat_in_a[4]), .B2(
        dat_in_b[4]), .ZN(n74) );
  NAND2_X2 U41 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .ZN(n73) );
  AOI22_X2 U42 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n72) );
  NAND4_X2 U43 ( .A1(n76), .A2(n77), .A3(n78), .A4(n79), .ZN(cpa7) );
  AOI22_X2 U44 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B1(dat_in_b[6]), .B2(
        dat_in_a[1]), .ZN(n79) );
  AOI22_X2 U45 ( .A1(dat_in_b[5]), .A2(dat_in_a[2]), .B1(dat_in_b[4]), .B2(
        dat_in_a[3]), .ZN(n78) );
  AOI22_X2 U46 ( .A1(dat_in_a[4]), .A2(dat_in_b[3]), .B1(dat_in_a[5]), .B2(
        dat_in_b[2]), .ZN(n77) );
  AOI22_X2 U47 ( .A1(dat_in_a[6]), .A2(dat_in_b[1]), .B1(dat_in_a[7]), .B2(
        dat_in_b[0]), .ZN(n76) );
  NAND4_X2 U48 ( .A1(n80), .A2(n81), .A3(n82), .A4(n83), .ZN(cpa6) );
  AOI22_X2 U49 ( .A1(dat_in_b[6]), .A2(dat_in_a[0]), .B1(dat_in_b[5]), .B2(
        dat_in_a[1]), .ZN(n83) );
  AOI22_X2 U50 ( .A1(dat_in_b[4]), .A2(dat_in_a[2]), .B1(dat_in_b[3]), .B2(
        dat_in_a[3]), .ZN(n82) );
  NAND2_X2 U51 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .ZN(n81) );
  AOI22_X2 U52 ( .A1(dat_in_a[4]), .A2(dat_in_b[2]), .B1(dat_in_a[5]), .B2(
        dat_in_b[1]), .ZN(n80) );
  NAND4_X2 U53 ( .A1(n84), .A2(n85), .A3(n86), .A4(n87), .ZN(cpa5) );
  NAND2_X2 U54 ( .A1(dat_in_b[3]), .A2(dat_in_a[2]), .ZN(n87) );
  AOI22_X2 U55 ( .A1(dat_in_b[5]), .A2(dat_in_a[0]), .B1(dat_in_a[1]), .B2(
        dat_in_b[4]), .ZN(n86) );
  AOI22_X2 U56 ( .A1(dat_in_b[2]), .A2(dat_in_a[3]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n84) );
  INV_X8 U57 ( .I(n28), .ZN(n1) );
  INV_X8 U58 ( .I(n40), .ZN(n2) );
  INV_X8 U59 ( .I(n43), .ZN(n3) );
  INV_X8 U60 ( .I(dat_in_a[5]), .ZN(n4) );
  INV_X8 U61 ( .I(dat_in_a[4]), .ZN(n5) );
  INV_X8 U62 ( .I(dat_in_a[3]), .ZN(n6) );
  INV_X8 U63 ( .I(dat_in_a[2]), .ZN(n7) );
  INV_X8 U64 ( .I(n26), .ZN(dat_o[1]) );
  INV_X8 U65 ( .I(dat_in_a[0]), .ZN(n9) );
  INV_X8 U66 ( .I(dat_in_b[7]), .ZN(n10) );
  INV_X8 U67 ( .I(dat_in_b[6]), .ZN(n11) );
  INV_X8 U68 ( .I(dat_in_b[5]), .ZN(n12) );
  INV_X8 U69 ( .I(dat_in_b[4]), .ZN(n13) );
  INV_X8 U70 ( .I(dat_in_b[0]), .ZN(n14) );
  AND4_X1 U71 ( .A1(n15), .A2(n16), .A3(n17), .A4(n18), .Z(dat_o[4]) );
  OR3_X1 U72 ( .A1(n20), .A2(n9), .A3(n13), .Z(n16) );
  XOR2_X1 U73 ( .A1(n21), .A2(n22), .Z(n15) );
  OR2_X1 U74 ( .A1(n14), .A2(n5), .Z(n21) );
  AND3_X1 U75 ( .A1(dat_in_a[7]), .A2(n1), .A3(dat_in_b[7]), .Z(dat_o[15]) );
  XOR2_X1 U76 ( .A1(n1), .A2(n27), .Z(dat_o[14]) );
  AND2_X1 U77 ( .A1(dat_in_b[7]), .A2(dat_in_a[7]), .Z(n27) );
  XOR2_X1 U78 ( .A1(n30), .A2(n29), .Z(dat_o[13]) );
  NOR2_X2 U79 ( .A1(n31), .A2(n35), .ZN(n30) );
  AND3_X1 U80 ( .A1(dat_in_b[6]), .A2(n36), .A3(dat_in_b[7]), .Z(n31) );
  XOR2_X1 U81 ( .A1(n32), .A2(n33), .Z(dat_o[12]) );
  NOR2_X2 U82 ( .A1(n38), .A2(n39), .ZN(n34) );
  AND3_X1 U83 ( .A1(dat_in_b[6]), .A2(n36), .A3(dat_in_b[5]), .Z(n38) );
  AND2_X1 U84 ( .A1(dat_in_a[5]), .A2(dat_in_b[7]), .Z(n37) );
  XNOR2_X1 U85 ( .A1(n41), .A2(n43), .ZN(dat_o[11]) );
  NOR2_X2 U86 ( .A1(n47), .A2(n42), .ZN(n41) );
  OR3_X1 U87 ( .A1(n48), .A2(n49), .A3(n50), .Z(n42) );
  AND3_X1 U88 ( .A1(dat_in_a[4]), .A2(n52), .A3(dat_in_b[7]), .Z(n49) );
  AND3_X1 U89 ( .A1(n36), .A2(dat_in_b[4]), .A3(dat_in_b[5]), .Z(n48) );
  XOR2_X1 U90 ( .A1(n44), .A2(n45), .Z(dat_o[10]) );
  OR3_X1 U91 ( .A1(n54), .A2(n6), .A3(n10), .Z(n56) );
  OR3_X1 U92 ( .A1(n60), .A2(n5), .A3(n11), .Z(n55) );
  OR2_X1 U93 ( .A1(n10), .A2(n6), .Z(n53) );
  NOR2_X2 U94 ( .A1(n14), .A2(n9), .ZN(dat_o[0]) );
  NOR2_X2 U95 ( .A1(n61), .A2(n44), .ZN(cpa9) );
  OR4_X1 U96 ( .A1(n62), .A2(n63), .A3(n64), .A4(n65), .Z(n44) );
  OR2_X1 U97 ( .A1(n68), .A2(n7), .Z(n67) );
  OR2_X1 U98 ( .A1(n69), .A2(n5), .Z(n66) );
  AND3_X1 U99 ( .A1(dat_in_b[4]), .A2(n70), .A3(dat_in_a[5]), .Z(n64) );
  AND3_X1 U100 ( .A1(dat_in_a[3]), .A2(n71), .A3(dat_in_b[6]), .Z(n63) );
  AND3_X1 U101 ( .A1(dat_in_b[3]), .A2(dat_in_b[2]), .A3(n36), .Z(n62) );
  AND2_X1 U102 ( .A1(dat_in_a[7]), .A2(dat_in_a[6]), .Z(n36) );
  OR2_X1 U103 ( .A1(n4), .A2(n14), .Z(n85) );
endmodule

