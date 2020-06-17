// Library = EvoApprox8b
// Circuit = mul8_061
// Area   (180) = 4004
// Delay  (180) = 2.170
// Power  (180) = 1492.70
// Area   (45) = 288
// Delay  (45) = 0.830
// Power  (45) = 126.90
// Nodes = 76
// HD = 376010
// MAE = 616.30728
// MSE = 663817.07422
// MRE = 9.94 %
// WCE = 2815
// WCRE = 700 %
// EP = 99.0 %

module mul8_061(A, B, O);
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire [2031:0] N;

  assign N[0] = A[0];
  assign N[1] = A[0];
  assign N[2] = A[1];
  assign N[3] = A[1];
  assign N[4] = A[2];
  assign N[5] = A[2];
  assign N[6] = A[3];
  assign N[7] = A[3];
  assign N[8] = A[4];
  assign N[9] = A[4];
  assign N[10] = A[5];
  assign N[11] = A[5];
  assign N[12] = A[6];
  assign N[13] = A[6];
  assign N[14] = A[7];
  assign N[15] = A[7];
  assign N[16] = B[0];
  assign N[17] = B[0];
  assign N[18] = B[1];
  assign N[19] = B[1];
  assign N[20] = B[2];
  assign N[21] = B[2];
  assign N[22] = B[3];
  assign N[23] = B[3];
  assign N[24] = B[4];
  assign N[25] = B[4];
  assign N[26] = B[5];
  assign N[27] = B[5];
  assign N[28] = B[6];
  assign N[29] = B[6];
  assign N[30] = B[7];
  assign N[31] = B[7];

  XNOR2_X1 n40(.A1(N[12]), .A2(N[12]), .ZN(N[40]));
  assign N[41] = N[40];
  INV_X1 n42(.I(N[41]), .ZN(N[42]));
  assign N[43] = N[42];
  OR2_X1 n70(.A1(N[14]), .A2(N[8]), .Z(N[70]));
  assign N[71] = N[70];
  NOR3_X1 n82(.A1(N[6]), .A2(N[4]), .A3(N[71]), .ZN(N[82]));
  assign N[83] = N[82];
  OR2_X1 n86(.A1(N[26]), .A2(N[24]), .Z(N[86]));
  assign N[87] = N[86];
  NAND3_X1 n88(.A1(N[2]), .A2(N[28]), .A3(N[83]), .ZN(N[88]));
  assign N[89] = N[88];
  NOR3_X1 n90(.A1(N[87]), .A2(N[28]), .A3(N[22]), .ZN(N[90]));
  assign N[91] = N[90];
  AOI21_X1 n156(.A1(N[89]), .A2(N[82]), .B(N[91]), .ZN(N[156]));
  assign N[157] = N[156];
  AND2_X1 n160(.A1(N[18]), .A2(N[12]), .Z(N[160]));
  assign N[161] = N[160];
  INV_X1 n190(.I(N[43]), .ZN(N[190]));
  assign N[191] = N[190];
  INV_X1 n316(.I(N[41]), .ZN(N[316]));
  assign N[317] = N[316];
  AND2_X1 n372(.A1(N[14]), .A2(N[20]), .Z(N[372]));
  AND2_X1 n386(.A1(N[6]),  .A2(N[4]), .Z(N[386]));
  AND2_X1 n420(.A1(N[26]), .A2(N[386]), .Z(N[420]));
  AND2_X1 n460(.A1(N[10]), .A2(N[22]), .Z(N[460]));
  AND2_X1 n476(.A1(N[12]), .A2(N[22]), .Z(N[476]));
  AND2_X1 n490(.A1(N[14]), .A2(N[22]), .Z(N[490]));
  assign N[491] = N[490];
  AND2_X1 n506(.A1(N[0]),  .A2(N[20]), .Z(N[506]));
  AND2_X1 n564(.A1(N[8]),  .A2(N[24]), .Z(N[564]));
  AND2_X1 n580(.A1(N[10]), .A2(N[24]), .Z(N[580]));
  AND2_X1 n594(.A1(N[12]), .A2(N[24]), .Z(N[594]));
  AND2_X1 n608(.A1(N[14]), .A2(N[24]), .Z(N[608]));
  assign N[609] = N[608];
  AND2_X1 n682(.A1(N[8]), .A2(N[26]), .Z(N[682]));
  assign N[683] = N[682];
  AND2_X1 n698(.A1(N[10]), .A2(N[26]), .Z(N[698]));
  assign N[699] = N[698];
  AND2_X1 n712(.A1(N[12]), .A2(N[26]), .Z(N[712]));
  AND2_X1 n728(.A1(N[14]), .A2(N[26]), .Z(N[728]));
  AND2_X1 n786(.A1(N[6]),  .A2(N[28]), .Z(N[786]));
  AND2_X1 n802(.A1(N[8]),  .A2(N[28]), .Z(N[802]));
  AND2_X1 n816(.A1(N[10]), .A2(N[28]), .Z(N[816]));
  AND2_X1 n832(.A1(N[12]), .A2(N[28]), .Z(N[832]));
  AND2_X1 n846(.A1(N[14]), .A2(N[28]), .Z(N[846]));
  assign N[847] = N[846];
  AND2_X1 n890(.A1(N[4]),  .A2(N[30]), .Z(N[890]));
  AND2_X1 n906(.A1(N[6]),  .A2(N[30]), .Z(N[906]));
  AND2_X1 n920(.A1(N[8]),  .A2(N[30]), .Z(N[920]));
  AND2_X1 n934(.A1(N[10]), .A2(N[30]), .Z(N[934]));
  AND2_X1 n950(.A1(N[12]), .A2(N[30]), .Z(N[950]));
  AND2_X1 n964(.A1(N[14]), .A2(N[30]), .Z(N[964]));
  BUF_X2 n1106(.I(N[491]), .Z(N[1106]));
  assign N[1107] = N[1106];
  OR2_X1 n1172(.A1(N[460]), .A2(N[564]), .Z(N[1172]));
  assign N[1173] = N[1172];
  HA_X1 n1186(.A(N[476]), .B(N[580]), .S(N[1186]), .CO(N[1187]));
  FA_X1 n1202(.A(N[1107]), .B(N[594]), .CI(N[699]), .S(N[1202]), .CO(N[1203]));
  BUF_X2 n1208(.I(N[609]), .Z(N[1208]));
  assign N[1209] = N[1208];
  AND2_X1 n1216(.A1(N[608]), .A2(N[712]), .Z(N[1216]));
  assign N[1217] = N[1216];
  HA_X1 n1232(.A(N[1209]), .B(N[712]), .S(N[1232]), .CO(N[1233]));
  INV_X1 n1246(.I(N[191]), .ZN(N[1246]));
  FA_X1 n1350(.A(N[372]), .B(N[420]), .CI(N[1186]), .S(N[1350]), .CO(N[1351]));
  OR2_X1 n1408(.A1(N[1173]), .A2(N[786]), .Z(N[1408]));
  FA_X1 n1424(.A(N[1187]), .B(N[802]), .CI(N[906]), .S(N[1424]), .CO(N[1425]));
  FA_X1 n1438(.A(N[1203]), .B(N[816]), .CI(N[920]), .S(N[1438]), .CO(N[1439]));
  FA_X1 n1454(.A(N[1216]), .B(N[832]), .CI(N[934]), .S(N[1454]), .CO(N[1455]));
  AND2_X1 n1468(.A1(N[846]), .A2(N[950]), .Z(N[1468]));
  HA_X1 n1482(.A(N[847]), .B(N[950]), .S(N[1482]), .CO(N[1483]));
  BUF_X2 n1542(.I(N[157]), .Z(N[1542]));
  assign N[1543] = N[1542];
  FA_X1 n1586(.A(N[1350]), .B(N[316]), .CI(N[1408]), .S(N[1586]), .CO(N[1587]));
  FA_X1 n1602(.A(N[1202]), .B(N[1216]), .CI(N[1424]), .S(N[1602]), .CO(N[1603]));
  AND2_X1 n1616(.A1(N[1232]), .A2(N[1438]), .Z(N[1616]));
  OR2_X1 n1632(.A1(N[1232]), .A2(N[1438]), .Z(N[1632]));
  AND2_X1 n1646(.A1(N[728]), .A2(N[1454]), .Z(N[1646]));
  HA_X1 n1660(.A(N[728]), .B(N[1454]), .S(N[1660]), .CO(N[1661]));
  HA_X1 n1720(.A(N[1217]), .B(N[1543]), .S(N[1720]), .CO(N[1721]));
  OR2_X1 n1750(.A1(N[1586]), .A2(N[890]), .Z(N[1750]));
  FA_X1 n1764(.A(N[1602]), .B(N[1587]), .CI(N[1351]), .S(N[1764]), .CO(N[1765]));
  FA_X1 n1780(.A(N[1632]), .B(N[1603]), .CI(N[1425]), .S(N[1780]), .CO(N[1781]));
  FA_X1 n1794(.A(N[1660]), .B(N[1616]), .CI(N[1439]), .S(N[1794]), .CO(N[1795]));
  FA_X1 n1808(.A(N[1482]), .B(N[1646]), .CI(N[1455]), .S(N[1808]), .CO(N[1809]));
  AND2_X1 n1824(.A1(N[41]), .A2(N[1468]), .Z(N[1824]));
  HA_X1 n1838(.A(N[964]), .B(N[1468]), .S(N[1838]), .CO(N[1839]));
  BUF_X2 n1882(.I(N[1720]), .Z(N[1882]));
  OR2_X1 n1898(.A1(N[161]), .A2(N[890]), .Z(N[1898]));
  MUX2_X1 n1912(.I0(N[1750]), .I1(N[190]), .S(N[683]), .Z(N[1912]));
  BUF_X2 n1928(.I(N[1764]), .Z(N[1928]));
  HA_X1 n1942(.A(N[1780]), .B(N[1765]), .S(N[1942]), .CO(N[1943]));
  FA_X1 n1956(.A(N[1794]), .B(N[1781]), .CI(N[1943]), .S(N[1956]), .CO(N[1957]));
  FA_X1 n1972(.A(N[1808]), .B(N[1795]), .CI(N[1957]), .S(N[1972]), .CO(N[1973]));
  FA_X1 n1986(.A(N[1838]), .B(N[1809]), .CI(N[1973]), .S(N[1986]), .CO(N[1987]));
  OR2_X1 n2016(.A1(N[1824]), .A2(N[1987]), .Z(N[2016]));

  assign O[0] = N[1246];
  assign O[1] = N[1542];
  assign O[2] = N[1246];
  assign O[3] = N[1216];
  assign O[4] = N[317];
  assign O[5] = N[506];
  assign O[6] = N[1543];
  assign O[7] = N[1882];
  assign O[8] = N[1898];
  assign O[9] = N[1912];
  assign O[10] = N[1928];
  assign O[11] = N[1942];
  assign O[12] = N[1956];
  assign O[13] = N[1972];
  assign O[14] = N[1986];
  assign O[15] = N[2016];

endmodule