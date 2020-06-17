module cmp_design2(input X1,X2,X3,X4,
					output Sum,Carry
					);
	wire w1,w2,w3,w4;
	nor (w1,X1,X2);
	nor (w2,X3,X4);
	nor (Carry,w1,w2);
	
	xnor (w3,X1,X2);
	xnor (w4,X3,X4);
	or (Sum,w3,w4);
	
endmodule

