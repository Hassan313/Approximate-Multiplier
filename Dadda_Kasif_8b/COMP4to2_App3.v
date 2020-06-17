 `timescale 1ps / 1ps

module COMP4to2_App3 (X1, X2, X3, X4, Sum, Carry);
  
 input X1, X2, X3, X4; 
 output Sum, Carry; 
 
 assign Sum = (X1 & X2) + (X3 & X4) + (((~X1) & (~X2)) & (X3 + X4) & ((~X1) & (~X4)) & (X1 + X2));
 assign Carry = (~(X1 & X2)) + (~(X3 & X4)) ;

endmodule  