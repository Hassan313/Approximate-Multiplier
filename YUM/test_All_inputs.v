
 `timescale 1ps / 1ps
	
 //Test Bench : 32 Bit CLA

 module Test_DADDA_8bit_All_Input; 
 //Parameters
 parameter in_size = 15;
 parameter [in_size:0] zero =0;
  // Inputs
 reg [7:0] A;
 reg [7:0] B;
 reg [6:0] M;
 //reg app;
 reg clk = 0;
 

 reg [in_size:0] MUL_exact;
 reg [in_size:0] MUL_apprx;
 
 integer RepFile;
 
 real error = 0;
 real error_distance = 0;
 real error_distance_abs = 0;
 real sum_ED = 0;
 real sum_ED_abs = 0;
 real RE = 0;
 real sum_RE = 0;
 real NE = 0;
 real sum_NE = 0;
 integer temp = 0;
 integer tot_temp = 0;
 real ER = 0;
 real MRED = 0; 
 real MED = 0 ;
 real MNED = 0 ;
 real MAE = 0;
 real AE = 0;
 real max = 0;
 
 real totalSamples = 10000;

 
 real i = 0,j = 0,k = 0;
 
 // Outputs
 wire [15:0] O, OAc;
 reg [15:0] apprx,exact;
 
 // Instantiate the Unit Under Test (UUT)
ERCM8 uut1 (
  .dat_in_a(A),  
  .dat_in_b(B), 
  .mask(M),
  .dat_o(O)
 );
 
/*  Dadda_Module1 uut2 (
  .A(A),  
  .B(B), 
  .P(OAc)
 ); */
 
	always begin
	#5
	clk=~clk;
	end

 initial begin 
$sdf_annotate ("SynERCM8.sdf", uut1,,,"TYPICAL");
end 

initial begin
   
	RepFile = $fopen("Test_Dadda_8.rep", "w");
	$vcdpluson;
	//$dumpvars;
	// Initialize Inputs
     A = 0; B = 0; //app=0;
	M = 7'b 1111111;
    // Wait 100 ns for global reset to finish
    #420;
	//for (i=0; i<2; i=i+1) begin
		//#10
		//A=0;
		//app =~ app;
		for (j = 0;j < totalSamples; j = j + 1) begin
        
				#10 A = $random; B = $random;
				#420 apprx = O ; exact = A*B;
					
				if (~(exact == apprx)) begin
				error = error + 1;
				error_distance = exact - apprx;
				end 
				ER = error /totalSamples;
			
				if(exact>apprx) begin
				error_distance_abs = exact - apprx;
				end else
				error_distance_abs = apprx - exact;
				
				if(error_distance_abs > max) begin
				max = error_distance_abs;
				end
                
                sum_ED = sum_ED + error_distance;
				sum_ED_abs = sum_ED_abs + error_distance_abs;
				MED = sum_ED_abs / totalSamples;	
 
                MNED = sum_ED_abs/(65025 *totalSamples);                
				///////////////////////////////////////
				if(~(exact == 0)) begin
					RE = error_distance_abs/exact;
                    sum_RE = sum_RE + RE;
					MRED = sum_RE/totalSamples;
				end

				 
				$fdisplay(RepFile,"A=%d B=%d exact=%d apprx=%d #error=%f MED=%f MRED=%0.8f MNED=%f ER=%f max = %d", A, B, exact, apprx, error, MED, MRED, MNED, ER, max);
				
			end
	
				
	$fclose(RepFile);
	$finish;
	end

endmodule
