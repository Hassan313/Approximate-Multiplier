

module Dadda_16b(A,B,P);

 input [15:0] A,B; 
 output [31:0] P; 

 wire [15:0] PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9, PP10, PP11, PP12, PP13, PP14, PP15 ; 
 
 
/////////////////////////// Modules  ////////////////////////////////

MULT_PPG16 X1 (.A(A), .B(B), .PP0(PP0), .PP1(PP1), .PP2(PP2), .PP3(PP3), .PP4(PP4), .PP5(PP5), .PP6(PP6), .PP7(PP7), .PP8(PP8), .PP9(PP9), .PP10(PP10), .PP11(PP11), .PP12(PP12), .PP13(PP13), .PP14(PP14), .PP15(PP15));
  
// LEVEL 1 //
HA U01 (.A(PP0[8]), .B(PP1[7]), .CO(co1), .S(s1));
COMP4to2 U02 (.X1(PP0[9]), .X2(PP1[8]), .X3(PP2[7]), .X4(1'd0), .Cin(co1), .Cout(co2), .S(s2), .Carry(cr2));
COMP4to2 U03 (.X1(PP0[10]), .X2(PP1[9]), .X3(PP2[8]), .X4(PP3[7]), .Cin(co2), .Cout(co3), .S(s3), .Carry(cr3));
HA U04 (.A(PP4[6]), .B(PP5[5]), .CO(co4), .S(s4));
COMP4to2 U05 (.X1(PP0[11]), .X2(PP1[10]), .X3(PP2[9]), .X4(PP3[8]), .Cin(co3), .Cout(co5), .S(s5), .Carry(cr5));  
COMP4to2 U06 (.X1(PP4[7]), .X2(PP5[6]), .X3(PP6[5]), .X4(PP7[4]), .Cin(co4), .Cout(co6), .S(s6), .Carry(cr6));
COMP4to2 U07 (.X1(PP0[12]), .X2(PP1[11]), .X3(PP2[10]), .X4(PP3[9]), .Cin(co5), .Cout(co7), .S(s7), .Carry(cr7));
COMP4to2 U08 (.X1(PP4[8]), .X2(PP5[7]), .X3(PP6[6]), .X4(PP7[5]), .Cin(co6), .Cout(co8), .S(s8), .Carry(cr8));
HA U09 (.A(PP8[4]), .B(PP9[3]), .CO(co9), .S(s9));
COMP4to2 U10 (.X1(PP0[13]), .X2(PP1[12]), .X3(PP2[11]), .X4(PP3[10]), .Cin(co7), .Cout(co10), .S(s10), .Carry(cr10));
COMP4to2 U11 (.X1(PP4[9]), .X2(PP5[8]), .X3(PP6[7]), .X4(PP7[6]), .Cin(co8), .Cout(co11), .S(s11), .Carry(cr11));
COMP4to2 U12 (.X1(PP8[5]), .X2(PP9[4]), .X3(PP10[3]), .X4(1'd0), .Cin(co9), .Cout(co12), .S(s12), .Carry(cr12));
COMP4to2 U13 (.X1(PP0[14]), .X2(PP1[13]), .X3(PP2[12]), .X4(PP3[11]), .Cin(co10), .Cout(co13), .S(s13), .Carry(cr13));
COMP4to2 U14 (.X1(PP4[10]), .X2(PP5[9]), .X3(PP6[8]), .X4(PP7[7]), .Cin(co11), .Cout(co14), .S(s14), .Carry(cr14));
COMP4to2 U15 (.X1(PP8[6]), .X2(PP9[5]), .X3(PP10[4]), .X4(PP11[3]), .Cin(co12), .Cout(co15), .S(s15), .Carry(cr15));
HA U16 (.A(PP12[2]), .B(PP13[1]), .CO(co16), .S(s16));
COMP4to2 U17 (.X1(PP0[15]), .X2(PP1[14]), .X3(PP2[13]), .X4(PP3[12]), .Cin(co13), .Cout(co17), .S(s17), .Carry(cr17));
COMP4to2 U18 (.X1(PP4[11]), .X2(PP5[10]), .X3(PP6[9]), .X4(PP7[8]), .Cin(co14), .Cout(co18), .S(s18), .Carry(cr18));
COMP4to2 U19 (.X1(PP8[7]), .X2(PP9[6]), .X3(PP10[5]), .X4(PP11[4]), .Cin(co15), .Cout(co19), .S(s19), .Carry(cr19));
COMP4to2 U20 (.X1(PP12[3]), .X2(PP13[2]), .X3(PP14[1]), .X4(PP15[0]), .Cin(co16), .Cout(co20), .S(s20), .Carry(cr20));
COMP4to2 U21 (.X1(PP1[15]), .X2(PP2[14]), .X3(PP3[13]), .X4(PP4[12]), .Cin(co17), .Cout(co21), .S(s21), .Carry(cr21));
COMP4to2 U22 (.X1(PP5[11]), .X2(PP6[10]), .X3(PP7[9]), .X4(PP8[8]), .Cin(co18), .Cout(co22), .S(s22), .Carry(cr22));
COMP4to2 U23 (.X1(PP9[7]), .X2(PP10[6]), .X3(PP11[5]), .X4(PP12[4]), .Cin(co19), .Cout(co23), .S(s23), .Carry(cr23));
COMP4to2 U24 (.X1(PP13[3]), .X2(PP14[2]), .X3(PP15[1]), .X4(1'd0), .Cin(co20), .Cout(co24), .S(s24), .Carry(cr24));
COMP4to2 U25 (.X1(PP2[15]), .X2(PP3[14]), .X3(PP4[13]), .X4(PP5[12]), .Cin(co21), .Cout(co25), .S(s25), .Carry(cr25));
COMP4to2 U26 (.X1(PP6[11]), .X2(PP7[10]), .X3(PP8[9]), .X4(PP9[8]), .Cin(co22), .Cout(co26), .S(s26), .Carry(cr26));
COMP4to2 U27 (.X1(PP10[7]), .X2(PP11[6]), .X3(PP12[5]), .X4(PP13[4]), .Cin(co23), .Cout(co27), .S(s27), .Carry(cr27));
FA U28 (.A(PP14[3]), .B(PP15[2]), .CI(co24), .CO(co28), .S(s28));
COMP4to2 U29 (.X1(PP3[15]), .X2(PP4[14]), .X3(PP5[13]), .X4(PP6[12]), .Cin(co25), .Cout(co29), .S(s29), .Carry(cr29));
COMP4to2 U30 (.X1(PP7[11]), .X2(PP8[10]), .X3(PP9[9]), .X4(PP10[8]), .Cin(co26), .Cout(co30), .S(s30), .Carry(cr30));
COMP4to2 U31 (.X1(PP11[7]), .X2(PP12[6]), .X3(PP13[5]), .X4(PP14[4]), .Cin(co27), .Cout(co31), .S(s31), .Carry(cr31));
COMP4to2 U32 (.X1(PP4[15]), .X2(PP5[14]), .X3(PP6[13]), .X4(PP7[12]), .Cin(co29), .Cout(co32), .S(s32), .Carry(cr32));
COMP4to2 U33 (.X1(PP8[11]), .X2(PP9[10]), .X3(PP10[9]), .X4(PP11[8]), .Cin(co30), .Cout(co33), .S(s33), .Carry(cr33));  
FA U34 (.A(PP12[7]), .B(PP13[6]), .CI(co31), .CO(co34), .S(s34));
COMP4to2 U35 (.X1(PP5[15]), .X2(PP6[14]), .X3(PP7[13]), .X4(PP8[12]), .Cin(co32), .Cout(co35), .S(s35), .Carry(cr35));
COMP4to2 U36 (.X1(PP9[11]), .X2(PP10[10]), .X3(PP11[9]), .X4(PP12[8]), .Cin(co33), .Cout(co36), .S(s36), .Carry(cr36));   
COMP4to2 U37 (.X1(PP6[15]), .X2(PP7[14]), .X3(PP8[13]), .X4(PP9[12]), .Cin(co35), .Cout(co37), .S(s37), .Carry(cr37));
FA U38 (.A(PP10[11]), .B(PP11[10]), .CI(co36), .CO(co38), .S(s38));
COMP4to2 U39 (.X1(PP7[15]), .X2(PP8[14]), .X3(PP9[13]), .X4(PP10[12]), .Cin(co37), .Cout(co39), .S(s39), .Carry(cr39));
FA U40 (.A(PP8[15]), .B(PP9[14]), .CI(co39), .CO(co40), .S(s40));
// LEVEL 2 //
HA U41 (.A(PP0[4]), .B(PP1[3]), .CO(co41), .S(s41));
COMP4to2 U42 (.X1(PP0[5]), .X2(PP1[4]), .X3(PP2[3]), .X4(1'd0), .Cin(co41), .Cout(co42), .S(s42), .Carry(cr42));
COMP4to2 U43 (.X1(PP0[6]), .X2(PP1[5]), .X3(PP2[4]), .X4(PP3[3]), .Cin(co42), .Cout(co43), .S(s43), .Carry(cr43));
HA U44 (.A(PP4[2]), .B(PP5[1]), .CO(co44), .S(s44));
COMP4to2 U45 (.X1(PP0[7]), .X2(PP1[6]), .X3(PP2[5]), .X4(PP3[4]), .Cin(co43), .Cout(co45), .S(s45), .Carry(cr45));
COMP4to2 U46 (.X1(PP4[3]), .X2(PP5[2]), .X3(PP6[1]), .X4(1'd0), .Cin(co44), .Cout(co46), .S(s46), .Carry(cr46));
COMP4to2 U47 (.X1(PP2[6]), .X2(PP3[5]), .X3(PP4[4]), .X4(PP5[3]), .Cin(co45), .Cout(co47), .S(s47), .Carry(cr47));
COMP4to2 U48 (.X1(PP6[2]), .X2(PP7[1]), .X3(PP8[0]), .X4(s1), .Cin(co46), .Cout(co48), .S(s48), .Carry(cr48));
COMP4to2 U49 (.X1(PP4[5]), .X2(PP5[4]), .X3(PP6[3]), .X4(PP7[2]), .Cin(co47), .Cout(co49), .S(s49), .Carry(cr49));
COMP4to2 U50 (.X1(PP8[1]), .X2(PP9[0]), .X3(s2), .X4(PP3[6]), .Cin(co48), .Cout(co50), .S(s50), .Carry(cr50));
COMP4to2 U51 (.X1(PP6[4]), .X2(PP7[3]), .X3(PP8[2]), .X4(PP9[1]), .Cin(co49), .Cout(co51), .S(s51), .Carry(cr51));
COMP4to2 U52 (.X1(PP10[0]), .X2(s3), .X3(s4), .X4(cr2), .Cin(co50), .Cout(co52), .S(s52), .Carry(cr52));
COMP4to2 U53 (.X1(PP8[3]), .X2(PP9[2]), .X3(PP10[1]), .X4(PP11[0]), .Cin(co51), .Cout(co53), .S(s53), .Carry(cr53));
COMP4to2 U54 (.X1(s5), .X2(s6), .X3(cr3), .X4(1'd0), .Cin(co52), .Cout(co54), .S(s54), .Carry(cr54));
COMP4to2 U55 (.X1(PP10[2]), .X2(PP11[1]), .X3(PP12[0]), .X4(s7), .Cin(co53), .Cout(co55), .S(s55), .Carry(cr55));
COMP4to2 U56 (.X1(s8), .X2(s9), .X3(cr5), .X4(cr6), .Cin(co54), .Cout(co56), .S(s56), .Carry(cr56));
COMP4to2 U57 (.X1(PP11[2]), .X2(PP12[1]), .X3(PP13[0]), .X4(s10), .Cin(co55), .Cout(co57), .S(s57), .Carry(cr57));
COMP4to2 U58 (.X1(s11), .X2(s12), .X3(cr7), .X4(cr8), .Cin(co56), .Cout(co58), .S(s58), .Carry(cr58));
COMP4to2 U59 (.X1(PP14[0]), .X2(s13), .X3(s14), .X4(s15), .Cin(co57), .Cout(co59), .S(s59), .Carry(cr59));
COMP4to2 U60 (.X1(s16), .X2(cr10), .X3(cr11), .X4(cr12), .Cin(co58), .Cout(co60), .S(s60), .Carry(cr60));
COMP4to2 U61 (.X1(s17), .X2(s18), .X3(s19), .X4(s20), .Cin(co59), .Cout(co61), .S(s61), .Carry(cr61));
COMP4to2 U62 (.X1(cr13), .X2(cr14), .X3(cr15), .X4(1'd0), .Cin(co60), .Cout(co62), .S(s62), .Carry(cr62));
COMP4to2 U63 (.X1(s21), .X2(s22), .X3(s23), .X4(s24), .Cin(co61), .Cout(co63), .S(s63), .Carry(cr63));
COMP4to2 U64 (.X1(cr17), .X2(cr18), .X3(cr19), .X4(cr20), .Cin(co62), .Cout(co64), .S(s64), .Carry(cr64));
COMP4to2 U65 (.X1(s25), .X2(s26), .X3(s27), .X4(s28), .Cin(co63), .Cout(co65), .S(s65), .Carry(cr65));
COMP4to2 U66 (.X1(cr21), .X2(cr22), .X3(cr23), .X4(cr24), .Cin(co64), .Cout(co66), .S(s66), .Carry(cr66));
COMP4to2 U67 (.X1(PP15[3]), .X2(s29), .X3(s30), .X4(s31), .Cin(co65), .Cout(co67), .S(s67), .Carry(cr67));
COMP4to2 U68 (.X1(cr25), .X2(cr26), .X3(cr27), .X4(co28), .Cin(co66), .Cout(co68), .S(s68), .Carry(cr68));
COMP4to2 U69 (.X1(PP14[5]), .X2(PP15[4]), .X3(s32), .X4(s33), .Cin(co67), .Cout(co69), .S(s69), .Carry(cr69));
COMP4to2 U70 (.X1(s34), .X2(cr29), .X3(cr30), .X4(cr31), .Cin(co68), .Cout(co70), .S(s70), .Carry(cr70));
COMP4to2 U71 (.X1(PP13[7]), .X2(PP14[6]), .X3(PP15[5]), .X4(s35), .Cin(co69), .Cout(co71), .S(s71), .Carry(cr71));
COMP4to2 U72 (.X1(s36), .X2(cr32), .X3(cr33), .X4(co34), .Cin(co70), .Cout(co72), .S(s72), .Carry(cr72));
COMP4to2 U73 (.X1(PP12[9]), .X2(PP13[8]), .X3(PP14[7]), .X4(PP15[6]), .Cin(co71), .Cout(co73), .S(s73), .Carry(cr73));
COMP4to2 U74 (.X1(s37), .X2(s38), .X3(cr35), .X4(cr36), .Cin(co72), .Cout(co74), .S(s74), .Carry(cr74));
COMP4to2 U75 (.X1(PP11[11]), .X2(PP12[10]), .X3(PP13[9]), .X4(PP14[8]), .Cin(co73), .Cout(co75), .S(s75), .Carry(cr75));
COMP4to2 U76 (.X1(PP15[7]), .X2(s39), .X3(cr37), .X4(co38), .Cin(co74), .Cout(co76), .S(s76), .Carry(cr76));
COMP4to2 U77 (.X1(PP10[13]), .X2(PP11[12]), .X3(PP12[11]), .X4(PP13[10]), .Cin(co75), .Cout(co77), .S(s77), .Carry(cr77));
COMP4to2 U78 (.X1(PP14[9]), .X2(PP15[8]), .X3(s40), .X4(cr39), .Cin(co76), .Cout(co78), .S(s78), .Carry(cr78));
COMP4to2 U79 (.X1(PP9[15]), .X2(PP10[14]), .X3(PP11[13]), .X4(PP12[12]), .Cin(co77), .Cout(co79), .S(s79), .Carry(cr79));
COMP4to2 U80 (.X1(PP13[11]), .X2(PP14[10]), .X3(PP15[9]), .X4(co40), .Cin(co78), .Cout(co80), .S(s80), .Carry(cr80));
COMP4to2 U81 (.X1(PP10[15]), .X2(PP11[14]), .X3(PP12[13]), .X4(PP13[12]), .Cin(co79), .Cout(co81), .S(s81), .Carry(cr81));
FA U82 (.A(PP14[11]), .B(PP15[10]), .CI(co80), .CO(co82), .S(s82));
COMP4to2 U83 (.X1(PP11[15]), .X2(PP12[14]), .X3(PP13[13]), .X4(PP14[12]), .Cin(co81), .Cout(co83), .S(s83), .Carry(cr83));
FA U84 (.A(PP12[15]), .B(PP13[14]), .CI(co83), .CO(co84), .S(s84));
// LEVEL 3 // 
HA U86 (.A(PP0[2]), .B(PP1[1]), .CO(co86), .S(s86));
COMP4to2 U87 (.X1(PP0[3]), .X2(PP1[2]), .X3(PP2[1]), .X4(1'd0), .Cin(co86), .Cout(co87), .S(s87), .Carry(cr87));
COMP4to2 U88 (.X1(PP2[2]), .X2(PP3[1]), .X3(PP4[0]), .X4(s41), .Cin(co87), .Cout(co88), .S(s88), .Carry(cr88));
COMP4to2 U89 (.X1(PP3[2]), .X2(PP4[1]), .X3(PP5[0]), .X4(s42), .Cin(co88), .Cout(co89), .S(s89), .Carry(cr89));
COMP4to2 U90 (.X1(PP6[0]), .X2(s43), .X3(s44), .X4(cr42), .Cin(co89), .Cout(co90), .S(s90), .Carry(cr90));
COMP4to2 U91 (.X1(PP7[0]), .X2(s45), .X3(s46), .X4(cr43), .Cin(co90), .Cout(co91), .S(s91), .Carry(cr91));
COMP4to2 U92 (.X1(s47), .X2(s48), .X3(cr45), .X4(cr46), .Cin(co91), .Cout(co92), .S(s92), .Carry(cr92));
COMP4to2 U93 (.X1(s49), .X2(s50), .X3(cr47), .X4(cr48), .Cin(co92), .Cout(co93), .S(s93), .Carry(cr93));
COMP4to2 U94 (.X1(s51), .X2(s52), .X3(cr49), .X4(cr50), .Cin(co93), .Cout(co94), .S(s94), .Carry(cr94));
COMP4to2 U95 (.X1(s53), .X2(s54), .X3(cr51), .X4(cr52), .Cin(co94), .Cout(co95), .S(s95), .Carry(cr95));
COMP4to2 U96 (.X1(s55), .X2(s56), .X3(cr53), .X4(cr54), .Cin(co95), .Cout(co96), .S(s96), .Carry(cr96));
COMP4to2 U97 (.X1(s57), .X2(s58), .X3(cr55), .X4(cr56), .Cin(co96), .Cout(co97), .S(s97), .Carry(cr97));
COMP4to2 U98 (.X1(s59), .X2(s60), .X3(cr57), .X4(cr58), .Cin(co97), .Cout(co98), .S(s98), .Carry(cr98));
COMP4to2 U99 (.X1(s61), .X2(s62), .X3(cr59), .X4(cr60), .Cin(co98), .Cout(co99), .S(s99), .Carry(cr99));
COMP4to2 U100 (.X1(s63), .X2(s64), .X3(cr61), .X4(cr62), .Cin(co99), .Cout(co100), .S(s100), .Carry(cr100));
COMP4to2 U101 (.X1(s65), .X2(s66), .X3(cr63), .X4(cr64), .Cin(co100), .Cout(co101), .S(s101), .Carry(cr101));
COMP4to2 U102 (.X1(s67), .X2(s68), .X3(cr65), .X4(cr66), .Cin(co101), .Cout(co102), .S(s102), .Carry(cr102));
COMP4to2 U103 (.X1(s69), .X2(s70), .X3(cr67), .X4(cr68), .Cin(co102), .Cout(co103), .S(s103), .Carry(cr103));
COMP4to2 U104 (.X1(s71), .X2(s72), .X3(cr69), .X4(cr70), .Cin(co103), .Cout(co104), .S(s104), .Carry(cr104));
COMP4to2 U105 (.X1(s73), .X2(s74), .X3(cr71), .X4(cr72), .Cin(co104), .Cout(co105), .S(s105), .Carry(cr105));
COMP4to2 U106 (.X1(s75), .X2(s76), .X3(cr73), .X4(cr74), .Cin(co105), .Cout(co106), .S(s106), .Carry(cr106));
COMP4to2 U107 (.X1(s77), .X2(s78), .X3(cr75), .X4(cr76), .Cin(co106), .Cout(co107), .S(s107), .Carry(cr107));
COMP4to2 U108 (.X1(s79), .X2(s80), .X3(cr77), .X4(cr78), .Cin(co107), .Cout(co108), .S(s108), .Carry(cr108));
COMP4to2 U109 (.X1(s81), .X2(s82), .X3(cr79), .X4(cr80), .Cin(co108), .Cout(co109), .S(s109), .Carry(cr109));
COMP4to2 U110 (.X1(PP15[11]), .X2(s83), .X3(cr81), .X4(co82), .Cin(co109), .Cout(co110), .S(s110), .Carry(cr110));
COMP4to2 U111 (.X1(PP14[13]), .X2(PP15[12]), .X3(s84), .X4(cr83), .Cin(co110), .Cout(co111), .S(s111), .Carry(cr111));
COMP4to2 U112 (.X1(PP13[15]), .X2(PP14[14]), .X3(PP15[13]), .X4(co84), .Cin(co111), .Cout(co112), .S(s112), .Carry(cr112));
FA U113 (.A(PP14[15]), .B(PP15[14]), .CI(co112), .CO(co113), .S(s113));

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////// LEVEL 4//////////////////////////////////////////// ///////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////  
assign P = {PP15[15],s113,s112,s111,s110,s109,s108,s107,s106,s105,s104,s103,s102,s101,s100,s99,s98,s97,s96,s95,s94,s93,s92,s91,s90,s89,s88,s87,s86,PP1[0],1'd0} + {co113,cr112,cr111,cr110,cr109,cr108,cr107,cr106,cr105,cr104,cr103,cr102,cr101,cr100,cr99,cr98,cr97,cr96,cr95,cr94,cr93,cr92,cr91,cr90,cr89,cr88,cr87,PP3[0],PP2[0],PP0[1],PP0[0]};





  

endmodule 