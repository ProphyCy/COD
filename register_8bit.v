`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:05 12/29/2014 
// Design Name: 
// Module Name:    register_8bit 
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
module register_8bit(clk, D, clear, Q);

	input clk;
	input [7:0] D;
	input clear;
	output [7:0] Q;
	
	wire [7:0] NQ;
	reg s = 1;
	wire clr;
	assign clr = ~clear;
	
	BUFG
		buf1(bufclk, clk);
	D_flop_posedge
		D_latch_0(bufclk, D[0], clr, s, Q[0], NQ[0]),
		D_latch_1(bufclk, D[1], clr, s, Q[1], NQ[1]),
		D_latch_2(bufclk, D[2], clr, s, Q[2], NQ[2]),
		D_latch_3(bufclk, D[3], clr, s, Q[3], NQ[3]),
		D_latch_4(bufclk, D[4], clr, s, Q[4], NQ[4]),
		D_latch_5(bufclk, D[5], clr, s, Q[5], NQ[5]),
		D_latch_6(bufclk, D[6], clr, s, Q[6], NQ[6]),
		D_latch_7(bufclk, D[7], clr, s, Q[7], NQ[7]);

endmodule
