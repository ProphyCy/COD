////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_2976_20
// /___/   /\     Timestamp : 12/15/2014 18:04:38
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module counter_32bit_rev(clk, 
                         cnt_init, 
                         push_init, 
                         s, 
                         cnt, 
                         Rc);

    input clk;
    input [31:0] cnt_init;
    input push_init;
    input s;
   output reg [31:0] cnt;
   output Rc;
	
	initial 
	begin
		cnt = cnt_init;
	end
	
   assign Rc = (~s & (~|cnt)) | (s & (&cnt));
	always @(posedge clk)
	begin
		if (push_init)
		begin
			cnt <= cnt_init;
		end
		else
		if (s) 
		begin
			cnt <= cnt + 1;
		end
		else
		begin
			cnt <= cnt - 1;
		end
	end
endmodule
