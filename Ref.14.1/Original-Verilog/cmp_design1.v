module cmp_design1(input X1,X2,X3,X4,Cin, 
					output Sum,Carry,Cout
					);
	wire w1,w2,w3,w4,w5;
	
	nor (w1,X3,X4);
	nor (w2,X1,X2);
	nor (Cout,w1,w2);
	xnor (w3,X3,X4);
	xnor (w4,X1,X2);
	or (w5,w3,w4);
	and (Sum,w5,~Cin);
	assign Carry = Cin;
	
endmodule
