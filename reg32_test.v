`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:46:01 01/05/2015
// Design Name:   register_32
// Module Name:   C:/Users/Young/Desktop/Verilog Project/Project12/reg32_test.v
// Project Name:  Project12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg32_test;

	// Inputs
	reg clk;
	reg [31:0] D;
	reg clr;
	reg load;

	// Outputs
	wire [31:0] Q;

	// Instantiate the Unit Under Test (UUT)
	register_32 uut (
		.clk(clk), 
		.D(D), 
		.clr(clr), 
		.load(load), 
		.Q(Q)
	);

	reg [10:0] i;

	initial begin
		// Initialize Inputs
		clk = 0;
		D = 0;
		clr = 0;
		load = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i = 0; i < 20; i = i+1)
		begin
			clk = clk + 1;
			#10;
			clr = 1;
			load = i[1] && i[0];
			D = D + 1;
			#15;
		end
		clr = 0;
	end
	
endmodule

