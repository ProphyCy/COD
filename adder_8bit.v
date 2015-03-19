`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:45 12/09/2014 
// Design Name: 
// Module Name:    adder_8bit 
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
module adder_8bits(a,b,ci,s,co);
	input ci;
	input [7:0] a, b;
	output [7:0] s;
	output co;
	wire [7:0] carry;
	adder_1bit 
			A1(a[0],b[0],ci,s[0],carry[0]),
			A2(a[1],b[1],carry[0],s[1],carry[1]),
			A3(a[2],b[2],carry[1],s[2],carry[2]),
			A4(a[3],b[3],carry[2],s[3],carry[3]),
			A5(a[4],b[4],carry[3],s[4],carry[4]),
			A6(a[5],b[5],carry[4],s[5],carry[5]),
			A7(a[6],b[6],carry[5],s[6],carry[6]),
			A8(a[7],b[7],carry[6],s[7],co);
endmodule
