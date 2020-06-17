module cmp3(input X1,X2,X3,X4,Cin, 
					output Sum,Carry,Cout
					);
	wire w3,w4;
	
	xnor (w3,X3,X4);
	xnor (w4,X1,X2);
	nand (Sum,w3,w4);
	assign Carry = X4;
	assign Cout=1'b0;
	
endmodule
