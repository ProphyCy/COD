`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:04:29 12/15/2014
// Design Name:   counter_4bit
// Module Name:   C:/Users/Young/Desktop/Verilog Project/Project9/M9_TEST.v
// Project Name:  Project9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module M9_TEST;

	// Inputs
	reg clk;

	// Outputs
	wire Qa;
	wire Qb;
	wire Qc;
	wire Qd;
	wire Rc;

	// Instantiate the Unit Under Test (UUT)
	counter_4bit uut (
		.clk(clk), 
		.Qa(Qa), 
		.Qb(Qb), 
		.Qc(Qc), 
		.Qd(Qd), 
		.Rc(Rc)
	);
	
	integer i = 0;

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i = 0; i < 32; i = i+1)
		begin
			clk = ~clk;
			#50;
		end
	end
      
endmodule

