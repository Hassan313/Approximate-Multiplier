

module CSA_Mult_8bits (A,B,P);

 input [7:0] A,B; 
 output [15:0] P; 

 wire pp00,pp01,pp02,pp03,pp04,pp05,pp06,pp07; 
 wire S_10,C_10,S_11,C_11,S_12,C_12,S_13,C_13,S_14,C_14,S_15,C_15,S_16,C_16,S_17,C_17;
 wire S_20,C_20,S_21,C_21,S_22,C_22,S_23,C_23,S_24,C_24,S_25,C_25,S_26,C_26,S_27,C_27;
 wire S_30,C_30,S_31,C_31,S_32,C_32,S_33,C_33,S_34,C_34,S_35,C_35,S_36,C_36,S_37,C_37;
 wire S_40,C_40,S_41,C_41,S_42,C_42,S_43,C_43,S_44,C_44,S_45,C_45,S_46,C_46,S_47,C_47;
 wire S_50,C_50,S_51,C_51,S_52,C_52,S_53,C_53,S_54,C_54,S_55,C_55,S_56,C_56,S_57,C_57;
 wire S_60,C_60,S_61,C_61,S_62,C_62,S_63,C_63,S_64,C_64,S_65,C_65,S_66,C_66,S_67,C_67;
 wire S_70,C_70,S_71,C_71,S_72,C_72,S_73,C_73,S_74,C_74,S_75,C_75,S_76,C_76,S_77,C_77;
 
/*  /// Level 0 ///
 AND2 U0 (.A1(A[0]),.A2(B[0]),.Z(pp00));
 AND2 U1 (.A1(A[0]),.A2(B[1]),.Z(pp01));
 AND2 U2 (.A1(A[0]),.A2(B[2]),.Z(pp02));
 AND2 U3 (.A1(A[0]),.A2(B[3]),.Z(pp03));
 AND2 U4 (.A1(A[0]),.A2(B[4]),.Z(pp04));
 AND2 U5 (.A1(A[0]),.A2(B[5]),.Z(pp05));
 AND2 U6 (.A1(A[0]),.A2(B[6]),.Z(pp06));
 AND2 U7 (.A1(A[0]),.A2(B[7]),.Z(pp07));

 /// Level 1 /// 
 CSA_Cell U8 (A[1],B[0],pp01,1'd0,S_10,C_10);
 CSA_Cell U9 (A[1],B[1],pp02,1'd0,S_11,C_11);
 CSA_Cell U10 (A[1],B[2],pp03,1'd0,S_12,C_12);
 CSA_Cell U11 (A[1],B[3],pp04,1'd0,S_13,C_13);
 CSA_Cell U12 (A[1],B[4],pp05,1'd0,S_14,C_14);
 CSA_Cell U13 (A[1],B[5],pp06,1'd0,S_15,C_15);
 CSA_Cell U14 (A[1],B[6],pp07,1'd0,S_16,C_16);
 CSA_Cell U15 (A[1],B[7],1'd0,1'd0,S_17,C_17); */
 
 
 /// Level 2 /// 
/*  CSA_Cell U16 (A[2],B[0],S_11,C_10,S_20,C_20);
 CSA_Cell U17 (A[2],B[1],S_12,C_11,S_21,C_21); */
 CSA_Cell U18 (A[2],B[2],1'd0,1'd0,S_22,C_22);
 CSA_Cell U19 (A[2],B[3],1'd0,1'd0,S_23,C_23);
 CSA_Cell U20 (A[2],B[4],1'd0,1'd0,S_24,C_24);
 CSA_Cell U21 (A[2],B[5],1'd0,1'd0,S_25,C_25);
 CSA_Cell U22 (A[2],B[6],1'd0,1'd0,S_26,C_26);
 CSA_Cell U23 (A[2],B[7],1'd0,1'd0,S_27,C_27);
 
 
 /// Level 3 /// 
 //CSA_Cell U24 (A[3],B[0],S_21,C_20,S_30,C_30);
 CSA_Cell U25 (A[3],B[1],S_22,1'd0,S_31,C_31);
 CSA_Cell U26 (A[3],B[2],S_23,C_22,S_32,C_32);
 CSA_Cell U27 (A[3],B[3],S_24,C_23,S_33,C_33);
 CSA_Cell U28 (A[3],B[4],S_25,C_24,S_34,C_34);
 CSA_Cell U29 (A[3],B[5],S_26,C_25,S_35,C_35);
 CSA_Cell U30 (A[3],B[6],S_27,C_26,S_36,C_36);
 CSA_Cell U31 (A[3],B[7],1'd0,C_27,S_37,C_37);
 
 
 /// Level 4 /// 
 CSA_Cell U32 (A[4],B[0],S_31,1'd0,S_40,C_40);
 CSA_Cell U33 (A[4],B[1],S_32,C_31,S_41,C_41);
 CSA_Cell U34 (A[4],B[2],S_33,C_32,S_42,C_42);
 CSA_Cell U35 (A[4],B[3],S_34,C_33,S_43,C_43);
 CSA_Cell U36 (A[4],B[4],S_35,C_34,S_44,C_44);
 CSA_Cell U37 (A[4],B[5],S_36,C_35,S_45,C_45);
 CSA_Cell U38 (A[4],B[6],S_37,C_36,S_46,C_46);
 CSA_Cell U39 (A[4],B[7],1'd0,C_37,S_47,C_47);
 
 
 /// Level 5 /// 
 CSA_Cell U40 (A[5],B[0],S_41,C_40,S_50,C_50);
 CSA_Cell U41 (A[5],B[1],S_42,C_41,S_51,C_51);
 CSA_Cell U42 (A[5],B[2],S_43,C_42,S_52,C_52);
 CSA_Cell U43 (A[5],B[3],S_44,C_43,S_53,C_53);
 CSA_Cell U44 (A[5],B[4],S_45,C_44,S_54,C_54);
 CSA_Cell U45 (A[5],B[5],S_46,C_45,S_55,C_55);
 CSA_Cell U46 (A[5],B[6],S_47,C_46,S_56,C_56);
 CSA_Cell U47 (A[5],B[7],1'd0,C_47,S_57,C_57);
 
 
 /// Level 6 /// 
 CSA_Cell U48 (A[6],B[0],S_51,C_50,S_60,C_60);
 CSA_Cell U49 (A[6],B[1],S_52,C_51,S_61,C_61);
 CSA_Cell U50 (A[6],B[2],S_53,C_52,S_62,C_62);
 CSA_Cell U51 (A[6],B[3],S_54,C_53,S_63,C_63);
 CSA_Cell U52 (A[6],B[4],S_55,C_54,S_64,C_64);
 CSA_Cell U53 (A[6],B[5],S_56,C_55,S_65,C_65);
 CSA_Cell U54 (A[6],B[6],S_57,C_56,S_66,C_66);
 CSA_Cell U55 (A[6],B[7],1'd0,C_57,S_67,C_67);
 
 
 /// Level 7 /// 
 CSA_Cell U56 (A[7],B[0],S_61,C_60,S_70,C_70);
 CSA_Cell U57 (A[7],B[1],S_62,C_61,S_71,C_71);
 CSA_Cell U58 (A[7],B[2],S_63,C_62,S_72,C_72);
 CSA_Cell U59 (A[7],B[3],S_64,C_63,S_73,C_73);
 CSA_Cell U60 (A[7],B[4],S_65,C_64,S_74,C_74);
 CSA_Cell U61 (A[7],B[5],S_66,C_65,S_75,C_75);
 CSA_Cell U62 (A[7],B[6],S_67,C_66,S_76,C_76);
 CSA_Cell U63 (A[7],B[7],1'd0,C_67,S_77,C_77);

 
  
  assign P = {C_77,S_77,S_76,S_75,S_74,S_73,S_72,S_71,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0} + {C_77,C_76,C_75,C_74,C_73,C_72,C_71,C_70,S_70,S_60,S_50,S_40,1'd0,1'd0,1'd0,1'd0} ;
  

endmodule 