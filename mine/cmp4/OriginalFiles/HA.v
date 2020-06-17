//Structural Model : Half Adder

module HA(
    input A,B,
    output Sum,Cout
    );
 xor(Sum,A,B);
 and(Cout,A,B);
 
endmodule