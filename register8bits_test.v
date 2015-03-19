`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:45:52 01/05/2015
// Design Name:   register_8bits
// Module Name:   C:/Users/Young/Desktop/Verilog Project/Project12/register8bits_test.v
// Project Name:  Project12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_8bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register8bits_test;

	// Inputs
	reg clk;
	reg [7:0] D;
	reg clr;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	register_8bits uut (
		.clk(clk), 
		.D(D), 
		.clr(clr), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		D = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		clk = 1;
		D = 8'b11111111;
		#100;
		
		clk = 0;
		clr = 0;
		#100;
		
		clk = 1;
		D = 8'b10101010;
		#100;
		
		clk = 0;
		#100;
		
		clk = 1;
	end
      
endmodule

