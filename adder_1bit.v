`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:39 12/09/2014 
// Design Name: 
// Module Name:    adder_1bit 
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
module adder_1bit(a,b,ci,sum,c0);
	input a, b, ci;
	output sum,c0;
	xor
		(s1,a,b),
		(sum,s1,ci);
	and
		(c1,a,b),
		(c2,ci,b),
		(c3,ci,a);
	or 
		(c0,c1,c2,c3);
endmodule
