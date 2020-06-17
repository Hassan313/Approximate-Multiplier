`timescale 1ps/1ps

module dadda_8b_trunc_4b(A,B,P);

 input [7:0] A,B; 
 output [15:0] P; 

 wire [7:0] pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7 ; 
 
 wire s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24;
 
 wire cr1, cr2, cr3, cr4, cr5, cr6, cr7, cr8, cr9, cr10, cr11, cr12, cr15, cr16, cr17, cr18, cr19, cr20, cr21, cr22, cr23;
 
 wire co1, co2, co3, co4, co5, co6, co7, co8, co9, co10, co11, co12, co15, co16, co17, co18, co19, co20, co21, co22, co23, co24;
 
 
/////////////////////////// Partial Products ////////////////////////////////
////////////////// PP 0////////////////////////////
  AND2 U0 (.A1(A[0]),.A2(B[0]),.Z(pp0[0]));
  AND2 U1 (.A1(A[1]),.A2(B[0]),.Z(pp0[1]));
  AND2 U2 (.A1(A[2]),.A2(B[0]),.Z(pp0[2]));
  AND2 U3 (.A1(A[3]),.A2(B[0]),.Z(pp0[3]));
  AND2 U4 (.A1(A[4]),.A2(B[0]),.Z(pp0[4]));
  AND2 U5 (.A1(A[5]),.A2(B[0]),.Z(pp0[5]));
  AND2 U6 (.A1(A[6]),.A2(B[0]),.Z(pp0[6]));
  AND2 u7 (.A1(A[7]),.A2(B[0]),.Z(pp0[7]));
////////////////// PP 1////////////////////////////
  AND2 U7 (.A1(A[0]),.A2(B[1]),.Z(pp1[0]));
  AND2 U8 (.A1(A[1]),.A2(B[1]),.Z(pp1[1]));
  AND2 U9 (.A1(A[2]),.A2(B[1]),.Z(pp1[2]));
  AND2 U10 (.A1(A[3]),.A2(B[1]),.Z(pp1[3]));
  AND2 U11 (.A1(A[4]),.A2(B[1]),.Z(pp1[4]));
  AND2 U12 (.A1(A[5]),.A2(B[1]),.Z(pp1[5]));
  AND2 U13 (.A1(A[6]),.A2(B[1]),.Z(pp1[6]));
  AND2 u14 (.A1(A[7]),.A2(B[1]),.Z(pp1[7]));
////////////////// PP 2////////////////////////////
  AND2 U14 (.A1(A[0]),.A2(B[2]),.Z(pp2[0]));
  AND2 U15 (.A1(A[1]),.A2(B[2]),.Z(pp2[1]));
  AND2 U16 (.A1(A[2]),.A2(B[2]),.Z(pp2[2]));
  AND2 U17 (.A1(A[3]),.A2(B[2]),.Z(pp2[3]));
  AND2 U18 (.A1(A[4]),.A2(B[2]),.Z(pp2[4]));
  AND2 U19 (.A1(A[5]),.A2(B[2]),.Z(pp2[5]));
  AND2 U20 (.A1(A[6]),.A2(B[2]),.Z(pp2[6]));
  AND2 u21 (.A1(A[7]),.A2(B[2]),.Z(pp2[7]));
////////////////// PP 3////////////////////////////
  AND2 U21 (.A1(A[0]),.A2(B[3]),.Z(pp3[0]));
  AND2 U22 (.A1(A[1]),.A2(B[3]),.Z(pp3[1]));
  AND2 U23 (.A1(A[2]),.A2(B[3]),.Z(pp3[2]));
  AND2 U24 (.A1(A[3]),.A2(B[3]),.Z(pp3[3]));
  AND2 U25 (.A1(A[4]),.A2(B[3]),.Z(pp3[4]));
  AND2 U26 (.A1(A[5]),.A2(B[3]),.Z(pp3[5]));
  AND2 U27 (.A1(A[6]),.A2(B[3]),.Z(pp3[6]));
  AND2 u28 (.A1(A[7]),.A2(B[3]),.Z(pp3[7]));
////////////////// PP 4////////////////////////////
  AND2 U28 (.A1(A[0]),.A2(B[4]),.Z(pp4[0]));
  AND2 U29 (.A1(A[1]),.A2(B[4]),.Z(pp4[1]));
  AND2 U30 (.A1(A[2]),.A2(B[4]),.Z(pp4[2]));
  AND2 U31 (.A1(A[3]),.A2(B[4]),.Z(pp4[3]));
  AND2 U32 (.A1(A[4]),.A2(B[4]),.Z(pp4[4]));
  AND2 U33 (.A1(A[5]),.A2(B[4]),.Z(pp4[5]));
  AND2 U34 (.A1(A[6]),.A2(B[4]),.Z(pp4[6]));
  AND2 u35 (.A1(A[7]),.A2(B[4]),.Z(pp4[7]));
////////////////// PP 5////////////////////////////
  AND2 U35 (.A1(A[0]),.A2(B[5]),.Z(pp5[0]));
  AND2 U36 (.A1(A[1]),.A2(B[5]),.Z(pp5[1]));
  AND2 U37 (.A1(A[2]),.A2(B[5]),.Z(pp5[2]));
  AND2 U38 (.A1(A[3]),.A2(B[5]),.Z(pp5[3]));
  AND2 U39 (.A1(A[4]),.A2(B[5]),.Z(pp5[4]));
  AND2 U40 (.A1(A[5]),.A2(B[5]),.Z(pp5[5]));
  AND2 U41 (.A1(A[6]),.A2(B[5]),.Z(pp5[6]));
  AND2 u41 (.A1(A[7]),.A2(B[5]),.Z(pp5[7]));
////////////////// PP 6////////////////////////////
  AND2 U42 (.A1(A[0]),.A2(B[6]),.Z(pp6[0]));
  AND2 U43 (.A1(A[1]),.A2(B[6]),.Z(pp6[1]));
  AND2 U44 (.A1(A[2]),.A2(B[6]),.Z(pp6[2]));
  AND2 U45 (.A1(A[3]),.A2(B[6]),.Z(pp6[3]));
  AND2 U46 (.A1(A[4]),.A2(B[6]),.Z(pp6[4]));
  AND2 U47 (.A1(A[5]),.A2(B[6]),.Z(pp6[5]));
  AND2 U48 (.A1(A[6]),.A2(B[6]),.Z(pp6[6]));
  AND2 u48 (.A1(A[7]),.A2(B[6]),.Z(pp6[7]));
  ////////////////// PP 7////////////////////////////
  AND2 u49 (.A1(A[0]),.A2(B[7]),.Z(pp7[0]));
  AND2 u50 (.A1(A[1]),.A2(B[7]),.Z(pp7[1]));
  AND2 u51 (.A1(A[2]),.A2(B[7]),.Z(pp7[2]));
  AND2 u52 (.A1(A[3]),.A2(B[7]),.Z(pp7[3]));
  AND2 u53 (.A1(A[4]),.A2(B[7]),.Z(pp7[4]));
  AND2 u54 (.A1(A[5]),.A2(B[7]),.Z(pp7[5]));
  AND2 u55 (.A1(A[6]),.A2(B[7]),.Z(pp7[6]));
  AND2 u56 (.A1(A[7]),.A2(B[7]),.Z(pp7[7]));
////////////////////////////////////// Level 1 /////////////////////
  HA U49 (.A(pp0[4]), .B(pp1[3]), .CO(co1), .S(s1));
  COMP4to2 U50 (.X1(pp0[5]),.X2(pp1[4]),.X3(pp2[3]),.X4(1'd0),.Cin(co1),.Cout(co2),.Sum(s2),.Carry(cr2));
  COMP4to2 U51 (.X1(pp0[6]),.X2(pp1[5]),.X3(pp2[4]),.X4(pp3[3]),.Cin(co2),.Cout(co3),.Sum(s3),.Carry(cr3));
  HA U52 (.A(pp4[2]), .B(pp5[1]), .CO(co4), .S(s4));  
  COMP4to2 U53 (.X1(pp0[7]),.X2(pp1[6]),.X3(pp2[5]),.X4(pp3[4]),.Cin(co3),.Cout(co5),.Sum(s5),.Carry(cr5));
  COMP4to2 U54 (.X1(pp4[3]),.X2(pp5[2]),.X3(pp6[1]),.X4(1'd0),.Cin(co4),.Cout(co6),.Sum(s6),.Carry(cr6));
  COMP4to2 U55 (.X1(pp1[7]),.X2(pp2[6]),.X3(pp3[5]),.X4(pp4[4]),.Cin(co5),.Cout(co7),.Sum(s7),.Carry(cr7));
  COMP4to2 U56 (.X1(pp5[3]),.X2(pp6[2]),.X3(pp7[1]),.X4(1'd0),.Cin(co6),.Cout(co8),.Sum(s8),.Carry(cr8));
  COMP4to2 U57 (.X1(pp2[7]),.X2(pp3[6]),.X3(pp4[5]),.X4(pp5[4]),.Cin(co7),.Cout(co9),.Sum(s9),.Carry(cr9));
  FA U58 (.A(pp6[3]), .B(pp7[2]), .CI(co8), .CO(co10), .S(s10)); 
  COMP4to2 U59 (.X1(pp3[7]),.X2(pp4[6]),.X3(pp5[5]),.X4(pp6[4]),.Cin(co9),.Cout(co11),.Sum(s11),.Carry(cr11));
  FA U60 (.A(pp4[7]), .B(pp5[6]), .CI(co11), .CO(co12), .S(s12));   
////////////////////////////////////// Level 2 /////////////////////
  COMP4to2 U63 (.X1(s1),.X2(pp2[2]),.X3(pp3[1]),.X4(pp4[0]),.Cin(1'd0),.Cout(co15),.Sum(s15),.Carry(cr15));
  COMP4to2 U64 (.X1(s2),.X2(pp3[2]),.X3(pp4[1]),.X4(pp5[0]),.Cin(co15),.Cout(co16),.Sum(s16),.Carry(cr16));
  COMP4to2 U65 (.X1(s3),.X2(cr2),.X3(s4),.X4(pp6[0]),.Cin(co16),.Cout(co17),.Sum(s17),.Carry(cr17));
  COMP4to2 U66 (.X1(s5),.X2(cr3),.X3(s6),.X4(pp7[0]),.Cin(co17),.Cout(co18),.Sum(s18),.Carry(cr18));
  COMP4to2 U67 (.X1(s7),.X2(cr5),.X3(s8),.X4(cr6),.Cin(co18),.Cout(co19),.Sum(s19),.Carry(cr19));
  COMP4to2 U68 (.X1(s9),.X2(cr7),.X3(s10),.X4(cr8),.Cin(co19),.Cout(co20),.Sum(s20),.Carry(cr20));
  COMP4to2 U69 (.X1(s11),.X2(cr9),.X3(co10),.X4(pp7[3]),.Cin(co20),.Cout(co21),.Sum(s21),.Carry(cr21)); 
  COMP4to2 U70 (.X1(s12),.X2(cr11),.X3(pp6[5]),.X4(pp7[4]),.Cin(co21),.Cout(co22),.Sum(s22),.Carry(cr22));
  COMP4to2 U71 (.X1(co12),.X2(pp5[7]),.X3(pp6[6]),.X4(pp7[5]),.Cin(co22),.Cout(co23),.Sum(s23),.Carry(cr23));
  FA U72 (.A(pp6[7]), .B(pp7[6]), .CI(co23), .CO(co24), .S(s24));
////////////////////////////////////////////////////////////////// 
   
  assign P = {pp7[7],s24,s23,s22,s21,s20,s19,s18,s17,s16,s15,1'd0,1'd0,1'd0,1'd0} + {co24,cr23,cr22,cr21,cr20,cr19,cr18,cr17,cr16,cr15,1'd0,1'd0,1'd0,1'd0,1'd0} ;
  

endmodule 