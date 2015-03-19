`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:39 12/29/2014 
// Design Name: 
// Module Name:    D_flop_posedge 
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
module D_flop_posedge(
				input clk,
				input clr,
				input D,
				output Q
	 );

	AND3
		A0(.I0(D), .I1(clr), .I2(left), .O(oLeftButton));
	NAND
		NA0(.I0(oLeftButton), .I1(right_middle), .I2(right), .O(right_button)),
		NA1(.I0(D), .I1(), .I2(), .O()),
		NA2(.I0(D), .I1(), .I2(), .O()),
		NA3(.I0(D), .I1(), .I2(), .O()),
		NA4(.I0(D), .I1(), .I2(), .O());
endmodule
