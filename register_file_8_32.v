////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_3340_19
// /___/   /\     Timestamp : 01/05/2015 21:16:45
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module register_file_8_32(Address, 
                          CE, 
                          clk, 
                          cr, 
                          Di, 
                          Do
								  );

    input [2:0] Address;
    input CE;
    input clk;
    input cr;
    input [31:0] Di;
   output [31:0] Do;
   
	wire [7:0] Y;
	wire [2:0] SEL;
	wire [31:0] Do0;
	wire [31:0] Do1;
	wire [31:0] Do2;
	wire [31:0] Do3;
	wire [31:0] Do4;
	wire [31:0] Do5;
	wire [31:0] Do6;
	wire [31:0] Do7;
	
	
	
	assign SEL = Address;
	
	register_32
		reg32_0 (clk, Di, cr, Y[0], Do0),
		reg32_1 (clk, Di, cr, Y[1], Do1),
		reg32_2 (clk, Di, cr, Y[2], Do2),
		reg32_3 (clk, Di, cr, Y[3], Do3),
		reg32_4 (clk, Di, cr, Y[4], Do4),
		reg32_5 (clk, Di, cr, Y[5], Do5),
		reg32_6 (clk, Di, cr, Y[6], Do6),
		reg32_7 (clk, Di, cr, Y[7], Do7);
	
	decoder_3_8 d38(Address[2], Address[1], Address[0], CE, 1'b0, 1'b0, Y);
	mux8to1_32 mux(Do0, Do1, Do2, Do3, Do4, Do5, Do6, Do7, SEL, Do);
endmodule
