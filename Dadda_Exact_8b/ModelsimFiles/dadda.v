/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Fri Jan 31 18:45:54 2020
/////////////////////////////////////////////////////////////


module AND2_63 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X1 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module HA_2 ( A, B, CO, S_BAR );
  input A, B;
  output CO, S_BAR;
  wire   S, n1, n2;
  assign S_BAR = S;

  OR2_X2 U1 ( .A1(A), .A2(B), .Z(n2) );
  INV_X1 U2 ( .I(n2), .ZN(n1) );
  OR2_X2 U3 ( .A1(n1), .A2(CO), .Z(S) );
  AND2_X2 U4 ( .A1(B), .A2(A), .Z(CO) );
endmodule


module COMP4to2_17 ( X1, X2, X3, X4, Cin, Cout, Carry, Sum_BAR );
  input X1, X2, X3, X4, Cin;
  output Cout, Carry, Sum_BAR;
  wire   Sum, N7, n2, n3, n4;
  assign Sum_BAR = Sum;
  assign Carry = N7;

  OR2_X2 U1 ( .A1(n4), .A2(Cin), .Z(n3) );
  INV_X1 U2 ( .I(n3), .ZN(n2) );
  OR2_X2 U3 ( .A1(n2), .A2(N7), .Z(Sum) );
  AND2_X2 U4 ( .A1(n4), .A2(Cin), .Z(N7) );
  FA_X1 U5 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n4) );
endmodule


module COMP4to2_16 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n1) );
endmodule


module FA_2 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(B), .B(A), .CI(CI), .CO(CO), .S(S) );
endmodule


module COMP4to2_0 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X3), .B(X2), .CI(X1), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_1 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X3), .B(X2), .CI(X1), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_2 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X3), .B(X2), .CI(X1), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_3 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_4 ( X1, X2, X4, Cin, Cout, Sum, Carry, X3_BAR );
  input X1, X2, X4, Cin, X3_BAR;
  output Cout, Sum, Carry;
  wire   X3, n1, n2;
  assign X3 = X3_BAR;

  INV_X2 U1 ( .I(X3), .ZN(n1) );
  FA_X1 U2 ( .A(X4), .B(Cin), .CI(n2), .CO(Carry), .S(Sum) );
  FA_X1 U3 ( .A(n1), .B(X2), .CI(X1), .CO(Cout), .S(n2) );
endmodule


module COMP4to2_5 ( X1, X2, X4, Cin, Cout, Sum, Carry, X3_BAR );
  input X1, X2, X4, Cin, X3_BAR;
  output Cout, Sum, Carry;
  wire   X3, n1, n2;
  assign X3 = X3_BAR;

  INV_X2 U1 ( .I(X3), .ZN(n1) );
  FA_X1 U2 ( .A(X4), .B(Cin), .CI(n2), .CO(Carry), .S(Sum) );
  FA_X1 U3 ( .A(n1), .B(X2), .CI(X1), .CO(Cout), .S(n2) );
endmodule


module COMP4to2_6 ( X1, X2, X4, Cin, Cout, Sum, Carry, X3_BAR );
  input X1, X2, X4, Cin, X3_BAR;
  output Cout, Sum, Carry;
  wire   X3, n1, n2;
  assign X3 = X3_BAR;

  INV_X2 U1 ( .I(X3), .ZN(n1) );
  FA_X1 U2 ( .A(X4), .B(Cin), .CI(n2), .CO(Carry), .S(Sum) );
  FA_X1 U3 ( .A(n1), .B(X2), .CI(X1), .CO(Cout), .S(n2) );
endmodule


module COMP4to2_7 ( X2, X3, X4, Cin, Cout, Sum, Carry, X1_BAR );
  input X2, X3, X4, Cin, X1_BAR;
  output Cout, Sum, Carry;
  wire   X1, n1, n2;
  assign X1 = X1_BAR;

  INV_X2 U1 ( .I(X1), .ZN(n1) );
  FA_X1 U2 ( .A(X4), .B(Cin), .CI(n2), .CO(Carry), .S(Sum) );
  FA_X1 U3 ( .A(n1), .B(X2), .CI(X3), .CO(Cout), .S(n2) );
endmodule


module COMP4to2_8 ( X2, X3, X4, Cin, Cout, Sum, Carry, X1_BAR );
  input X2, X3, X4, Cin, X1_BAR;
  output Cout, Sum, Carry;
  wire   X1, n1, n2;
  assign X1 = X1_BAR;

  INV_X2 U1 ( .I(X1), .ZN(n1) );
  FA_X1 U2 ( .A(X4), .B(Cin), .CI(n2), .CO(Carry), .S(Sum) );
  FA_X1 U3 ( .A(n1), .B(X2), .CI(X3), .CO(Cout), .S(n2) );
endmodule


module COMP4to2_9 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_10 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_11 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_13 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_15 ( X1, X2, X3, X4, Cin, Cout, Sum, Carry );
  input X1, X2, X3, X4, Cin;
  output Cout, Sum, Carry;
  wire   n1;

  FA_X1 U1 ( .A(X4), .B(Cin), .CI(n1), .CO(Carry), .S(Sum) );
  FA_X1 U2 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n1) );
endmodule


module COMP4to2_12 ( X1, X2, X3, X4, Cin, Cout, Carry, Sum_BAR );
  input X1, X2, X3, X4, Cin;
  output Cout, Carry, Sum_BAR;
  wire   Sum, N7, n2, n3, n4;
  assign Sum_BAR = Sum;
  assign Carry = N7;

  OR2_X2 U1 ( .A1(n4), .A2(Cin), .Z(n3) );
  INV_X1 U2 ( .I(n3), .ZN(n2) );
  OR2_X2 U3 ( .A1(n2), .A2(N7), .Z(Sum) );
  AND2_X2 U4 ( .A1(n4), .A2(Cin), .Z(N7) );
  FA_X1 U5 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n4) );
endmodule


module COMP4to2_14 ( X1, X2, X3, X4, Cin, Cout, Carry, Sum_BAR );
  input X1, X2, X3, X4, Cin;
  output Cout, Carry, Sum_BAR;
  wire   Sum, N7, n2, n3, n4;
  assign Sum_BAR = Sum;
  assign Carry = N7;

  OR2_X2 U1 ( .A1(n4), .A2(Cin), .Z(n3) );
  INV_X1 U2 ( .I(n3), .ZN(n2) );
  OR2_X2 U3 ( .A1(n2), .A2(N7), .Z(Sum) );
  AND2_X2 U4 ( .A1(n4), .A2(Cin), .Z(N7) );
  FA_X1 U5 ( .A(X1), .B(X2), .CI(X3), .CO(Cout), .S(n4) );
endmodule


module FA_0 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(B), .B(A), .CI(CI), .CO(CO), .S(S) );
endmodule


module FA_1 ( A, B, CI, CO, S );
  input A, B, CI;
  output CO, S;


  FA_X1 U1 ( .A(B), .B(A), .CI(CI), .CO(CO), .S(S) );
endmodule


module HA_0 ( A, B, CO, S_BAR );
  input A, B;
  output CO, S_BAR;
  wire   S, n1, n2;
  assign S_BAR = S;

  OR2_X2 U1 ( .A1(B), .A2(A), .Z(n2) );
  INV_X1 U2 ( .I(n2), .ZN(n1) );
  OR2_X2 U3 ( .A1(n1), .A2(CO), .Z(S) );
  AND2_X2 U4 ( .A1(B), .A2(A), .Z(CO) );
endmodule


module HA_1 ( A, B, CO, S_BAR );
  input A, B;
  output CO, S_BAR;
  wire   S, n1, n2;
  assign S_BAR = S;

  OR2_X2 U1 ( .A1(A), .A2(B), .Z(n2) );
  INV_X1 U2 ( .I(n2), .ZN(n1) );
  OR2_X2 U3 ( .A1(n1), .A2(CO), .Z(S) );
  AND2_X2 U4 ( .A1(B), .A2(A), .Z(CO) );
endmodule


module AND2_0 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_1 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_2 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_3 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_4 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_5 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_6 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_7 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_8 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_9 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_10 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_11 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_12 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_13 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_14 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_15 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_16 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_17 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_18 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_19 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_20 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_21 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_22 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_23 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_24 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_25 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_26 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_27 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_28 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_29 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_30 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_31 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_32 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_33 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_34 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_35 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_36 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_37 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_38 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_39 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_40 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_41 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_42 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_43 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_44 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_45 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_46 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_47 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_48 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_49 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_50 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_51 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_52 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_53 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_54 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_55 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_56 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_57 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_58 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_59 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_60 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_61 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module AND2_62 ( A1, A2, Z );
  input A1, A2;
  output Z;


  AND2_X2 U1 ( .A1(A2), .A2(A1), .Z(Z) );
endmodule


module dadda_8b ( A, B, P );
  input [7:0] A;
  input [7:0] B;
  output [15:0] P;
  wire   co1, s1, co2, s2, cr2, co3, s3, cr3, co4, s4, co5, s5, cr5, co6, s6,
         cr6, co7, s7, cr7, co8, s8, cr8, co9, s9, cr9, co10, s10, co11, s11,
         cr11, co12, s12, co13, s13, co14, s14, cr14, co15, s15, cr15, co16,
         s16, cr16, co17, s17, cr17, co18, s18, cr18, co19, s19, cr19, co20,
         s20, cr20, co21, s21, cr21, co22, s22, cr22, co23, s23, cr23, co24,
         s24, \intadd_0/CI , \intadd_0/n11 , \intadd_0/n10 , \intadd_0/n9 ,
         \intadd_0/n8 , \intadd_0/n7 , \intadd_0/n6 , \intadd_0/n5 ,
         \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , n2, n3,
         n4, n5, n6, n7, n8;
  wire   [7:0] pp0;
  wire   [7:0] pp1;
  wire   [7:0] pp2;
  wire   [7:0] pp3;
  wire   [7:0] pp4;
  wire   [7:0] pp5;
  wire   [7:0] pp6;
  wire   [7:0] pp7;
  assign P[15] = \intadd_0/n1 ;

  AND2_63 U0 ( .A1(A[0]), .A2(B[0]), .Z(P[0]) );
  AND2_62 U1 ( .A1(A[1]), .A2(B[0]), .Z(pp0[1]) );
  AND2_61 U2 ( .A1(A[2]), .A2(B[0]), .Z(pp0[2]) );
  AND2_60 U3 ( .A1(A[3]), .A2(B[0]), .Z(pp0[3]) );
  AND2_59 U4 ( .A1(A[4]), .A2(B[0]), .Z(pp0[4]) );
  AND2_58 U5 ( .A1(A[5]), .A2(B[0]), .Z(pp0[5]) );
  AND2_57 U6 ( .A1(A[6]), .A2(B[0]), .Z(pp0[6]) );
  AND2_56 u7 ( .A1(A[7]), .A2(B[0]), .Z(pp0[7]) );
  AND2_55 U7 ( .A1(A[0]), .A2(B[1]), .Z(pp1[0]) );
  AND2_54 U8 ( .A1(A[1]), .A2(B[1]), .Z(pp1[1]) );
  AND2_53 U9 ( .A1(A[2]), .A2(B[1]), .Z(pp1[2]) );
  AND2_52 U10 ( .A1(A[3]), .A2(B[1]), .Z(pp1[3]) );
  AND2_51 U11 ( .A1(A[4]), .A2(B[1]), .Z(pp1[4]) );
  AND2_50 U12 ( .A1(A[5]), .A2(B[1]), .Z(pp1[5]) );
  AND2_49 U13 ( .A1(A[6]), .A2(B[1]), .Z(pp1[6]) );
  AND2_48 u14 ( .A1(A[7]), .A2(B[1]), .Z(pp1[7]) );
  AND2_47 U14 ( .A1(A[0]), .A2(B[2]), .Z(pp2[0]) );
  AND2_46 U15 ( .A1(A[1]), .A2(B[2]), .Z(pp2[1]) );
  AND2_45 U16 ( .A1(A[2]), .A2(B[2]), .Z(pp2[2]) );
  AND2_44 U17 ( .A1(A[3]), .A2(B[2]), .Z(pp2[3]) );
  AND2_43 U18 ( .A1(A[4]), .A2(B[2]), .Z(pp2[4]) );
  AND2_42 U19 ( .A1(A[5]), .A2(B[2]), .Z(pp2[5]) );
  AND2_41 U20 ( .A1(A[6]), .A2(B[2]), .Z(pp2[6]) );
  AND2_40 u21 ( .A1(A[7]), .A2(B[2]), .Z(pp2[7]) );
  AND2_39 U21 ( .A1(A[0]), .A2(B[3]), .Z(pp3[0]) );
  AND2_38 U22 ( .A1(A[1]), .A2(B[3]), .Z(pp3[1]) );
  AND2_37 U23 ( .A1(A[2]), .A2(B[3]), .Z(pp3[2]) );
  AND2_36 U24 ( .A1(A[3]), .A2(B[3]), .Z(pp3[3]) );
  AND2_35 U25 ( .A1(A[4]), .A2(B[3]), .Z(pp3[4]) );
  AND2_34 U26 ( .A1(A[5]), .A2(B[3]), .Z(pp3[5]) );
  AND2_33 U27 ( .A1(A[6]), .A2(B[3]), .Z(pp3[6]) );
  AND2_32 u28 ( .A1(A[7]), .A2(B[3]), .Z(pp3[7]) );
  AND2_31 U28 ( .A1(A[0]), .A2(B[4]), .Z(pp4[0]) );
  AND2_30 U29 ( .A1(A[1]), .A2(B[4]), .Z(pp4[1]) );
  AND2_29 U30 ( .A1(A[2]), .A2(B[4]), .Z(pp4[2]) );
  AND2_28 U31 ( .A1(A[3]), .A2(B[4]), .Z(pp4[3]) );
  AND2_27 U32 ( .A1(A[4]), .A2(B[4]), .Z(pp4[4]) );
  AND2_26 U33 ( .A1(A[5]), .A2(B[4]), .Z(pp4[5]) );
  AND2_25 U34 ( .A1(A[6]), .A2(B[4]), .Z(pp4[6]) );
  AND2_24 u35 ( .A1(A[7]), .A2(B[4]), .Z(pp4[7]) );
  AND2_23 U35 ( .A1(A[0]), .A2(B[5]), .Z(pp5[0]) );
  AND2_22 U36 ( .A1(A[1]), .A2(B[5]), .Z(pp5[1]) );
  AND2_21 U37 ( .A1(A[2]), .A2(B[5]), .Z(pp5[2]) );
  AND2_20 U38 ( .A1(A[3]), .A2(B[5]), .Z(pp5[3]) );
  AND2_19 U39 ( .A1(A[4]), .A2(B[5]), .Z(pp5[4]) );
  AND2_18 U40 ( .A1(A[5]), .A2(B[5]), .Z(pp5[5]) );
  AND2_17 U41 ( .A1(A[6]), .A2(B[5]), .Z(pp5[6]) );
  AND2_16 u41 ( .A1(A[7]), .A2(B[5]), .Z(pp5[7]) );
  AND2_15 U42 ( .A1(A[0]), .A2(B[6]), .Z(pp6[0]) );
  AND2_14 U43 ( .A1(A[1]), .A2(B[6]), .Z(pp6[1]) );
  AND2_13 U44 ( .A1(A[2]), .A2(B[6]), .Z(pp6[2]) );
  AND2_12 U45 ( .A1(A[3]), .A2(B[6]), .Z(pp6[3]) );
  AND2_11 U46 ( .A1(A[4]), .A2(B[6]), .Z(pp6[4]) );
  AND2_10 U47 ( .A1(A[5]), .A2(B[6]), .Z(pp6[5]) );
  AND2_9 U48 ( .A1(A[6]), .A2(B[6]), .Z(pp6[6]) );
  AND2_8 u48 ( .A1(A[7]), .A2(B[6]), .Z(pp6[7]) );
  AND2_7 u49 ( .A1(A[0]), .A2(B[7]), .Z(pp7[0]) );
  AND2_6 u50 ( .A1(A[1]), .A2(B[7]), .Z(pp7[1]) );
  AND2_5 u51 ( .A1(A[2]), .A2(B[7]), .Z(pp7[2]) );
  AND2_4 u52 ( .A1(A[3]), .A2(B[7]), .Z(pp7[3]) );
  AND2_3 u53 ( .A1(A[4]), .A2(B[7]), .Z(pp7[4]) );
  AND2_2 u54 ( .A1(A[5]), .A2(B[7]), .Z(pp7[5]) );
  AND2_1 u55 ( .A1(A[6]), .A2(B[7]), .Z(pp7[6]) );
  AND2_0 u56 ( .A1(A[7]), .A2(B[7]), .Z(pp7[7]) );
  HA_2 U49 ( .A(pp0[4]), .B(pp1[3]), .CO(co1), .S_BAR(s1) );
  COMP4to2_17 U50 ( .X1(pp0[5]), .X2(pp1[4]), .X3(pp2[3]), .X4(1'b0), .Cin(co1), .Cout(co2), .Carry(cr2), .Sum_BAR(s2) );
  COMP4to2_16 U51 ( .X1(pp0[6]), .X2(pp1[5]), .X3(pp2[4]), .X4(pp3[3]), .Cin(
        co2), .Cout(co3), .Sum(s3), .Carry(cr3) );
  HA_1 U52 ( .A(pp4[2]), .B(pp5[1]), .CO(co4), .S_BAR(s4) );
  COMP4to2_15 U53 ( .X1(pp0[7]), .X2(pp1[6]), .X3(pp2[5]), .X4(pp3[4]), .Cin(
        co3), .Cout(co5), .Sum(s5), .Carry(cr5) );
  COMP4to2_14 U54 ( .X1(pp4[3]), .X2(pp5[2]), .X3(pp6[1]), .X4(1'b0), .Cin(co4), .Cout(co6), .Carry(cr6), .Sum_BAR(s6) );
  COMP4to2_13 U55 ( .X1(pp1[7]), .X2(pp2[6]), .X3(pp3[5]), .X4(pp4[4]), .Cin(
        co5), .Cout(co7), .Sum(s7), .Carry(cr7) );
  COMP4to2_12 U56 ( .X1(pp5[3]), .X2(pp6[2]), .X3(pp7[1]), .X4(1'b0), .Cin(co6), .Cout(co8), .Carry(cr8), .Sum_BAR(s8) );
  COMP4to2_11 U57 ( .X1(pp2[7]), .X2(pp3[6]), .X3(pp4[5]), .X4(pp5[4]), .Cin(
        co7), .Cout(co9), .Sum(s9), .Carry(cr9) );
  FA_2 U58 ( .A(pp6[3]), .B(pp7[2]), .CI(co8), .CO(co10), .S(s10) );
  COMP4to2_10 U59 ( .X1(pp3[7]), .X2(pp4[6]), .X3(pp5[5]), .X4(pp6[4]), .Cin(
        co9), .Cout(co11), .Sum(s11), .Carry(cr11) );
  FA_1 U60 ( .A(pp4[7]), .B(pp5[6]), .CI(co11), .CO(co12), .S(s12) );
  HA_0 U61 ( .A(pp0[2]), .B(pp1[1]), .CO(co13), .S_BAR(s13) );
  COMP4to2_9 U62 ( .X1(pp0[3]), .X2(pp1[2]), .X3(pp2[1]), .X4(pp3[0]), .Cin(
        co13), .Cout(co14), .Sum(s14), .Carry(cr14) );
  COMP4to2_8 U63 ( .X2(pp2[2]), .X3(pp3[1]), .X4(pp4[0]), .Cin(co14), .Cout(
        co15), .Sum(s15), .Carry(cr15), .X1_BAR(s1) );
  COMP4to2_7 U64 ( .X2(pp3[2]), .X3(pp4[1]), .X4(pp5[0]), .Cin(co15), .Cout(
        co16), .Sum(s16), .Carry(cr16), .X1_BAR(s2) );
  COMP4to2_6 U65 ( .X1(s3), .X2(cr2), .X4(pp6[0]), .Cin(co16), .Cout(co17), 
        .Sum(s17), .Carry(cr17), .X3_BAR(s4) );
  COMP4to2_5 U66 ( .X1(s5), .X2(cr3), .X4(pp7[0]), .Cin(co17), .Cout(co18), 
        .Sum(s18), .Carry(cr18), .X3_BAR(s6) );
  COMP4to2_4 U67 ( .X1(s7), .X2(cr5), .X4(cr6), .Cin(co18), .Cout(co19), .Sum(
        s19), .Carry(cr19), .X3_BAR(s8) );
  COMP4to2_3 U68 ( .X1(s9), .X2(cr7), .X3(s10), .X4(cr8), .Cin(co19), .Cout(
        co20), .Sum(s20), .Carry(cr20) );
  COMP4to2_2 U69 ( .X1(s11), .X2(cr9), .X3(co10), .X4(pp7[3]), .Cin(co20), 
        .Cout(co21), .Sum(s21), .Carry(cr21) );
  COMP4to2_1 U70 ( .X1(s12), .X2(cr11), .X3(pp6[5]), .X4(pp7[4]), .Cin(co21), 
        .Cout(co22), .Sum(s22), .Carry(cr22) );
  COMP4to2_0 U71 ( .X1(co12), .X2(pp5[7]), .X3(pp6[6]), .X4(pp7[5]), .Cin(co22), .Cout(co23), .Sum(s23), .Carry(cr23) );
  FA_0 U72 ( .A(pp6[7]), .B(pp7[6]), .CI(co23), .CO(co24), .S(s24) );
  FA_X1 \intadd_0/U12  ( .A(\intadd_0/CI ), .B(cr14), .CI(s15), .CO(
        \intadd_0/n11 ), .S(P[4]) );
  FA_X1 \intadd_0/U11  ( .A(cr15), .B(\intadd_0/n11 ), .CI(s16), .CO(
        \intadd_0/n10 ), .S(P[5]) );
  FA_X1 \intadd_0/U10  ( .A(\intadd_0/n10 ), .B(cr16), .CI(s17), .CO(
        \intadd_0/n9 ), .S(P[6]) );
  FA_X1 \intadd_0/U9  ( .A(cr17), .B(\intadd_0/n9 ), .CI(s18), .CO(
        \intadd_0/n8 ), .S(P[7]) );
  FA_X1 \intadd_0/U8  ( .A(\intadd_0/n8 ), .B(cr18), .CI(s19), .CO(
        \intadd_0/n7 ), .S(P[8]) );
  FA_X1 \intadd_0/U7  ( .A(cr19), .B(\intadd_0/n7 ), .CI(s20), .CO(
        \intadd_0/n6 ), .S(P[9]) );
  FA_X1 \intadd_0/U6  ( .A(cr20), .B(\intadd_0/n6 ), .CI(s21), .CO(
        \intadd_0/n5 ), .S(P[10]) );
  FA_X1 \intadd_0/U5  ( .A(\intadd_0/n5 ), .B(cr21), .CI(s22), .CO(
        \intadd_0/n4 ), .S(P[11]) );
  FA_X1 \intadd_0/U4  ( .A(cr22), .B(\intadd_0/n4 ), .CI(s23), .CO(
        \intadd_0/n3 ), .S(P[12]) );
  FA_X1 \intadd_0/U3  ( .A(cr23), .B(\intadd_0/n3 ), .CI(s24), .CO(
        \intadd_0/n2 ), .S(P[13]) );
  FA_X1 \intadd_0/U2  ( .A(pp7[7]), .B(co24), .CI(\intadd_0/n2 ), .CO(
        \intadd_0/n1 ), .S(P[14]) );
  OR2_X2 U76 ( .A1(pp1[0]), .A2(pp0[1]), .Z(n4) );
  INV_X1 U77 ( .I(n4), .ZN(n2) );
  INV_X2 U78 ( .I(s13), .ZN(n3) );
  OR2_X2 U79 ( .A1(s14), .A2(n6), .Z(n7) );
  INV_X1 U80 ( .I(n7), .ZN(n5) );
  AND2_X2 U81 ( .A1(pp1[0]), .A2(pp0[1]), .Z(n8) );
  AND2_X2 U82 ( .A1(n6), .A2(s14), .Z(\intadd_0/CI ) );
  NOR2_X1 U83 ( .A1(n2), .A2(n8), .ZN(P[1]) );
  NOR2_X1 U84 ( .A1(n5), .A2(\intadd_0/CI ), .ZN(P[3]) );
  FA_X1 U85 ( .A(n3), .B(pp2[0]), .CI(n8), .CO(n6), .S(P[2]) );
endmodule

