////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_1348_66
// /___/   /\     Timestamp : 03/19/2015 20:57:22
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Ext_32(imm_16, 
              Imm_32);

    input [15:0] imm_16;
   output [31:0] Imm_32;
   
   assign Imm_32 = {16'b0000_0000_0000_0000, imm_16};
	
endmodule
