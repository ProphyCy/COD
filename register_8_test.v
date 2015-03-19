`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:41:56 12/29/2014
// Design Name:   register_8bit
// Module Name:   C:/Users/Young/Desktop/Verilog Project/Project12/register_8_test.v
// Project Name:  Project12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_8_test;

	// Inputs
	reg clk;
	reg [7:0] D;
	reg clear;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	register_8bit uut (
		.clk(clk), 
		.D(D), 
		.clear(clear), 
		.Q(Q)
	);
	initial begin
		// Initialize Inputs
		clk = 1;
		D = 0;
		clear = 0;

		// Wait 100 ns for global reset to finish
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
		#100
		D = D + 1;
	end
      
endmodule

