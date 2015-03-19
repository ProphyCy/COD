////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_5396_30
// /___/   /\     Timestamp : 11/11/2014 18:33:14
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Anti_jitter(button, 
                   clk, 
                   SW, 
                   button_out, 
                   button_pulse, 
                   SW_OK);

	input [3:0] button;
   input clk;
   input [7:0] SW;
   output reg [3:0] button_out;
   output reg [3:0] button_pulse;
   output reg [7:0] SW_OK;

	reg [31:0] counter;
	reg [3:0] btn_temp;
	reg [7:0] sw_temp;
	reg pluse;
		
	always @(posedge clk) 
	begin
		btn_temp <= button;
		sw_temp <= SW;
		if(btn_temp != button || sw_temp != SW) 
		begin
			counter <= 32'h00000000;
			pluse <= 0;
			end
		else if(counter < 100000)
				counter <= counter + 1;
				else begin
				button_out <= button;
				pluse <= 1;
				if(!pluse)
					button_pulse <= button;
				else button_pulse <= 0;
				SW_OK <= SW;
				end
		end    
   
endmodule
