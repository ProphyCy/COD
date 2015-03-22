`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:33:42 03/22/2015
// Design Name:   seven_seg_dev
// Module Name:   C:/Users/Young/Desktop/Verilog Project/COD-P1/tes_7seg.v
// Project Name:  COD-P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_seg_dev
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tes_7seg;

	// Inputs
	reg [3:0] blinking;
	reg [31:0] disp_num;
	reg flash_clk;
	reg [3:0] pointing;
	reg [1:0] Scanning;
	reg [1:0] SW;

	// Outputs
	wire [3:0] AN;
	wire [7:0] SEGMENT;

	// Instantiate the Unit Under Test (UUT)
	seven_seg_dev uut (
		.blinking(blinking), 
		.disp_num(disp_num), 
		.flash_clk(flash_clk), 
		.pointing(pointing), 
		.Scanning(Scanning), 
		.SW(SW), 
		.AN(AN), 
		.SEGMENT(SEGMENT)
	);

	initial begin
		// Initialize Inputs
		blinking = 0;
		disp_num = 0;
		flash_clk = 0;
		pointing = 0;
		Scanning = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		disp_num <= 32'h12345678;
		SW = 2'b01;
		Scanning = 2'b00;
		#50;
		disp_num <= 32'h12345678; SW = 2'b01;
		Scanning = 2'b01;
		#50;
		disp_num <= 32'h12345678; SW = 2'b01;
		Scanning = 2'b10;
		#50;
		disp_num <= 32'h12345678; SW = 2'b01;
		Scanning = 2'b11;

		#50;
		disp_num <= 32'h12345678;
		SW = 2'b11;
		Scanning = 2'b00;
		#50;
		disp_num <= 32'h12345678; SW = 2'b11;
		Scanning = 2'b01;
		#50;
		disp_num <= 32'h12345678; SW = 2'b11;
		Scanning = 2'b10;
		#50;
		disp_num <= 32'h12345678; SW = 2'b11;
		Scanning = 2'b11;

		#50;
		disp_num <= 32'h557EF7E0; SW = 2'b10;
		Scanning = 2'b00;
		#50;
		disp_num <= 32'h557EF7E0; SW = 2'b10;
		Scanning = 2'b01;
		#50;
		disp_num <= 32'h557EF7E0; SW = 2'b10;
		Scanning = 2'b10;
		#50;
		disp_num <= 32'h557EF7E0; SW = 2'b10;
		Scanning = 2'b11;
		#50;
		disp_num <= 32'h12345678; SW = 2'b01;
		Scanning = 2'b00;
	end
      
endmodule

