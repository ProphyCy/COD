////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_5396_35
// /___/   /\     Timestamp : 11/11/2014 18:35:00
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module counter_26bit(clk, 
                     reset, 
                     clk_1ms, 
                     count_out);

    input clk;
    input reset;
   output clk_1ms;
   output [25:0] count_out;
   
	parameter COUNTER=26;
   reg [COUNTER-1:0] count;
	reg second_m;
	wire ckl;
	wire [COUNTER-1:0] count_out;
	reg adjust;
	
	
	initial 
	begin
		count <= 0;
		adjust <= 0;
	end
	
	always@(posedge clk)
	begin
	   if(!reset || ( (count[15:0]==49999) && (adjust == 1) ))
		begin
			count[15:0] <= 0;
			count[25:16] <= count[25:16]+1;
			adjust <= 0;
			second_m <= 1;
		end
		else 
		if (adjust == 1)
		begin
			count <= count+1;
			adjust <= 0;
			second_m <= 0;
		end
		else
		begin
			adjust <= 1;
		end
	end
	
	assign clk_1ms = second_m;
	assign count_out = count;


endmodule
