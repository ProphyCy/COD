////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_4784_46
// /___/   /\     Timestamp : 03/21/2015 22:29:37
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module seven_seg_Dev_IO(blink_in, 
                        clk, 
                        disp_cpudata, 
                        GPIOe0000000_we, 
                        point_in, 
                        rst, 
                        Test, 
                        Test_data1, 
                        Test_data2, 
                        Test_data3, 
                        Test_data4, 
                        Test_data5, 
                        Test_data6, 
                        Test_data7, 
                        blink_out, 
                        Disp_num, 
                        point_out);

    input [31:0] blink_in;
    input clk;
    input [31:0] disp_cpudata;
    input GPIOe0000000_we;
    input [31:0] point_in;
    input rst;
    input [2:0] Test;
    input [31:0] Test_data1;
    input [31:0] Test_data2;
    input [31:0] Test_data3;
    input [31:0] Test_data4;
    input [31:0] Test_data5;
    input [31:0] Test_data6;
    input [31:0] Test_data7;
   output reg [3:0] blink_out;
   output reg  [31:0] Disp_num = 32'h12345678;
   output reg [3:0] point_out;
   
   always@(posedge clk) 
	begin
		if (rst)
		begin
			Disp_num <= 32'hAA5555AA;
		end
		else
		begin
			point_out <= 4'b1111;
			blink_out <= 4'b0000;
		
			case (Test)
				3'b000:
				begin
					if (GPIOe0000000_we) 
					begin 
						Disp_num <= disp_cpudata; 
						blink_out <= blink_in[3:0]; 
						point_out <= point_in[3:0];
					end
					else 
					begin 
						Disp_num <= Disp_num;
						blink_out <= blink_out; 
						point_out <= point_in[3:0]; 
					end
				end
				
				3'b001:
				begin
					Disp_num <= Test_data1;
					blink_out <= blink_in[7:4];
				end
				
				3'b010:
					Disp_num <= Test_data2;
				
				3'b011:
					Disp_num <= Test_data3;
			
				3'b100:
				begin
					Disp_num <= Test_data4;
					point_out <= point_in[19:16];
					blink_out <= blink_in[19:16];
				end

				3'b101:
					Disp_num <= Test_data5;
				
				3'b110:
					Disp_num <= Test_data6;

				3'b111:
					Disp_num <= Test_data7;
			endcase
		end
	end
	
endmodule
