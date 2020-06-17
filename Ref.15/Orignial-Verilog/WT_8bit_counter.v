module WT_8bit_counter(a,b,c);
   
input [7:0]a;
input [7:0]b;
output [15:0]c;

wire [7:0]q0;	
wire [7:0]q1;	
wire [7:0]q2;
wire [7:0]q3;
wire [7:0]q4;	
wire [11:0]q5;
wire [11:0]q6;
wire [7:0] temp1;
wire [11:0]temp2;
wire [11:0]temp3;
wire [11:0]temp4;

// using 4 4x4 multipliers
WT_4bit_counter z1(a[3:0],b[3:0],q0[7:0]);
WT_4bit_counter z2(a[7:4],b[3:0],q1[7:0]);
WT_4bit_counter z3(a[3:0],b[7:4],q2[7:0]);
WT_4bit_counter z4(a[7:4],b[7:4],q3[7:0]);

// stage 1 adders 
//right
assign temp1 ={4'b0,q0[7:4]}; 
assign q4=q1[7:0]+temp1;
assign temp4={4'b0,q4[7:0]};
//left
assign temp2 ={4'b0,q2[7:0]}; 
assign temp3 ={q3[7:0],4'b0}; 
assign q5=temp2+temp3;
// stage 2 adder
//RCLA_12bit_L6 RCLA(.S(q6),.A(temp4),.B(q5));
assign q6 = temp4 + q5;
//assign q6=temp4+q5;
// fnal output assignment 
assign c[3:0]=q0[3:0];
assign c[15:4]=q6[11:0];

endmodule