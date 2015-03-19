////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_2976_19
// /___/   /\     Timestamp : 12/15/2014 18:04:28
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module counter_1s(clk, clk_1s);
    input clk;
   output reg clk_1s;
   
	reg [31:0] cnt = 0;
	
	always @(posedge clk)
	begin
		if (cnt > 50000000) 
		begin
			cnt <= 0;
			clk_1s <= ~clk_1s;
		end
		else
		begin
			cnt <= cnt + 1;
		end
	end
   
endmodule
