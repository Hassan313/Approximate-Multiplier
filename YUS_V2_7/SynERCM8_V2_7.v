/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Sat Jan 25 12:30:25 2020
/////////////////////////////////////////////////////////////


module ERCM8_V2_7 ( dat_in_a, dat_in_b, mask, dat_o );
  input [7:0] dat_in_a;
  input [7:0] dat_in_b;
  input [6:0] mask;
  output [15:0] dat_o;
  wire   cpa5, cpa6, cpa7, cpa8, cpa9, cpa10, cpa11, n1, n2, n3, n4, n5, n6,
         n7, n8, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67;
  assign dat_o[5] = cpa5;
  assign dat_o[6] = cpa6;
  assign dat_o[7] = cpa7;
  assign dat_o[8] = cpa8;
  assign dat_o[9] = cpa9;
  assign dat_o[10] = cpa10;
  assign dat_o[11] = cpa11;

  NAND4_X2 U2 ( .A1(dat_in_b[2]), .A2(dat_in_b[1]), .A3(dat_in_a[3]), .A4(
        dat_in_a[2]), .ZN(n16) );
  NAND3_X2 U3 ( .A1(dat_in_a[1]), .A2(n17), .A3(dat_in_b[3]), .ZN(n15) );
  AOI21_X2 U4 ( .A1(dat_in_b[3]), .A2(dat_in_a[1]), .B(n17), .ZN(n20) );
  OAI21_X2 U5 ( .A1(n10), .A2(n11), .B(n18), .ZN(n17) );
  AOI22_X2 U6 ( .A1(dat_in_a[3]), .A2(dat_in_b[1]), .B1(dat_in_a[2]), .B2(
        dat_in_b[2]), .ZN(n18) );
  NAND2_X2 U7 ( .A1(dat_in_b[0]), .A2(dat_in_a[4]), .ZN(n19) );
  NAND2_X2 U8 ( .A1(n21), .A2(n22), .ZN(dat_o[3]) );
  AOI22_X2 U9 ( .A1(dat_in_b[3]), .A2(dat_in_a[0]), .B1(dat_in_a[1]), .B2(
        dat_in_b[2]), .ZN(n22) );
  AOI22_X2 U10 ( .A1(dat_in_b[1]), .A2(dat_in_a[2]), .B1(dat_in_b[0]), .B2(
        dat_in_a[3]), .ZN(n21) );
  OAI21_X2 U11 ( .A1(n8), .A2(n12), .B(n23), .ZN(dat_o[2]) );
  AOI22_X2 U12 ( .A1(dat_in_a[0]), .A2(dat_in_b[2]), .B1(dat_in_a[1]), .B2(
        dat_in_b[1]), .ZN(n23) );
  AOI22_X2 U13 ( .A1(dat_in_a[1]), .A2(dat_in_b[0]), .B1(dat_in_b[1]), .B2(
        dat_in_a[0]), .ZN(n24) );
  AOI21_X2 U14 ( .A1(n2), .A2(n27), .B(n28), .ZN(n25) );
  AOI21_X2 U15 ( .A1(n30), .A2(n31), .B(n32), .ZN(n29) );
  AOI22_X2 U16 ( .A1(dat_in_a[6]), .A2(dat_in_b[7]), .B1(dat_in_b[6]), .B2(
        dat_in_a[7]), .ZN(n33) );
  OAI22_X2 U17 ( .A1(n5), .A2(n36), .B1(n7), .B2(n37), .ZN(n32) );
  NAND2_X2 U18 ( .A1(n38), .A2(dat_in_b[7]), .ZN(n37) );
  AOI21_X2 U19 ( .A1(dat_in_a[5]), .A2(dat_in_b[7]), .B(n38), .ZN(n35) );
  NAND2_X2 U20 ( .A1(n36), .A2(n5), .ZN(n38) );
  NAND4_X2 U21 ( .A1(n39), .A2(n40), .A3(n41), .A4(n42), .ZN(cpa9) );
  NAND2_X2 U22 ( .A1(dat_in_b[5]), .A2(dat_in_a[4]), .ZN(n42) );
  AOI22_X2 U23 ( .A1(dat_in_b[7]), .A2(dat_in_a[2]), .B1(dat_in_b[6]), .B2(
        dat_in_a[3]), .ZN(n41) );
  NAND2_X2 U24 ( .A1(dat_in_a[7]), .A2(dat_in_b[2]), .ZN(n40) );
  AOI22_X2 U25 ( .A1(dat_in_a[5]), .A2(dat_in_b[4]), .B1(dat_in_a[6]), .B2(
        dat_in_b[3]), .ZN(n39) );
  NAND4_X2 U26 ( .A1(n43), .A2(n44), .A3(n45), .A4(n46), .ZN(cpa8) );
  AOI22_X2 U27 ( .A1(dat_in_b[7]), .A2(dat_in_a[1]), .B1(dat_in_b[6]), .B2(
        dat_in_a[2]), .ZN(n46) );
  AOI22_X2 U28 ( .A1(dat_in_b[5]), .A2(dat_in_a[3]), .B1(dat_in_a[4]), .B2(
        dat_in_b[4]), .ZN(n45) );
  NAND2_X2 U29 ( .A1(dat_in_a[7]), .A2(dat_in_b[1]), .ZN(n44) );
  AOI22_X2 U30 ( .A1(dat_in_a[5]), .A2(dat_in_b[3]), .B1(dat_in_a[6]), .B2(
        dat_in_b[2]), .ZN(n43) );
  NAND4_X2 U31 ( .A1(n47), .A2(n48), .A3(n49), .A4(n50), .ZN(cpa7) );
  AOI22_X2 U32 ( .A1(dat_in_b[7]), .A2(dat_in_a[0]), .B1(dat_in_b[6]), .B2(
        dat_in_a[1]), .ZN(n50) );
  AOI22_X2 U33 ( .A1(dat_in_b[5]), .A2(dat_in_a[2]), .B1(dat_in_b[4]), .B2(
        dat_in_a[3]), .ZN(n49) );
  AOI22_X2 U34 ( .A1(dat_in_a[4]), .A2(dat_in_b[3]), .B1(dat_in_a[5]), .B2(
        dat_in_b[2]), .ZN(n48) );
  AOI22_X2 U35 ( .A1(dat_in_a[6]), .A2(dat_in_b[1]), .B1(dat_in_a[7]), .B2(
        dat_in_b[0]), .ZN(n47) );
  NAND4_X2 U36 ( .A1(n51), .A2(n52), .A3(n53), .A4(n54), .ZN(cpa6) );
  AOI22_X2 U37 ( .A1(dat_in_b[6]), .A2(dat_in_a[0]), .B1(dat_in_b[5]), .B2(
        dat_in_a[1]), .ZN(n54) );
  AOI22_X2 U38 ( .A1(dat_in_b[4]), .A2(dat_in_a[2]), .B1(dat_in_b[3]), .B2(
        dat_in_a[3]), .ZN(n53) );
  NAND2_X2 U39 ( .A1(dat_in_a[6]), .A2(dat_in_b[0]), .ZN(n52) );
  AOI22_X2 U40 ( .A1(dat_in_a[4]), .A2(dat_in_b[2]), .B1(dat_in_a[5]), .B2(
        dat_in_b[1]), .ZN(n51) );
  NAND4_X2 U41 ( .A1(n55), .A2(n56), .A3(n57), .A4(n58), .ZN(cpa5) );
  NAND2_X2 U42 ( .A1(dat_in_b[3]), .A2(dat_in_a[2]), .ZN(n58) );
  AOI22_X2 U43 ( .A1(dat_in_b[5]), .A2(dat_in_a[0]), .B1(dat_in_a[1]), .B2(
        dat_in_b[4]), .ZN(n57) );
  NAND2_X2 U44 ( .A1(dat_in_a[5]), .A2(dat_in_b[0]), .ZN(n56) );
  AOI22_X2 U45 ( .A1(dat_in_b[2]), .A2(dat_in_a[3]), .B1(dat_in_a[4]), .B2(
        dat_in_b[1]), .ZN(n55) );
  NOR3_X2 U46 ( .A1(n6), .A2(n11), .A3(n36), .ZN(n60) );
  NAND2_X2 U47 ( .A1(dat_in_b[5]), .A2(dat_in_a[7]), .ZN(n36) );
  AOI21_X2 U48 ( .A1(dat_in_a[5]), .A2(dat_in_b[6]), .B(n3), .ZN(n59) );
  AOI21_X2 U49 ( .A1(dat_in_a[4]), .A2(dat_in_b[7]), .B(n4), .ZN(n63) );
  AOI22_X2 U50 ( .A1(dat_in_b[4]), .A2(dat_in_a[7]), .B1(dat_in_a[6]), .B2(
        dat_in_b[5]), .ZN(n64) );
  NAND3_X2 U51 ( .A1(n65), .A2(n66), .A3(n67), .ZN(cpa10) );
  AOI22_X2 U52 ( .A1(dat_in_a[6]), .A2(dat_in_b[4]), .B1(dat_in_a[7]), .B2(
        dat_in_b[3]), .ZN(n67) );
  NAND2_X2 U53 ( .A1(dat_in_a[5]), .A2(dat_in_b[5]), .ZN(n66) );
  AOI22_X2 U54 ( .A1(dat_in_b[7]), .A2(dat_in_a[3]), .B1(dat_in_b[6]), .B2(
        dat_in_a[4]), .ZN(n65) );
  INV_X8 U55 ( .I(n26), .ZN(n1) );
  INV_X8 U56 ( .I(n29), .ZN(n2) );
  INV_X8 U57 ( .I(n63), .ZN(n3) );
  INV_X8 U58 ( .I(n64), .ZN(n4) );
  INV_X8 U59 ( .I(n34), .ZN(n5) );
  INV_X8 U60 ( .I(dat_in_a[6]), .ZN(n6) );
  INV_X8 U61 ( .I(dat_in_a[5]), .ZN(n7) );
  INV_X8 U62 ( .I(dat_in_a[2]), .ZN(n8) );
  INV_X8 U63 ( .I(n24), .ZN(dat_o[1]) );
  INV_X8 U64 ( .I(dat_in_a[0]), .ZN(n10) );
  INV_X8 U65 ( .I(dat_in_b[4]), .ZN(n11) );
  INV_X8 U66 ( .I(dat_in_b[0]), .ZN(n12) );
  AND4_X1 U67 ( .A1(n13), .A2(n14), .A3(n15), .A4(n16), .Z(dat_o[4]) );
  OR3_X1 U68 ( .A1(n18), .A2(n10), .A3(n11), .Z(n14) );
  XOR2_X1 U69 ( .A1(n19), .A2(n20), .Z(n13) );
  NOR2_X2 U70 ( .A1(n1), .A2(n25), .ZN(dat_o[15]) );
  XOR2_X1 U71 ( .A1(n25), .A2(n1), .Z(dat_o[14]) );
  XOR2_X1 U72 ( .A1(n27), .A2(n2), .Z(dat_o[13]) );
  NOR2_X2 U73 ( .A1(n28), .A2(n33), .ZN(n27) );
  AND2_X1 U74 ( .A1(n26), .A2(n34), .Z(n28) );
  AND2_X1 U75 ( .A1(dat_in_b[7]), .A2(dat_in_a[7]), .Z(n26) );
  XOR2_X1 U76 ( .A1(n30), .A2(n31), .Z(dat_o[12]) );
  NOR2_X2 U77 ( .A1(n35), .A2(n32), .ZN(n31) );
  AND2_X1 U78 ( .A1(dat_in_b[6]), .A2(dat_in_a[6]), .Z(n34) );
  AND2_X1 U79 ( .A1(dat_in_b[0]), .A2(dat_in_a[0]), .Z(dat_o[0]) );
  NOR2_X2 U80 ( .A1(n59), .A2(n30), .ZN(cpa11) );
  OR3_X1 U81 ( .A1(n60), .A2(n61), .A3(n62), .Z(n30) );
  AND3_X1 U82 ( .A1(dat_in_b[7]), .A2(n4), .A3(dat_in_a[4]), .Z(n62) );
  AND3_X1 U83 ( .A1(dat_in_b[6]), .A2(n3), .A3(dat_in_a[5]), .Z(n61) );
endmodule

