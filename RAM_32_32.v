////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_3340_20
// /___/   /\     Timestamp : 01/05/2015 21:17:01
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module RAM_32_32(addra, 
                 clka, 
                 dina, 
                 wea, 
                 douta);

    input [4:0] addra;
    input clka;
    input [31:0] dina;
    input wea;
   output [31:0] douta;
   
   wire [7:0] Yi, Y;
	wire [31:0] Do0, Do1, Do2, Do3, Do4, Do5, Do6, Do7;
	assign Y = ~Yi;
	
	decoder_3_8 d(1'b0, addra[4], addra[3], 1'b1, 1'b0, 1'b0, Yi);
	
	mux8to1_32(Do0, Do1, Do2, Do3, Do4, Do5, Do6, Do7, {1'b0, addra[4:3]}, douta);
	
	RAM_8_16	
	M00(
		.clka(clka),
		.ena(Y[0]),
		.wea(wea),
		.addra(addra[2:0]),
		.dina(dina[31:16]),
		.douta(Do0[31:16])
	),
	M01(
		.clka(clka),
		.ena(Y[0]),
		.wea(wea),
		.addra(addra[2:0]),
		.dina(dina[15:0]),
		.douta(Do0[15:0])
	),
	M10(
		.clka(clka),
		.ena(Y[1]),
		.wea(wea),
		.addra(addra[2:0]),
		.dina(dina[31:16]),
		.douta(Do1[31:16])
	),
	M11(
		.clka(clka),
		.ena(Y[1]),
		.wea(wea),
		.addra(addra[2:0]),
		.dina(dina[15:0]),
		.douta(Do1[15:0])
	),
	M20(
		.clka(clka),
		.ena(Y[2]),
		.wea(wea),
		.addra(addra[2:0]),
		.dina(dina[31:16]),
		.douta(Do2[31:16])
	),
	M21(
		.clka(clka),
		.ena(Y[2]),
		.wea(wea),
		.addra(addra[2:0]),
		.dina(dina[15:0]),
		.douta(Do2[15:0])
	),
	M30(
		.clka(clka),
		.ena(Y[3]),
		.wea(wea),
		.addra(addra[2:0]),
		.dina(dina[31:16]),
		.douta(Do3[31:16])
	),
	M31(
		.clka(clka),
		.ena(Y[3]),
		.wea(wea),
		.addra(addra[2:0]),
		.dina(dina[15:0]),
		.douta(Do3[15:0])
	);
	
endmodule
