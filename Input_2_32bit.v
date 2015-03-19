////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_5396_29
// /___/   /\     Timestamp : 11/11/2014 18:33:02
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Input_2_32bit(disp_ctr, 
                     push_out, 
                     Ai, 
                     Bi, 
                     blinke, 
                     state);

    input [4:0] disp_ctr;
    input [2:0] push_out;
   output reg [31:0] Ai=32'h87654321;
   output reg [31:0] Bi=32'h12345678;
   output reg [3:0] blinke;
   output reg [1:0] state = 01;
   
   always @(posedge push_out[0])	//ÒÆÎ»
	begin
		if(disp_ctr[4:2] <= 3'b001)
			if(!push_out[1])
				state <= state-1;
			else state <= state+1;
		else state <= state;
	end
	
	always
		if(disp_ctr[4:2]<3'b010)	//ÉÁË¸
			case(state[1:0])
				2'b00: blinke<=4'b0001;
				2'b01: blinke<=4'b0010;
				2'b10: blinke<=4'b0100;
				2'b11: blinke<=4'b1000;
			endcase
		else blinke<=4'b0000;
		
	always @(posedge push_out[2]) //Ôö¼õ
	begin
		if(disp_ctr[4:2] == 3'b000) 
		begin
			case({disp_ctr[1], state})
				3'b000: 
				begin
					Ai[3:0] <= Ai[3:0]+1;
				end
				3'b001: 
				begin
					Ai[7:4] <= Ai[7:4]+1;
				end
				3'b010: 
				begin
					Ai[11:8] <= Ai[11:8]+1;
				end
				3'b011: 
				begin
					Ai[15:12] <= Ai[15:12]+1;
				end
				3'b100: 
				begin
					Ai[19:16] <= Ai[19:16]+1;
				end
				3'b101: 
				begin
					Ai[23:20] <= Ai[23:20]+1;
				end
				3'b110: 
				begin
					Ai[27:24] <= Ai[27:24]+1;
				end
				3'b111: 
				begin
					Ai[31:28] <= Ai[31:28]+1;
				end
			endcase
		end
	
		else if(disp_ctr[4:2]==3'b001) 
		begin
			case({disp_ctr[1], state})
				3'b000: 
				begin
					Bi[3:0] <= Bi[3:0]+1;
				end
				3'b001: 
				begin
					Bi[7:4] <= Bi[7:4]+1;
				end
				3'b010: 
				begin
					Bi[11:8] <= Bi[11:8]+1;
				end
				3'b011: 
				begin
					Bi[15:12] <= Bi[15:12]+1;
				end
				3'b100: 
				begin
					Bi[19:16] <= Bi[19:16]+1;
				end
				3'b101: 
				begin
					Bi[23:20] <= Bi[23:20]+1;
				end
				3'b110: 
				begin
					Bi[27:24] <= Bi[27:24]+1;
				end
				3'b111: 
				begin
					Bi[31:28] <= Bi[31:28]+1;
				end
			endcase
		end
	end
endmodule
