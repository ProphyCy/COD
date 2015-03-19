////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_5360_19
// /___/   /\     Timestamp : 12/15/2014 21:13:16
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Wall_CLOCK(adj_push, 
                  clk, 
                  clk_1ms, 
                  inc, 
                  reset, 
                  s_point, 
                  Time_out, 
                  t_blinke);

    input [2:0] adj_push;
    input clk;
    input clk_1ms;
    input inc;
    input reset;
   output reg [3:0] s_point;
   output reg [15:0] Time_out;
   output reg [3:0] t_blinke;
   
   reg t_state;
	wire [11:0] millisecond;
	wire [7:0] second, minute, hour;
	reg [7:0] day;
	wire clk_1s, clk_1min, clk_1hour, clk_1day;
	
	reg adjust = 0, adjust_sec = 1, adjust_min, adjust_hour, adjust_day;
	reg adjust_state;
	reg [1:0] display_state;
	
	wire clk_1min_adj, clk_1hour_adj, clk_1day_adj;
	
	count_1000	m10_ms(clk_1ms, reset, millisecond, clk_1s);
	count_60		m10_s(clk_1s, reset, second, clk_1min);
	count_60		m10_min(clk_1min_adj, reset, minute, clk_1hour);
	count_24		m10_hour(clk_1hour_adj, reset, hour, clk_1day);
	
	assign clk_1min_adj = (adjust_min & inc) | (!adjust_min & clk_1min);
	assign clk_1hour_adj = (adjust_hour & inc) | (!adjust_hour &clk_1hour);
	assign clk_1day_adj = (adjust_day & inc) | (!adjust_day &clk_1day);
	
	always @(posedge clk_1day_adj)
	begin
		if (day == 8'b00110000)
		begin
			day <= 0;
		end
		else
		if (day[3:0] == 4'b1001)
		begin
			day[3:0] <= 0;
			day[7:4] <= day[7:4] + 1; 
		end
		else
		begin
			day <= day + 1;
		end
	end
	
	always @(*)
	begin
		case (display_state)
			0:
			begin
				Time_out = {day, hour};
				s_point = 4'b1011;
			end
			1:
			begin
				Time_out = {hour, minute};
				s_point = 4'b1011;
			end
			2:
			begin
				Time_out = {minute, second};
				s_point = 4'b1011;
			end
			3:begin
				Time_out = {second, millisecond[11:4]};
				s_point = 4'b1011;
			end
		endcase
		
		if (!adjust)
		begin
			t_blinke = 0;
		end
		else
		begin
			case ({display_state, t_state})
				3'b000:
				begin
					t_blinke = 4'b0011;
					adjust_hour = adj_push[1];
				end
				3'b001:
				begin
					t_blinke = 4'b1100;
					adjust_day = adj_push[1];
				end
				3'b010:
				begin
					t_blinke = 4'b0011;
					adjust_min = adj_push[1];
				end
				3'b011:
				begin
					t_blinke = 4'b1100;
					adjust_hour = adj_push[1];
				end
				3'b100:
				begin
					t_blinke = 4'b0011;
					adjust_sec = ~adj_push[1];
				end
				3'b101:
				begin
					t_blinke = 4'b1100;
					adjust_min = adj_push[1];
				end
				3'b110:
				begin
					t_blinke = 4'b0011;
				end
				3'b111:
				begin
					t_blinke = 4'b1100;
					adjust_sec = ~adj_push[1];
				end
			endcase
		end
		
	end
	
	always @(posedge adj_push[2])
	begin
		adjust <= ~adjust;
	end
	
	always @(posedge adj_push[0])
	begin
		if (!adjust)
			display_state <= display_state + 1;
		else
			t_state <= t_state + 1;
	end
	
endmodule
