`timescale 1ps/1ps

module COMP4to2 (X1, X2, X3, X4, Cin, Cout, Sum, Carry);
  
 input X1, X2, X3, X4, Cin; 
 output Cout, Sum, Carry; 
 
 
 assign Sum = X1 ^ X2 ^ X3 ^ X4 ^ Cin;
 assign Carry = ((X1 ^ X2 ^ X3 ^ X4) & Cin) | (~(X1 ^ X2 ^ X3 ^ X4) & X4) ;
 assign Cout = ((X1 ^ X2) & X3) | (~(X1 ^ X2) & X1);

endmodule  