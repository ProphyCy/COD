`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:46:18 01/06/2015
// Design Name:   D_latch
// Module Name:   C:/Users/Young/Desktop/Verilog Project/Project12/dlatch_test.v
// Project Name:  Project12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_latch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dlatch_test;

	// Inputs
	reg clk;
	reg Di;
	reg Rb;
	reg Sb;

	// Outputs
	wire Q;
	wire Qbar;

	// Instantiate the Unit Under Test (UUT)
	D_latch uut (
		.clk(clk), 
		.Di(Di), 
		.Rb(Rb), 
		.Sb(Sb), 
		.Q(Q), 
		.Qbar(Qbar)
	);

	reg [10:0] i;

	initial begin
		// Initialize Inputs
		clk = 0;
		Di = 0;
		Rb = 0;
		Sb = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i = 0; i < 20; i = i + 1)
		begin
			clk = clk + 1;
			#10;
			Di = Di + 1;
			Rb = Rb + 1;
			Sb = Sb + 1;
			#15;
		end
	end
      
endmodule

