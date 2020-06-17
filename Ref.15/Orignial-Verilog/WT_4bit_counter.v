module WT_4bit_counter(A, B, O);
	input [3: 0] A;
	input [3: 0] B;
	output [7: 0] O;
	
	wire [7:0] L1,L2,L3,L4;
	//partial products
	and and0(P00, A[0], B[0]); 
	and and1(P01, A[1], B[0]); 
	and and2(P02, A[2], B[0]); 
	and and3(P03, A[3], B[0]); 
	and and4(P10, A[0], B[1]); 
	and and5(P11, A[1], B[1]); 
	and and6(P12, A[2], B[1]); 
	and and7(P13, A[3], B[1]); 
	and and8(P20, A[0], B[2]); 
	and and9(P21, A[1], B[2]); 
	and and10(P22, A[2], B[2]);
	and and11(P23, A[3], B[2]);
	and and12(P30, A[0], B[3]);
	and and13(P31, A[1], B[3]);
	and and14(P32, A[2], B[3]);
	and and15(P33, A[3], B[3]);
	//sum of PPs
	//stage 1
	assign  L1[0] = P00;
	HA HA1(.A(P01), .B(P10) ,.Sum(L1[1]) , .Cout(L2[2]));
	FA FA1(.A(P02), .B(P11) , .Cin(P20) , .Sum(L1[2]) , .Cout(L2[3]));
	counter42 cnt1(.X1(P03),.X2(P12),.X3(P21),.X4(P30),.Sum(L1[3]),.Carry(L2[4]));
	FA FA2(.A(P13), .B(P22) , .Cin(P31) , .Sum(L1[4]) , .Cout(L2[5]));
	HA HA2(.A(P23), .B(P32) ,.Sum(L1[5]) , .Cout(L2[6]));
	assign  L1[6] = P33;
	//stage 2
	assign  L3[0] = L1[0];
	assign  L3[1] = L1[1];
	assign  L3[7] = 1'b0;
	HA HA3(.A(L1[2]), .B(L2[2]) ,.Sum(L3[2]) , .Cout(L4[3]));
	HA HA4(.A(L1[3]), .B(L2[3]) ,.Sum(L3[3]) , .Cout(L4[4]));
	HA HA5(.A(L1[4]), .B(L2[4]) ,.Sum(L3[4]) , .Cout(L4[5]));
	HA HA6(.A(L1[5]), .B(L2[5]) ,.Sum(L3[5]) , .Cout(L4[6]));
	HA HA7(.A(L1[6]), .B(L2[6]) ,.Sum(L3[6]) , .Cout(L4[7]));
	assign  L4[0] = 1'b0;
	assign  L4[1] = 1'b0;
	assign  L4[2] = 1'b0;
	 
	assign O = L3[7:0] + L4[7:0];
	
endmodule
