////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_4800_46
// /___/   /\     Timestamp : 03/22/2015 18:23:51
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module seven_seg_dev(blinking, 
                     disp_num, 
                     flash_clk, 
                     pointing, 
                     Scanning, 
                     SW, 
                     AN, 
                     SEGMENT);

    input [3:0] blinking;
    input [31:0] disp_num;
    input flash_clk;
    input [3:0] pointing;
    input [1:0] Scanning;
    input [1:0] SW;
   output  [3:0] AN;
   output [7:0] SEGMENT;
   
	reg [3:0] digit, anode;
	reg [7:0] temp_seg, digit_seg;
	wire [15:0] disp_current;
	reg Dp;
	
   assign SEGMENT[7:0] = (SW[0])?{Dp, digit_seg[6:0]}:temp_seg;
	assign disp_current = (SW[1])?disp_num[31:16]:disp_num[15:0];
	
	
	always @(*)begin
		case(Scanning)
			0:
			begin 
				digit=disp_current[3:0];
				temp_seg={disp_num[24],disp_num[0], disp_num[4], disp_num[16], disp_num[25],disp_num[17], disp_num[5], disp_num[12]};
			end
			1:
			begin 
				digit=disp_current[7:4];
				temp_seg={disp_num[26],disp_num[1], disp_num[6], disp_num[18], disp_num[27], disp_num[19], disp_num[7],disp_num[13]};
			end
			2:
			begin 
				digit=disp_current[11:8];
				temp_seg={disp_num[28], disp_num[2], disp_num[8], disp_num[20], disp_num[29], disp_num[21], disp_num[9],disp_num[14]};
			end
			3:
			begin 
				digit=disp_current[15:12];
				temp_seg={disp_num[30], disp_num[3], disp_num[10], disp_num[22], disp_num[31], disp_num[23],disp_num[11],disp_num[15]};
			end
		endcase
	end
	
	always @*begin
		anode=4'b1111;
		case(Scanning)
			0: begin anode = 4'b1110; Dp = pointing[0];end
			1: begin anode = 4'b1101; Dp = pointing[1];end
			2: begin anode = 4'b1011; Dp = pointing[2];end
			3: begin anode = 4'b0111; Dp = pointing[3];end
		endcase
	end
	
	assign AN = anode | (blinking & {flash_clk, flash_clk, flash_clk, flash_clk});
	
	
	always @* begin
		case (digit)
				4'b0000 : digit_seg <= 8'b11000000; 
				4'b0001 : digit_seg <= 8'b11111001; 
				4'b0010 : digit_seg <= 8'b10100100;
				4'b0011 : digit_seg <= 8'b10110000;
				4'b0100 : digit_seg <= 8'b10011001;
				4'b0101 : digit_seg <= 8'b10010010;
				4'b0110 : digit_seg <= 8'b10000010;
				4'b0111 : digit_seg <= 8'b11111000;
				4'b1000 : digit_seg <= 8'b10000000;
				4'b1001 : digit_seg <= 8'b10010000;
				4'b1010 : digit_seg <= 8'b10001000;
				4'b1011 : digit_seg <= 8'b10000011;
				4'b1100 : digit_seg <= 8'b11000110;
				4'b1101 : digit_seg <= 8'b10100001;
				4'b1110 : digit_seg <= 8'b10000110;
				4'b1111 : digit_seg <= 8'b10001110;
		endcase
	end
	
endmodule
