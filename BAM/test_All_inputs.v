
 `timescale 1 ps / 1ps
	
 //Test Bench : 32 Bit CLA

 module Test_DADDA_8bit_All_Input; 
 //Parameters
 parameter in_size = 15;
 parameter [in_size:0] zero =0;
  // Inputs
 reg [7:0] A;
 reg [7:0] B;
 //reg app;
 reg clk = 0;
 

 reg [in_size:0] MUL_exact;
 reg [in_size:0] MUL_apprx;
 
 integer RepFile;
 
 real error = 0;
 integer error_distance = 0;
 integer error_distance_abs = 0;
 real sum_ED = 0;
 real sum_ED_abs = 0;
 real sum_RE = 0;
 real RE = 0;
 integer temp = 0;
 integer tot_temp = 0;
 real ER = 0;
 real MRED = 0; 
 real MED = 0 ;
 real NED = 0 ;
 real MAE = 0;
 real AE = 0;
 real max = 0;
 
 
 
 
 

 
 real i = 0,j = 0,k = 0;
 
 // Outputs
 wire [15:0] OCH;
 wire [2:0] co;
 reg [15:0] apprx,exact;
 
 // Instantiate the Unit Under Test (UUT)

 
 CSA_Mult_8bits uut2 (
  .A(A),  
  .B(B), 
  .P(OCH)
 );
 

 
 
	always begin
	#5
	clk=~clk;
	end



initial begin
   
	RepFile = $fopen("Test_BAM_8.rep", "w");

	// Initialize Inputs
     A = 0; B = 0; //app=0;
	
    // Wait 100 ns for global reset to finish
    #100;
	//for (i=0; i<2; i=i+1) begin
		//#10
		//A=0;
		//app =~ app;
		for (i = 0; i <= 255; i = i + 1) begin
			for (j = 0;j <= 255; j = j + 1)begin
				#10 A = i; B = j;
			
				#400 apprx = OCH; exact = A*B;   
				
				
					
				if (~(exact == apprx)) begin
				error = error + 1;			
				end 
				error_distance = exact - apprx;
				ER = error /65536;
			
				if(exact>apprx) begin
				error_distance_abs = exact - apprx;
				end else
				error_distance_abs = apprx - exact;
				
				if(error_distance_abs > max) begin
				max = error_distance_abs;
				end
				sum_ED = sum_ED + error_distance;
				sum_ED_abs = sum_ED_abs + error_distance_abs;
				MED = sum_ED_abs /65536;
				if(max!=0) begin
				NED = sum_ED/max;
				end
				///////////////////////////////////////
				if(~(exact == 0)) begin
					RE = error_distance_abs/exact;
					sum_RE = sum_RE + RE;
					MRED = sum_RE/65536;
				end
				 
		///////////////////////////////////////
				$fdisplay(RepFile,"A=%d B=%d exact=%d apprx=%d #error=%f MRED=%f MED=%f NED=%f ER=%f max = %d", A, B, exact, apprx, error, MRED, MED, NED, ER, max);
				
			end
		end
				
	

	$fclose(RepFile);
	$finish;
	end

endmodule