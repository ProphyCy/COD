////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_5396_28
// /___/   /\     Timestamp : 11/11/2014 18:31:19
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module LED_DEV(clk, 
               Data_in, 
               EN, 
               rst, 
               LED, 
               Other_out);

    input clk;
    input [31:0] Data_in;
    input EN;
    input rst;
   output [7:0] LED;
   output [31:8] Other_out;
   
   assign LED[7:0] = Data_in[7:0];
	assign Other_out = Data_in[31:9];

endmodule
