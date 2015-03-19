`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:27 01/05/2015 
// Design Name: 
// Module Name:    register_32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module register_32(
			input clk,
			input [31:0] D,
			input clr,
			input load,
			output [31:0] Q
    );

	wire [31:0] Qbar;
	wire [31:0] Di;
	assign Di = (load == 1)? D : Q;
	
	register_8bits
		reg8_1(clk,Di[31:24], clr, Q[31:24]),
		reg8_2(clk,Di[23:16], clr, Q[23:16]),
		reg8_3(clk,Di[15:8], clr, Q[15:8]),
		reg8_4(clk,Di[7:0], clr, Q[7:0]);
		
endmodule
