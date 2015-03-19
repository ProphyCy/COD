`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:20 12/09/2014 
// Design Name: 
// Module Name:    adder_32bits 
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
module adder_32bits(a,b,ci,s,co);
	input [31:0] a, b;
	output [31:0] s;
	input ci;
	output co;
	wire [2:0] carry;
	adder_8bits 
			A8_1(a[7:0], b[7:0], ci, s[7:0], carry[0]),
			A8_2(a[15:8], b[15:8], carry[0], s[15:8], carry[1]),
			A8_3(a[23:16], b[23:16], carry[1], s[23:16], carry[2]),
			A8_4(a[31:24], b[31:24], carry[2], s[31:24], co);
endmodule
