

module CSA_Cell (X,Y,S_in,C_in,S_out,C_out);

input X, Y, S_in, C_in; 
output S_out, C_out; 

wire And_XY;


AND2 U0 (.A1(X),.A2(Y),.Z(And_XY));
FA U1 (.A(And_XY), .B(S_in), .CI(C_in), .CO(C_out), .S(S_out));

endmodule 

