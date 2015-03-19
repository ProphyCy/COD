`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:06 12/20/2014 
// Design Name: 
// Module Name:    count_24 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module count_24(clk, reset, time_out, clk_out);

	input clk, reset;
	output reg [7:0] time_out;
	output reg clk_out;
	
	always @(posedge clk)
	begin
		if (!reset)
		begin
			time_out <= 0;
			clk_out <=0;
		end
		else
		if (time_out == 8'b00100011)
		begin
			clk_out <= 1;
			time_out <= 0;
		end
		else
		if (time_out[3:0] == 4'b1001)
		begin
			time_out[7:4] <= time_out[7:4] + 1;
			time_out[3:0] <= 0;
		end
		else
		begin
			time_out <= time_out + 1;
			clk_out <= 0;
		end
	end
endmodule
