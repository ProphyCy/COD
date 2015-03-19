////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_3356_30
// /___/   /\     Timestamp : 12/11/2014 20:35:02
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module ALU_LCDF(Ai, 
                ALU_Ctr, 
                Bi, 
                C, 
                ALU_out, 
                Cout);

    input [31:0] Ai;
    input [2:0] ALU_Ctr;
    input [31:0] Bi;
    input C;
   output reg [31:0] ALU_out;
   output Cout;
   
	wire [31:0] AddOrSub;
	wire [31:0] CXorBi;
	assign CXorBi = {C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C,C} ^ Bi;
	adder_32bits A32(Ai, CXorBi, 0, AddOrSub, Cout);
	
	
	always @(*)
	begin
		case (ALU_Ctr)
			0:
			begin
				ALU_out <= AddOrSub;
			end
			1:
			begin
				ALU_out <= Ai & Bi;
			end
			2:
			begin
				ALU_out <= Ai | Bi;
			end
			3:
			begin
				ALU_out <= (Ai < Bi) ? 1 : 0;
			end
		endcase
	end
   
endmodule
