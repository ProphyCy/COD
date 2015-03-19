// Verilog test fixture created from schematic C:\Users\Young\Desktop\Verilog Project\Project12\D_flop_posedge.sch - Mon Dec 29 22:11:55 2014

`timescale 1ns / 1ps

module D_flop_posedge_D_flop_posedge_sch_tb();

// Inputs
   reg R;
   reg D;
   reg S;
   reg clk;

// Output
   wire Q;
   wire NQ;

// Bidirs

// Instantiate the UUT
   D_flop_posedge UUT (
		.R(R), 
		.D(D), 
		.Q(Q), 
		.S(S), 
		.clk(clk), 
		.NQ(NQ)
   );
// Initialize Inputs
   //`ifdef auto_init
   initial begin
		R = 0;
		D = 0;
		S = 0;
		clk = 0;
		
		#10;
		S = 0;
		R = 0;
		D = 0;
		
		#10;
		S = 1;
		R = 0;
		D = 0;
		
		#10;
		S = 1;
		R = 1;
		D = 0;
		
		#10;
		S = 1;
		R = 0;
		D = 1;
		
		#10;
		S = 1;
		R = 1;
		D = 1;
		
		#10;
		S = 0;
		R = 1;
		D = 0;
		
		#10;
		S = 0;
		R = 1;
		D = 0;
		
		#10;
		S = 0;
		R = 0;
		D = 1;
		
		#10;
		S = 0;
		R = 1;
		D = 1;
		
		#10;
		//clk = 1;
		S = 0;
		R = 0;
		D = 0;
		
		#10;
		S = 1;
		R = 0;
		D = 0;
		
		#10;
		S = 1;
		R = 1;
		D = 0;
		
		#10;
		S = 1;
		R = 0;
		D = 1;
		
		#10;
		S = 1;
		R = 1;
		D = 1;
		
		#10;
		S = 0;
		R = 1;
		D = 0;
		
		#10;
		S = 0;
		R = 1;
		D = 0;
		
		#10;
		S = 0;
		R = 0;
		D = 1;
		
		#10;
		S = 0;
		R = 1;
		D = 1;
	end
   //`endif
endmodule
