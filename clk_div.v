////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_1348_64
// /___/   /\     Timestamp : 03/19/2015 20:42:32
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module clk_div(clk, 
               rst, 
               SW2, 
               clkdiv, 
               Clk_CPU);

    input clk;
    input rst;
    input SW2;
   output reg [31:0] clkdiv;
   output reg Clk_CPU;
   
   
	always @(posedge clk)
	begin
		if (rst == 1'b1)
		begin
			clkdiv <= 0;
		end
		else
		begin
			clkdiv <= clkdiv + 1;
		end		
	end
	
	always @(posedge clk)
	begin
		if (SW2 == 1'b0)
		begin
			Clk_CPU <= clk;
		end
		else
		begin
			Clk_CPU <= clkdiv[24];
		end
	end
endmodule
