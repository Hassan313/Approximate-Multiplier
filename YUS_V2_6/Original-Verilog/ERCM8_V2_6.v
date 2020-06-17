// 2017/8/9
// tongxin.yang@computer.org
 `timescale 1ps / 1ps
module	ERCM8_V2_6(
	dat_in_a,
	dat_in_b,
	mask,
	dat_o
);

input	[7:0]	dat_in_a;
input	[7:0]	dat_in_b;
input	[6:0]	mask;
output	[15:0]	dat_o;

wire	[7:0]	p0;
wire	[7:0]	p1;
wire	[7:0]	p2;
wire	[7:0]	p3;
wire	[7:0]	p4;
wire	[7:0]	p5;
wire	[7:0]	p6;
wire	[7:0]	p7;

wire	[6:0]	a1_s;
wire	[6:0]	a2_s;
wire	[6:0]	a3_s;
wire	[6:0]	a4_s;
wire	[6:0]	a5_s;
wire	[6:0]	a6_s;
wire	[6:0]	a7_s;

wire	[6:0]	a1_c;
wire	[6:0]	a2_c;
wire	[6:0]	a3_c;
wire	[6:0]	a4_c;
wire	[6:0]	a5_c;
wire	[6:0]	a6_c;
wire	[6:0]	a7_c;

wire	[8:0]	s1_s;
wire	[8:0]	s2_s;
wire	[8:0]	s3_s;
wire	[8:0]	s4_s;
wire	[10:0]	s5_s;
wire	[10:0]	s6_s;
wire	[14:0]	s7_s;


assign	p0[7:0]	= {8{dat_in_a[0]}} & dat_in_b[7:0];
assign	p1[7:0]	= {8{dat_in_a[1]}} & dat_in_b[7:0];
assign	p2[7:0]	= {8{dat_in_a[2]}} & dat_in_b[7:0];
assign	p3[7:0]	= {8{dat_in_a[3]}} & dat_in_b[7:0];
assign	p4[7:0]	= {8{dat_in_a[4]}} & dat_in_b[7:0];
assign	p5[7:0]	= {8{dat_in_a[5]}} & dat_in_b[7:0];
assign	p6[7:0]	= {8{dat_in_a[6]}} & dat_in_b[7:0];
assign	p7[7:0]	= {8{dat_in_a[7]}} & dat_in_b[7:0];

assign	a1_s[6:0]	= p0[7:1] | p1[6:0];
assign	a2_s[6:0]	= p2[7:1] | p3[6:0];
assign	a3_s[6:0]	= p4[7:1] | p5[6:0];
assign	a4_s[6:0]	= p6[7:1] | p7[6:0];
// opt
assign	a1_c[6:0]	= p0[7:1] & p1[6:0];
assign	a2_c[6:0]	= p2[7:1] & p3[6:0];

assign	a3_c[6:0]	= p4[7:1] & p5[6:0];
assign	a4_c[6:0]	= p6[7:1] & p7[6:0];

assign	s1_s	= {p1[7],	a1_s[6:0],	p0[0]};
assign	s2_s	= {p3[7],	a2_s[6:0],	p2[0]};
assign	s3_s	= {p5[7],	a3_s[6:0],	p4[0]};
assign	s4_s	= {p7[7],	a4_s[6:0],	p6[0]};

assign	a5_s[6:0]	= s1_s[8:2] | s2_s[6:0];
assign	a6_s[6:0]	= s3_s[8:2] | s4_s[6:0];

assign	a5_c[6:0]	= s1_s[8:2] & s2_s[6:0];
assign	a6_c[6:0]	= s3_s[8:2] & s4_s[6:0];

assign	s5_s[10:0]	= {s2_s[8:7], a5_s[6:0], s1_s[1:0]};
assign	s6_s[10:0]	= {s4_s[8:7], a6_s[6:0], s3_s[1:0]};

assign	a7_s[6:0]	= s5_s[10:4] | s6_s[6:0];
assign	a7_c[6:0]	= s5_s[10:4] & s6_s[6:0];

assign	s7_s[14:0]	= {s6_s[10:7], a7_s[6:0], s5_s[3:0]};

// vector gen
wire    [9:0] vec_f;

assign	vec_f[0] 	=	a1_c[3] |	a2_c[1]	|								a5_c[2] 			|	a7_c[0];
assign	vec_f[1] 	=	a1_c[4] |	a2_c[2]	|	a3_c[0] | 					a5_c[3] 			|	a7_c[1];
assign	vec_f[2] 	=	a1_c[5] |	a2_c[3]	|	a3_c[1] |					a5_c[4] |	a6_c[0]	|	a7_c[2];
assign	vec_f[3] 	=	a1_c[6] |	a2_c[4]	|	a3_c[2]	|	 a4_c[0]	|	a5_c[5] |	a6_c[1]	|	a7_c[3];
assign	vec_f[4] 	=				a2_c[5]	|	a3_c[3]	|	 a4_c[1]	|	a5_c[6] |	a6_c[2]	|	a7_c[4];
assign	vec_f[5] 	=				a2_c[6]	|	a3_c[4]	|	 a4_c[2]				|	a6_c[3]	|	a7_c[5];
assign	vec_f[6] 	=							a3_c[5]	|	 a4_c[3]				|	a6_c[4]	|	a7_c[6];
assign	vec_f[7] 	=							a3_c[6]	|	 a4_c[4]				|	a6_c[5]				;
assign	vec_f[8] 	=						 				 a4_c[5]				|	a6_c[6]				;	
assign	vec_f[9] 	=										 a4_c[6]										;	

// (v1 | v2 + v3 : bypass_lower_4_bits)
wire	[6:0]	vec_12;
wire		co4, cpa5, cpa6,	cpa7,	cpa8,	cpa9,	cpa10,	cpa11,	cpa12,	cpa13,	cpa14;
wire		cpa5_c,	cpa6_c,	cpa7_c,	cpa8_c,	cpa9_c, cpa10_c, cpa11_c, cpa12_c, cpa13_c, cpa14_c;

assign	dat_o[0]	= s7_s[0];
assign	dat_o[1]	= s7_s[1];
assign	dat_o[2]	= s7_s[2];
assign	dat_o[3]	= s7_s[3];
assign	dat_o[4]	= s7_s[4] ^ vec_f[0];
// CPA


assign	cpa5		= (~(s7_s[5] & vec_f[1])	| 1'b1)	& (s7_s[5]  | vec_f[1]);
assign	cpa6		= (~(s7_s[6] & vec_f[2])	| 1'b1)	& (s7_s[6]  | vec_f[2]);
assign	cpa7		= (~(s7_s[7] & vec_f[3])	| 1'b1)	& (s7_s[7]  | vec_f[3]);
assign	cpa8		= (~(s7_s[8] & vec_f[4])	| 1'b1)	& (s7_s[8]  | vec_f[4]);
assign	cpa9		= (~(s7_s[9] & vec_f[5])	| 1'b1)	& (s7_s[9]  | vec_f[5]);
assign	cpa10		= (~(s7_s[10] & vec_f[6])	| 1'b0)	& (s7_s[10] | vec_f[6]);

assign	co4			= s7_s[4]	&	vec_f[0]	& 1'b0;
assign	cpa5_c		= ~((~(s7_s[5] & vec_f[1])	| 1'b1)	& ~(cpa5	& co4)	);
assign	cpa6_c		= ~((~(s7_s[6] & vec_f[2])	| 1'b1)	& ~(cpa6	& cpa5_c)	);
assign	cpa7_c		= ~((~(s7_s[7] & vec_f[3])	| 1'b1)	& ~(cpa7	& cpa6_c)	);
assign	cpa8_c		= ~((~(s7_s[8] & vec_f[4])	| 1'b1)	& ~(cpa8	& cpa7_c)	);
assign	cpa9_c		= ~((~(s7_s[9] & vec_f[5])	| 1'b1)	& ~(cpa9	& cpa8_c)	);
assign	cpa10_c		= ~((~(s7_s[10] & vec_f[6])	| 1'b0)	& ~(cpa10	& cpa9_c)	);

//assign	cpa11		= (~(s7_s[10] | vec_f[6])	| ~mask[6])	& (s7_s[10] | vec_f[6]);
assign	dat_o[5]	= cpa5		^	co4;
assign	dat_o[6]	= cpa6		^	cpa5_c;
assign	dat_o[7]	= cpa7		^	cpa6_c;
assign	dat_o[8]	= cpa8		^	cpa7_c;
assign	dat_o[9]	= cpa9		^	cpa8_c;
assign	dat_o[10]	= cpa10		^	cpa9_c;

assign	cpa11		= s7_s[11]	^	vec_f[7];
assign	cpa12		= s7_s[12]	^	vec_f[8];
assign	cpa13		= s7_s[13]	^	vec_f[9];

assign	cpa11_c		= (s7_s[11]	&	vec_f[7]) | (cpa11 & cpa10_c);
assign	cpa12_c		= (s7_s[12]	&	vec_f[8]) | (cpa12 & cpa11_c);
assign	cpa13_c		= (s7_s[13]	&	vec_f[9]) | (cpa13 & cpa12_c);

assign	dat_o[11]	= cpa11		^	cpa10_c;
assign	dat_o[12]	= cpa12		^	cpa11_c;
assign	dat_o[13]	= cpa13		^	cpa12_c;
assign	dat_o[14]	= s7_s[14]	^ 	cpa13_c;

assign	dat_o[15]	= s7_s[14]	& 	cpa13_c;


//assign dat_o = s7_s + {1'd0,vec_f,4'd0};

endmodule
