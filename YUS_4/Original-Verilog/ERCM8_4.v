// 2017/8/9
// tongxin.yang@computer.org
`timescale 1ps/1ps

module	ERCM8_4(
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
wire	[12:0]	vec_1;
wire	[10:0]	vec_2;
wire	[6:0]	vec_3;

assign	vec_1[0]	=	a1_c[0]							;
assign	vec_1[1]	=	a1_c[1]							;
assign	vec_1[2]	=	a1_c[2] |	a2_c[0]					;
assign	vec_1[3]	=	a1_c[3] |	a2_c[1]					;
assign	vec_1[4]	=	a1_c[4] |	a2_c[2] |	a3_c[0]			;
assign	vec_1[5]	=	a1_c[5] |	a2_c[3] |	a3_c[1]			;
assign	vec_1[6]	=	a1_c[6] |	a2_c[4] |	a3_c[2] |	a4_c[0]	;
assign	vec_1[7]	=			a2_c[5] |	a3_c[3] |	a4_c[1]	;
assign	vec_1[8]	=			a2_c[6] |	a3_c[4] |	a4_c[2]	;
assign	vec_1[9]	=					a3_c[5] |	a4_c[3]	;
assign	vec_1[10]	=					a3_c[6] |	a4_c[4]	;
assign	vec_1[11]	=							a4_c[5]	;
assign	vec_1[12]	=							a4_c[6]	;

assign	vec_2[0]	=	a5_c[0]			;
assign	vec_2[1]	=	a5_c[1]			;
assign	vec_2[2]	=	a5_c[2]			;
assign	vec_2[3]	=	a5_c[3]			;
assign	vec_2[4]	=	a5_c[4] |	a6_c[0]	;
assign	vec_2[5]	=	a5_c[5] |	a6_c[1]	;
assign	vec_2[6]	=	a5_c[6] |	a6_c[2]	;
assign	vec_2[7]	=			a6_c[3]	;
assign	vec_2[8]	=			a6_c[4]	;
assign	vec_2[9]	=			a6_c[5]	;
assign	vec_2[10]	=			a6_c[6]	;

assign	vec_3[6:0]	= a7_c[6:0];

// (v1 | v2 + v3 : bypass_lower_4_bits)
wire	[6:0]	vec_12;
wire		csa2,	csa3,	csa4,	csa5,	csa6,	csa7,	csa8,	csa9,	csa10,	csa11,	csa12;
wire		csa1_s,	csa2_s,	csa3_s,	csa4_s,	csa5_s,	csa6_s,	csa7_s,	csa8_s,	csa9_s,	csa10_s,	csa11_s,	csa12_s,	csa13_s;
wire		csa1_c,	csa2_c,	csa3_c,	csa4_c,	csa5_c,	csa6_c,	csa7_c,	csa8_c,	csa9_c,	csa10_c,	csa11_c,	csa12_c,	csa13_c;

wire		cpa6,	cpa7,	cpa8,	cpa9,	cpa10,	cpa11,	cpa12,	cpa13,	cpa14;
wire		cpa5_c,	cpa6_c,	cpa7_c,	cpa8_c,	cpa9_c,	cpa10_c,	cpa11_c,	cpa12_c,	cpa13_c,	cpa14_c;


assign	vec_12[6:0]	= vec_1[9:3] | vec_2[8:2];

// CSA
assign	csa2		= s7_s[2]	^ vec_1[1];
assign	csa3		= s7_s[3]	^ vec_1[2];
assign	csa4		= s7_s[4]	^ vec_12[0];
assign	csa5		= s7_s[5]	^ vec_12[1];
assign	csa6		= s7_s[6]	^ vec_12[2];
assign	csa7		= s7_s[7]	^ vec_12[3];
assign	csa8		= s7_s[8]	^ vec_12[4];
assign	csa9		= s7_s[9]	^ vec_12[5];
assign	csa10		= s7_s[10]	^ vec_12[6];
assign	csa11		= s7_s[11]	^ vec_1[10];
assign	csa12		= s7_s[12]	^ vec_1[11];



assign	csa1_s		= s7_s[1]	^ vec_1[0];
assign	csa2_s		= csa2		^ vec_2[0];
assign	csa3_s		= csa3		^ vec_2[1];
assign	csa4_s		= csa4		^ vec_3[0];
assign	csa5_s		= csa5		^ vec_3[1];
assign	csa6_s		= csa6		^ vec_3[2];
assign	csa7_s		= csa7		^ vec_3[3];
assign	csa8_s		= csa8		^ vec_3[4];
assign	csa9_s		= csa9		^ vec_3[5];
assign	csa10_s		= csa10		^ vec_3[6];
assign	csa11_s		= csa11		^ vec_2[9];
assign	csa12_s		= csa12		^ vec_2[10];
assign	csa13_s		= s7_s[13]	^ vec_1[12];

assign	csa1_c		= s7_s[1]	& vec_1[0];
assign	csa2_c		= ~(~(s7_s[2]	& vec_1[1])	& ~(csa2	& vec_2[0])	);
assign	csa3_c		= ~(~(s7_s[3]	& vec_1[2])	& ~(csa3	& vec_2[1])	);
assign	csa4_c		= ~(~(s7_s[4]	& vec_12[0])	& ~(csa4	& vec_3[0])	);
assign	csa5_c		= ~(~(s7_s[5]	& vec_12[1])	& ~(csa5	& vec_3[1])	);
assign	csa6_c		= ~(~(s7_s[6]	& vec_12[2])	& ~(csa6	& vec_3[2])	);
assign	csa7_c		= ~(~(s7_s[7]	& vec_12[3])	& ~(csa7	& vec_3[3])	);
assign	csa8_c		= ~(~(s7_s[8]	& vec_12[4])	& ~(csa8	& vec_3[4])	);
assign	csa9_c		= ~(~(s7_s[9]	& vec_12[5])	& ~(csa9	& vec_3[5])	);
assign	csa10_c		= ~(~(s7_s[10]	& vec_12[6])	& ~(csa10	& vec_3[6])	);
assign	csa11_c		= ~(~(s7_s[11]	& vec_1[10])	& ~(csa11	& vec_2[9])	);
assign	csa12_c		= ~(~(s7_s[12]	& vec_1[11])	& ~(csa12	& vec_2[10])	);
assign	csa13_c		= s7_s[13]	& vec_1[12];


// CPA

assign	dat_o[0]	= s7_s[0];
assign	dat_o[1]	= csa1_s;
assign	dat_o[2]	= csa2_s	| csa1_c;
assign	dat_o[3]	= csa3_s	| csa2_c;
assign	dat_o[4]	= csa4_s	| csa3_c;


assign	cpa6		= (~(csa6_s	& csa5_c)	| 		1'b1)	& (csa6_s | csa5_c);
assign	cpa7		= (~(csa7_s	& csa6_c)	| 		1'b1)	& (csa7_s | csa6_c);
assign	cpa8		= (~(csa8_s	& csa7_c)	| 		1'b1)	& (csa8_s | csa7_c);
assign	cpa9		= (~(csa9_s	& csa8_c)	| 		1'b0)	& (csa9_s | csa8_c);
assign	cpa10		= (~(csa10_s	& csa9_c)	| 	1'b0)	& (csa10_s | csa9_c);
assign	cpa11		= (~(csa11_s	& csa10_c)	| 	1'b0)	& (csa11_s | csa10_c);

assign	cpa5_c		= csa5_s	& csa4_c	& 1'b0;
assign	cpa6_c		= ~((~(csa6_s	& csa5_c)	| 1'b1)	& ~(cpa6	& cpa5_c)	);
assign	cpa7_c		= ~((~(csa7_s	& csa6_c)	| 1'b1)	& ~(cpa7	& cpa6_c)	);
assign	cpa8_c		= ~((~(csa8_s	& csa7_c)	| 1'b1)	& ~(cpa8	& cpa7_c)	);
assign	cpa9_c		= ~((~(csa9_s	& csa8_c)	| 1'b0)	& ~(cpa9	& cpa8_c)	);
assign	cpa10_c		= ~((~(csa10_s	& csa9_c)	| 1'b0)	& ~(cpa10	& cpa9_c)	);
assign	cpa11_c		= ~((~(csa11_s	& csa10_c)	| 1'b0)	& ~(cpa11	& cpa10_c)	);

assign	dat_o[5]	= (~(csa5_s	& csa4_c)	| 1'b1)	& (csa5_s | csa4_c);
assign	dat_o[6]	= cpa6		^ cpa5_c;
assign	dat_o[7]	= cpa7		^ cpa6_c;
assign	dat_o[8]	= cpa8		^ cpa7_c;
assign	dat_o[9]	= cpa9		^ cpa8_c;
assign	dat_o[10]	= cpa10		^ cpa9_c;
assign	dat_o[11]	= cpa11		^ cpa10_c;



assign	cpa12		= csa12_s	^ csa11_c;
assign	cpa13		= csa13_s	^ csa12_c;
assign	cpa14		= s7_s[14]	^ csa13_c;

assign	cpa12_c		= ~(~(csa12_s	& csa11_c)	& ~(cpa12	& cpa11_c)	);
assign	cpa13_c		= ~(~(csa13_s	& csa12_c)	& ~(cpa13	& cpa12_c)	);
assign	cpa14_c		= ~(~(s7_s[14]	& csa13_c)	& ~(cpa14	& cpa13_c)	);

assign	dat_o[12]	= cpa12		^ cpa11_c;
assign	dat_o[13]	= cpa13		^ cpa12_c;
assign	dat_o[14]	= cpa14		^ cpa13_c;
assign	dat_o[15]	= cpa14_c;








endmodule
