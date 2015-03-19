////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_5396_32
// /___/   /\     Timestamp : 11/11/2014 18:33:51
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
////////
`timescale 1ns / 1ps

module Output_2_Disp(blink_in, 
                     clk, 
                     Disp_sel, 
                     Disp0, 
                     Disp1, 
                     Disp2, 
                     Disp3, 
                     Disp4, 
                     Disp5, 
                     Disp6, 
                     Disp7, 
                     EN, 
                     point_in, 
                     rst, 
                     blink_out, 
                     Disp_num, 
                     point_out);

    input [31:0] blink_in;
    input clk;
    input [2:0] Disp_sel;
    input [31:0] Disp0;
    input [31:0] Disp1;
    input [31:0] Disp2;
    input [31:0] Disp3;
    input [31:0] Disp4;
    input [31:0] Disp5;
    input [31:0] Disp6;
    input [31:0] Disp7;
    input EN;
    input [31:0] point_in;
    input rst;
   output reg [3:0] blink_out;
   output reg [31:0] Disp_num = 32'h12345678;
   output reg [3:0] point_out;
   
   always@(posedge clk) 
	begin
		point_out <= 4'b1111;
		blink_out <= 4'b0000;
	
		case (Disp_sel)
			3'b000:
			begin
				Disp_num <= Disp0;
				blink_out <= blink_in[3:0];
			end
			
			3'b001:
			begin
				Disp_num <= Disp1;
				blink_out <= blink_in[7:4];
			end
			
			3'b010:
				Disp_num <= Disp2;
			
			3'b011:
				Disp_num <= Disp3;
		
			3'b100:
			begin
				Disp_num <= Disp4;
				point_out <= point_in[19:16];
				blink_out <= blink_in[19:16];
			end

			3'b101:
				Disp_num <= Disp5;
			
			3'b110:
				Disp_num <= Disp6;

			3'b111:
				Disp_num <= Disp7;
		endcase
	end
endmodule
