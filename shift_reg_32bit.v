////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_1136_19
// /___/   /\     Timestamp : 12/22/2014 15:19:09
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module shift_reg_32bit(clk, 
                       p_in, 
                       S, 
                       s_in, 
                       Q);

    input clk;
    input [31:0] p_in;
    input S;
    input s_in;
   output [31:0] Q;
   
   shift_reg_8bit
		M11_s8_1(clk, p_in[31:24], S, s_in, Q[31:24]),
		M11_s8_2(clk, p_in[23:16], S, Q[24], Q[23:16]),
		M11_s8_3(clk, p_in[15:8], S, Q[16], Q[15:8]),
		M11_s8_4(clk, p_in[7:0], S, Q[8], Q[7:0]);
endmodule
