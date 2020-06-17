module counter42(input X1,X2,X3,X4,
					output Sum,Carry
					);
	wire w1,w2,w3,w4,w5,w6;
	//stage 1
	xor xor1(w1,X1,X2);
	nand nand1(w2,X1,X2);
	xor xor2(w3,X3,X4);
	nand nand2(w4,X3,X4);
	//stage 2
	not not1(w5,w1);
	nand nand3(w6,w1,w3);

	assign Sum  = w3?w5:w1;
	assign Carry=~(w2 & w4 & w6) ;
endmodule
