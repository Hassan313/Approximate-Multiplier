module cmp4(input X1,X2,X3,X4,Cin, 
					output Sum,Carry,Cout
					);
	wire w1,w2,w3,w4;
	nand (w1,X1,X2);
	nand (w2,X3,X4);
	nand (Carry,w1,w2);
	
	xnor (w3,X3,X4);
	xnor (w4,X1,X2);
	nand (Sum,w3,w4);
	assign Cout=1'b0;
	
endmodule
