module dadda_8bit_cmp3(A, B, O);
	input [7: 0] A;
	input [7: 0] B;
	output [15: 0] O;
	wire [15: 0] L1_0;
	wire [15: 0] L1_1;
	wire [15: 0] L1_2;
	wire [15: 0] L1_3;
	wire [15: 0] L1_4;
	wire [15: 0] L1_5;
	wire [15: 0] L1_6;
	wire [15: 0] L1_7;
	wire [15: 0] L2_0;
	wire [15: 0] L2_1;
	wire [15: 0] L2_2;
	wire [15: 0] L2_3;
	wire [15: 0] L3_0;
	wire [15: 0] L3_1;
	wire int1,int2,int3,int4,int5,int6,int7,int8,int9,int10,int11,int12,int13,int14,int15,int16,int17,int18,int19,int20,int21;

	and and0(L1_0[0], A[0], B[0]);
	and and1(L1_0[1], A[1], B[0]);
	and and2(L1_0[2], A[2], B[0]);
	and and3(L1_0[3], A[3], B[0]);
	and and4(L1_0[4], A[4], B[0]);
	and and5(L1_0[5], A[5], B[0]);
	and and6(L1_0[6], A[6], B[0]);
	and and7(L1_0[7], A[7], B[0]);
	and and8(L1_1[1], A[0], B[1]);
	and and9(L1_1[2], A[1], B[1]);
	and and10(L1_1[3], A[2], B[1]);
	and and11(L1_1[4], A[3], B[1]);
	and and12(L1_1[5], A[4], B[1]);
	and and13(L1_1[6], A[5], B[1]);
	and and14(L1_1[7], A[6], B[1]);
	and and15(L1_1[8], A[7], B[1]);
	and and16(L1_2[2], A[0], B[2]);
	and and17(L1_2[3], A[1], B[2]);
	and and18(L1_2[4], A[2], B[2]);
	and and19(L1_2[5], A[3], B[2]);
	and and20(L1_2[6], A[4], B[2]);
	and and21(L1_2[7], A[5], B[2]);
	and and22(L1_2[8], A[6], B[2]);
	and and23(L1_2[9], A[7], B[2]);
	and and24(L1_3[3], A[0], B[3]);
	and and25(L1_3[4], A[1], B[3]);
	and and26(L1_3[5], A[2], B[3]);
	and and27(L1_3[6], A[3], B[3]);
	and and28(L1_3[7], A[4], B[3]);
	and and29(L1_3[8], A[5], B[3]);
	and and30(L1_3[9], A[6], B[3]);
	and and31(L1_3[10], A[7], B[3]);
	and and32(L1_4[4], A[0], B[4]);
	and and33(L1_4[5], A[1], B[4]);
	and and34(L1_4[6], A[2], B[4]);
	and and35(L1_4[7], A[3], B[4]);
	and and36(L1_4[8], A[4], B[4]);
	and and37(L1_4[9], A[5], B[4]);
	and and38(L1_4[10], A[6], B[4]);
	and and39(L1_4[11], A[7], B[4]);
	and and40(L1_5[5], A[0], B[5]);
	and and41(L1_5[6], A[1], B[5]);
	and and42(L1_5[7], A[2], B[5]);
	and and43(L1_5[8], A[3], B[5]);
	and and44(L1_5[9], A[4], B[5]);
	and and45(L1_5[10], A[5], B[5]);
	and and46(L1_5[11], A[6], B[5]);
	and and47(L1_5[12], A[7], B[5]);
	and and48(L1_6[6], A[0], B[6]);
	and and49(L1_6[7], A[1], B[6]);
	and and50(L1_6[8], A[2], B[6]);
	and and51(L1_6[9], A[3], B[6]);
	and and52(L1_6[10], A[4], B[6]);
	and and53(L1_6[11], A[5], B[6]);
	and and54(L1_6[12], A[6], B[6]);
	and and55(L1_6[13], A[7], B[6]);
	and and56(L1_7[7], A[0], B[7]);
	and and57(L1_7[8], A[1], B[7]);
	and and58(L1_7[9], A[2], B[7]);
	and and59(L1_7[10], A[3], B[7]);
	and and60(L1_7[11], A[4], B[7]);
	and and61(L1_7[12], A[5], B[7]);
	and and62(L1_7[13], A[6], B[7]);
	and and63(L1_7[14], A[7], B[7]);
//---------------<><2><>----------
	assign  L2_0[0] = L1_0[0];
	assign  L2_0[1] = L1_0[1];
	assign  L2_0[2] = L1_0[2];
	assign  L2_0[3] = L1_0[3];
	assign  L2_1[1] = L1_1[1];
	assign  L2_1[2] = L1_1[2];
	assign  L2_1[3] = L1_1[3];
	assign  L2_2[2] = L1_2[2];
	assign  L2_2[3] = L1_2[3];
	assign  L2_3[3] = L1_3[3];
	assign  L2_1[4] = L1_2[4];
	assign  L2_2[4] = L1_3[4];
	assign  L2_3[4] = L1_4[4];
	assign  L2_2[5] = L1_4[5];
	assign  L2_3[5] = L1_5[5];
	assign  L2_3[6] = L1_6[6];
	assign  L2_2[10] = L1_7[10];	
	assign  L2_2[11] = L1_6[11];
	assign  L2_3[11] = L1_7[11];	
	assign  L2_1[12] = L1_5[12];
	assign  L2_2[12] = L1_6[12];
	assign  L2_3[12] = L1_7[12];
	assign  L2_0[13] = L1_6[13];
	assign  L2_1[13] = L1_7[13];
	assign  L2_0[14] = L1_7[14];
	assign  L2_1[5]=1'b0;
	assign  L2_3[7]=1'b0;
	HA HA1(.A(L1_0[4]), .B(L1_1[4]) ,.Sum(L2_0[4]) , .Cout(int1));
	cmp3 cmp1(.X1(L1_0[5]), .X2(L1_1[5]), .X3(L1_2[5]), .X4(L1_3[5]), .Cin(int1),.Sum(L2_0[5]), .Carry(L2_1[6]), .Cout(int2));
	cmp3 cmp2(.X1(L1_0[6]), .X2(L1_1[6]), .X3(L1_2[6]), .X4(L1_3[6]), .Cin(int2),.Sum(L2_0[6]), .Carry(L2_1[7]), .Cout(int3));
	HA HA2(.A(L1_4[6]), .B(L1_5[6]) ,.Sum(L2_2[6]) , .Cout(int4));                                                
	cmp3 cmp_3(.X1(L1_0[7]), .X2(L1_1[7]), .X3(L1_2[7]), .X4(L1_3[7]), .Cin(int3),.Sum(L2_0[7]), .Carry(L2_1[8]), .Cout(int5));
	cmp3 cmp4(.X1(L1_4[7]), .X2(L1_5[7]), .X3(L1_6[7]), .X4(L1_7[7]), .Cin(int4),.Sum(L2_2[7]), .Carry(L2_2[8]), .Cout(int6));
	cmp3 cmp5(.X1(L1_1[8]), .X2(L1_2[8]), .X3(L1_3[8]), .X4(L1_4[8]), .Cin(int5),.Sum(L2_0[8]), .Carry(L2_1[9]), .Cout(int7));
	cmp3 cmp6(.X1(L1_5[8]), .X2(L1_6[8]), .X3(L1_7[8]), .X4(1'b0)   , .Cin(int6),.Sum(L2_3[8]), .Carry(L2_2[9]), .Cout(int8));
	cmp3 cmp7(.X1(L1_2[9]), .X2(L1_3[9]), .X3(L1_4[9]), .X4(L1_5[9]), .Cin(int7),.Sum(L2_0[9]), .Carry(L2_1[10]), .Cout(int9));
	FA FA1(.A(L1_6[9]), .B(L1_7[9]) , .Cin(int8) , .Sum(L2_3[9]) , .Cout(L2_3[10]));
	cmp3 cmp8(.X1(L1_3[10]),.X2(L1_4[10]),.X3(L1_5[10]),.X4(L1_6[10]),.Cin(int9),.Sum(L2_0[10]),.Carry(L2_1[11]), .Cout(int10));
	FA FA2(.A(L1_4[11]), .B(L1_5[11]) , .Cin(int10) , .Sum(L2_0[11]) , .Cout(L2_0[12]));                                                
//---------------<><3><>----------	
	assign  L3_0[0] = L2_0[0];
	assign  L3_0[1] = L2_0[1];
	assign  L3_1[1] = L2_1[1];
	assign  L3_1[2] = L2_2[2];
	assign  L3_0[14] = L2_0[14];
	assign  L3_1[3]=1'b0;
	HA HA3(.A(L2_0[2]), .B(L2_1[2]) ,.Sum(L3_0[2]) , .Cout(int11));//L3_1[3]));
	cmp3 cmp9 (.X1(L2_0[3]),  .X2(L2_1[3]),  .X3(L2_2[3]),  .X4(L2_3[3]),  .Cin(int11),.Sum(L3_0[3]) ,.Carry(L3_1[4]) , .Cout(int12));
	cmp3 cmp10(.X1(L2_0[4]),  .X2(L2_1[4]),  .X3(L2_2[4]),  .X4(L2_3[4]),  .Cin(int12),.Sum(L3_0[4]) ,.Carry(L3_1[5]) , .Cout(int13));
	cmp3 cmp11(.X1(L2_0[5]),  .X2(L2_1[5]),  .X3(L2_2[5]),  .X4(L2_3[5]),  .Cin(int13),.Sum(L3_0[5]) ,.Carry(L3_1[6]) , .Cout(int14));
	cmp3 cmp12(.X1(L2_0[6]),  .X2(L2_1[6]),  .X3(L2_2[6]),  .X4(L2_3[6]),  .Cin(int14),.Sum(L3_0[6]) ,.Carry(L3_1[7]) , .Cout(int15));
	cmp3 cmp13(.X1(L2_0[7]),  .X2(L2_1[7]),  .X3(L2_2[7]),  .X4(L2_3[7]),  .Cin(int15),.Sum(L3_0[7]) ,.Carry(L3_1[8]) , .Cout(int16));
	cmp3 cmp14(.X1(L2_0[8]),  .X2(L2_1[8]),  .X3(L2_2[8]),  .X4(L2_3[8]),  .Cin(int16),.Sum(L3_0[8]) ,.Carry(L3_1[9]) , .Cout(int17));
	cmp3 cmp15(.X1(L2_0[9]),  .X2(L2_1[9]),  .X3(L2_2[9]),  .X4(L2_3[9]),  .Cin(int17),.Sum(L3_0[9]) ,.Carry(L3_1[10]), .Cout(int18));
	cmp3 cmp16(.X1(L2_0[10]), .X2(L2_1[10]), .X3(L2_2[10]), .X4(L2_3[10]), .Cin(int18),.Sum(L3_0[10]),.Carry(L3_1[11]), .Cout(int19));
	cmp3 cmp17(.X1(L2_0[11]), .X2(L2_1[11]), .X3(L2_2[11]), .X4(L2_3[11]), .Cin(int19),.Sum(L3_0[11]),.Carry(L3_1[12]), .Cout(int20));
	cmp3 cmp18(.X1(L2_0[12]), .X2(L2_1[12]), .X3(L2_2[12]), .X4(L2_3[12]), .Cin(int20),.Sum(L3_0[12]),.Carry(L3_1[13]), .Cout(int21));	
	FA FA3(.A(L2_0[13]), .B(L2_1[13]) , .Cin(int21) , .Sum(L3_0[13]) , .Cout(L3_1[14])); 
	
	assign L3_1[0]=1'b0;
	assign L3_0[15]=1'b0;
	assign L3_1[15]=1'b0;
	
//---------------<><3><>----------		
	assign O = L3_0[15:0] + L3_1[15:0];
endmodule