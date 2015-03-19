`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:26 01/05/2015 
// Design Name: 
// Module Name:    register_8bits 
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
module register_8bits(
			input clk,
			input [7:0] D,
			input clr,
			output [7:0] Q
    );

	wire [7:0] Qbar;
	reg S;
	initial S <= 1'b1;
	
	D_latch
		R0(clk, D[0], clr, S, Q[0], Qbar[0]),
		R1(clk, D[1], clr, S, Q[1], Qbar[1]),
		R2(clk, D[2], clr, S, Q[2], Qbar[2]),
		R3(clk, D[3], clr, S, Q[3], Qbar[3]),
		R4(clk, D[4], clr, S, Q[4], Qbar[4]),
		R5(clk, D[5], clr, S, Q[5], Qbar[5]),
		R6(clk, D[6], clr, S, Q[6], Qbar[6]),
		R7(clk, D[7], clr, S, Q[7], Qbar[7]);

endmodule
