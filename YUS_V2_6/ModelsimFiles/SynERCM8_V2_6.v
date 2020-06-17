/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 13:46:34 2020
/////////////////////////////////////////////////////////////


module ERCM8_V2_6 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa5, cpa6, cpa7, cpa8, cpa9, cpa10, n1, n2, n3, n4, n5, n6, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76;
  assign dat_o[5] = cpa5;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;
  assign dat_o[8] = cpa8;
  assign dat_o[9] = cpa9;
  assign dat_o[10] = cpa10;

  NAND4_X2 U2 ( .A1(dat_in_b[2]), .A2(dat_in_b[1]), .A3(dat_in_a[3]), .A4(
        dat_in_a[2]), .ZN(n17) );
  NAND3_X2 U3 ( .A1(dat_in_a[1]), .A2(n18), .A3(dat_in_b[3]), .ZN(n16) );
  AOI21_X2 U4 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n18), .ZN(n21) );
  OAI21_X2 U5 ( .A1(n8), .A2(n12), .B(n19), .ZN(n18) );
  AOI22_X2 U6 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_a[2]), .B2(
        dat_in_b[2]), .ZN(n19) );
  NAND2_X2 U7 ( .A1(dat_in_b[0]), .A2(dat_in_a[4]), .ZN(n20) );
  NAND2_X2 U8 ( .A1(n22), .A2(n23), .ZN(dat_o[3]) );
  AOI22_X2 U9 ( .A1(dat_in_b[3]), .A2(dat_in_a[0]), .B1(dat_in_a[1]), .B2(
        dat_in_b[2]), .ZN(n23) );
  AOI22_X2 U10 ( .A1(dat_in_b[1]), .A2(dat_in_a[2]), .B1(dat_in_b[0]), .B2(
        dat_in_a[3]), .ZN(n22) );
  OAI21_X2 U11 ( .A1(n6), .A2(n13), .B(n24), .ZN(dat_o[2]) );
  AOI22_X2 U12 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n24) );
  AOI22_X2 U13 ( .A1(dat_in_a[1]), .A2(dat_in_b[0]), .B1(dat_in_b[1]), .B2(
        dat_in_a[0]), .ZN(n25) );
  NOR3_X2 U14 ( .A1(n2), .A2(n26), .A3(n9), .ZN(dat_o[15]) );
  AOI21_X2 U15 ( .A1(n28), .A2(n29), .B(n30), .ZN(n26) );
  OAI21_X2 U16 ( .A1(n31), .A2(n32), .B(n33), .ZN(n28) );
  AOI22_X2 U17 ( .A1(dat_in_b[7]), .A2(dat_in_a[6]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n34) );
  OAI21_X2 U18 ( .A1(n36), .A2(n37), .B(n33), .ZN(n32) );
  OAI22_X2 U19 ( .A1(n2), .A2(n11), .B1(n4), .B2(n10), .ZN(n37) );
  AOI21_X2 U20 ( .A1(n40), .A2(n41), .B(n42), .ZN(n31) );
  NOR3_X2 U21 ( .A1(n5), .A2(n48), .A3(n9), .ZN(n45) );
  OAI21_X2 U22 ( .A1(n9), .A2(n5), .B(n48), .ZN(n43) );
  AOI21_X2 U23 ( .A1(dat_in_b[6]), .A2(dat_in_a[5]), .B(n47), .ZN(n48) );
  OAI22_X2 U24 ( .A1(n12), .A2(n2), .B1(n4), .B2(n11), .ZN(n47) );
  NAND4_X2 U25 ( .A1(n49), .A2(n50), .A3(n51), .A4(n52), .ZN(cpa9) );
  NAND2_X2 U26 ( .A1(dat_in_b[5]), .A2(dat_in_a[4]), .ZN(n52) );
  AOI22_X2 U27 ( .A1(dat_in_b[7]), .A2(dat_in_a[2]), .B1(dat_in_b[6]), .B2(
        dat_in_a[3]), .ZN(n51) );
  NAND2_X2 U28 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .ZN(n50) );
  AOI22_X2 U29 ( .A1(dat_in_a[5]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n49) );
  NAND4_X2 U30 ( .A1(n53), .A2(n54), .A3(n55), .A4(n56), .ZN(cpa8) );
  AOI22_X2 U31 ( .A1(dat_in_b[7]), .A2(dat_in_a[1]), .B1(dat_in_b[6]), .B2(
        dat_in_a[2]), .ZN(n56) );
  AOI22_X2 U32 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B1(dat_in_a[4]), .B2(
        dat_in_b[4]), .ZN(n55) );
  NAND2_X2 U33 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .ZN(n54) );
  AOI22_X2 U34 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n53) );
  NAND4_X2 U35 ( .A1(n57), .A2(n58), .A3(n59), .A4(n60), .ZN(cpa7) );
  AOI22_X2 U36 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B1(dat_in_b[6]), .B2(
        dat_in_a[1]), .ZN(n60) );
  AOI22_X2 U37 ( .A1(dat_in_b[5]), .A2(dat_in_a[2]), .B1(dat_in_b[4]), .B2(
        dat_in_a[3]), .ZN(n59) );
  AOI22_X2 U38 ( .A1(dat_in_a[4]), .A2(dat_in_b[3]), .B1(dat_in_a[5]), .B2(
        dat_in_b[2]), .ZN(n58) );
  AOI22_X2 U39 ( .A1(dat_in_a[6]), .A2(dat_in_b[1]), .B1(dat_in_a[7]), .B2(
        dat_in_b[0]), .ZN(n57) );
  NAND4_X2 U40 ( .A1(n61), .A2(n62), .A3(n63), .A4(n64), .ZN(cpa6) );
  AOI22_X2 U41 ( .A1(dat_in_b[6]), .A2(dat_in_a[0]), .B1(dat_in_b[5]), .B2(
        dat_in_a[1]), .ZN(n64) );
  AOI22_X2 U42 ( .A1(dat_in_b[4]), .A2(dat_in_a[2]), .B1(dat_in_b[3]), .B2(
        dat_in_a[3]), .ZN(n63) );
  NAND2_X2 U43 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .ZN(n62) );
  AOI22_X2 U44 ( .A1(dat_in_a[4]), .A2(dat_in_b[2]), .B1(dat_in_a[5]), .B2(
        dat_in_b[1]), .ZN(n61) );
  NAND4_X2 U45 ( .A1(n65), .A2(n66), .A3(n67), .A4(n68), .ZN(cpa5) );
  NAND2_X2 U46 ( .A1(dat_in_b[3]), .A2(dat_in_a[2]), .ZN(n68) );
  AOI22_X2 U47 ( .A1(dat_in_b[5]), .A2(dat_in_a[0]), .B1(dat_in_a[1]), .B2(
        dat_in_b[4]), .ZN(n67) );
  NAND2_X2 U48 ( .A1(dat_in_a[5]), .A2(dat_in_b[0]), .ZN(n66) );
  AOI22_X2 U49 ( .A1(dat_in_b[2]), .A2(dat_in_a[3]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n65) );
  AOI21_X2 U50 ( .A1(dat_in_a[3]), .A2(dat_in_b[7]), .B(n3), .ZN(n69) );
  NAND4_X2 U51 ( .A1(n70), .A2(n71), .A3(n72), .A4(n73), .ZN(n40) );
  NAND3_X2 U52 ( .A1(dat_in_b[3]), .A2(dat_in_b[4]), .A3(n35), .ZN(n73) );
  NAND3_X2 U53 ( .A1(dat_in_b[5]), .A2(n74), .A3(dat_in_a[5]), .ZN(n72) );
  NAND3_X2 U54 ( .A1(n3), .A2(dat_in_a[3]), .A3(dat_in_b[7]), .ZN(n71) );
  AOI21_X2 U55 ( .A1(dat_in_b[5]), .A2(dat_in_a[5]), .B(n74), .ZN(n75) );
  OAI21_X2 U56 ( .A1(n5), .A2(n10), .B(n76), .ZN(n74) );
  AOI22_X2 U57 ( .A1(dat_in_b[3]), .A2(dat_in_a[7]), .B1(dat_in_b[4]), .B2(
        dat_in_a[6]), .ZN(n76) );
  INV_X8 U58 ( .I(n42), .ZN(n1) );
  INV_X8 U59 ( .I(dat_in_a[7]), .ZN(n2) );
  INV_X8 U60 ( .I(n75), .ZN(n3) );
  INV_X8 U61 ( .I(dat_in_a[6]), .ZN(n4) );
  INV_X8 U62 ( .I(dat_in_a[4]), .ZN(n5) );
  INV_X8 U63 ( .I(dat_in_a[2]), .ZN(n6) );
  INV_X8 U64 ( .I(n25), .ZN(dat_o[1]) );
  INV_X8 U65 ( .I(dat_in_a[0]), .ZN(n8) );
  INV_X8 U66 ( .I(dat_in_b[7]), .ZN(n9) );
  INV_X8 U67 ( .I(dat_in_b[6]), .ZN(n10) );
  INV_X8 U68 ( .I(dat_in_b[5]), .ZN(n11) );
  INV_X8 U69 ( .I(dat_in_b[4]), .ZN(n12) );
  INV_X8 U70 ( .I(dat_in_b[0]), .ZN(n13) );
  AND4_X1 U71 ( .A1(n14), .A2(n15), .A3(n16), .A4(n17), .Z(dat_o[4]) );
  OR3_X1 U72 ( .A1(n19), .A2(n8), .A3(n12), .Z(n15) );
  XOR2_X1 U73 ( .A1(n20), .A2(n21), .Z(n14) );
  XNOR2_X1 U74 ( .A1(n26), .A2(n27), .ZN(dat_o[14]) );
  NOR2_X2 U75 ( .A1(n9), .A2(n2), .ZN(n27) );
  XOR2_X1 U76 ( .A1(n29), .A2(n28), .Z(dat_o[13]) );
  NOR2_X2 U77 ( .A1(n30), .A2(n34), .ZN(n29) );
  AND3_X1 U78 ( .A1(dat_in_b[6]), .A2(n35), .A3(dat_in_b[7]), .Z(n30) );
  XOR2_X1 U79 ( .A1(n31), .A2(n32), .Z(dat_o[12]) );
  NOR2_X2 U80 ( .A1(n38), .A2(n39), .ZN(n33) );
  AND3_X1 U81 ( .A1(dat_in_a[5]), .A2(n37), .A3(dat_in_b[7]), .Z(n39) );
  AND3_X1 U82 ( .A1(dat_in_b[6]), .A2(n35), .A3(dat_in_b[5]), .Z(n38) );
  AND2_X1 U83 ( .A1(dat_in_a[5]), .A2(dat_in_b[7]), .Z(n36) );
  XOR2_X1 U84 ( .A1(n41), .A2(n40), .Z(dat_o[11]) );
  AND2_X1 U85 ( .A1(n43), .A2(n1), .Z(n41) );
  OR3_X1 U86 ( .A1(n44), .A2(n45), .A3(n46), .Z(n42) );
  AND3_X1 U87 ( .A1(dat_in_a[5]), .A2(n47), .A3(dat_in_b[6]), .Z(n46) );
  AND3_X1 U88 ( .A1(n35), .A2(dat_in_b[4]), .A3(dat_in_b[5]), .Z(n44) );
  AND2_X1 U89 ( .A1(dat_in_b[0]), .A2(dat_in_a[0]), .Z(dat_o[0]) );
  NOR2_X2 U90 ( .A1(n40), .A2(n69), .ZN(cpa10) );
  NOR2_X2 U91 ( .A1(n2), .A2(n4), .ZN(n35) );
  OR3_X1 U92 ( .A1(n76), .A2(n5), .A3(n10), .Z(n70) );
endmodule

