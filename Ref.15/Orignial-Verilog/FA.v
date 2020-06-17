//Structural Model : Full Adder

module FA(
    input A,B,Cin,
    output Sum,Cout
    );
 wire s1,c1,c2;
 
 HA HA1(A,B,s1,c1);
 HA HA2(s1,Cin,Sum,c2);
 or or1(Cout,c1,c2);

endmodule