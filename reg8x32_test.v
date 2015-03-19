`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:17:55 01/05/2015
// Design Name:   register_file_8_32
// Module Name:   C:/Users/Young/Desktop/Verilog Project/Project12/reg8x32_test.v
// Project Name:  Project12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_file_8_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg8x32_test;

	// Inputs
	reg [2:0] Address;
	reg CE;
	reg clk;
	reg clr;
	reg [31:0] Di;

	// Outputs
	wire [31:0] Do;

	// Instantiate the Unit Under Test (UUT)
	register_file_8_32 uut (
		.Address(Address), 
		.CE(CE), 
		.clk(clk), 
		.clr(clr), 
		.Di(Di), 
		.Do(Do)
	);
reg [10:0] i;
	initial begin
		// Initialize Inputs
		Address = 0;
		CE = 0;
		clk = 0;
		clr = 0;
		Di = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
for (i = 0; i < 100; i = i + 1)
		begin
			clr = 1;
			clk = clk + 1;
			Address = Address + 1;
			CE = CE + 1;
			Di = Di + 1;
			#25;
		end
	end
      
endmodule

