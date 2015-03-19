`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:38 01/05/2015 
// Design Name: 
// Module Name:    D_latch 
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
module D_latch(
			input clk,
			input Di,
			input Rb,
			input Sb,
			output Q,
			output Qbar
    );

	wire a, b, c, d;

	NAND3	and1(.I0(Rb), .I1(c), .I2(Q), .O(Qbar) ),
			and2(.I0(Qbar), .I1(d), .I2(Sb), .O(Q) );
	NAND3	and3(.I0(Rb), .I1(c), .I2(Di), .O(a) ),
			and4(.I0(clk), .I1(a), .I2(d), .O(c) );	
	NAND3	and5(.I0(a), .I1(d), .I2(Sb), .O(b) ),
			and6(.I0(clk), .I1(b), .I2(Rb), .O(d) );	
			
endmodule
