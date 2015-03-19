`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:26 12/22/2014 
// Design Name: 
// Module Name:    shift_reg_8bit 
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
module shift_reg_8bit(clk, 
                      p_in, 
                      S, 
                      s_in, 
                      Q);

    input clk;
    input [7:0] p_in;
    input S;
    input s_in;
   output [7:0] Q;

	wire [7:0] D;
	wire NS;
	
	FD
		FD0(.C(clk), .D(D[0]), .Q(Q[0])),
		FD1(.C(clk), .D(D[1]), .Q(Q[1])),
		FD2(.C(clk), .D(D[2]), .Q(Q[2])),
		FD3(.C(clk), .D(D[3]), .Q(Q[3])),
		FD4(.C(clk), .D(D[4]), .Q(Q[4])),
		FD5(.C(clk), .D(D[5]), .Q(Q[5])),
		FD6(.C(clk), .D(D[6]), .Q(Q[6])),
		FD7(.C(clk), .D(D[7]), .Q(Q[7]));
	
	OR2
		OR_D0(.I0(L0), .I1(R0), .O(D[0])),
		OR_D1(.I0(L1), .I1(R1), .O(D[1])),
		OR_D2(.I0(L2), .I1(R2), .O(D[2])),
		OR_D3(.I0(L3), .I1(R3), .O(D[3])),
		OR_D4(.I0(L4), .I1(R4), .O(D[4])),
		OR_D5(.I0(L5), .I1(R5), .O(D[5])),
		OR_D6(.I0(L6), .I1(R6), .O(D[6])),
		OR_D7(.I0(L7), .I1(R7), .O(D[7]));
		
	AND2
		L_0(.I0(Q[1]), .I1(NS), .O(L0)),
		L_1(.I0(Q[2]), .I1(NS), .O(L1)),
		L_2(.I0(Q[3]), .I1(NS), .O(L2)),
		L_3(.I0(Q[4]), .I1(NS), .O(L3)),
		L_4(.I0(Q[5]), .I1(NS), .O(L4)),
		L_5(.I0(Q[6]), .I1(NS), .O(L5)),
		L_6(.I0(Q[7]), .I1(NS), .O(L6)),
		L_7(.I0(s_in), .I1(NS), .O(L7));
	
	AND2
		R_0(.I0(p_in[0]), .I1(S), .O(R0)),
		R_1(.I0(p_in[1]), .I1(S), .O(R1)),
		R_2(.I0(p_in[2]), .I1(S), .O(R2)),
		R_3(.I0(p_in[3]), .I1(S), .O(R3)),
		R_4(.I0(p_in[4]), .I1(S), .O(R4)),
		R_5(.I0(p_in[5]), .I1(S), .O(R5)),
		R_6(.I0(p_in[6]), .I1(S), .O(R6)),
		R_7(.I0(p_in[7]), .I1(S), .O(R7));
	
INV	NotS(.I(S), .O(NS));
endmodule
