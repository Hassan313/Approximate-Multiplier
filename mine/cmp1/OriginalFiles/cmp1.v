module cmp1(input X1,X2,X3,X4,Cin, 
					output Sum,Carry,Cout
					);
	

	assign Carry=X4;
	
	assign Sum = X1;
	assign Cout=1'b0;
	
endmodule
