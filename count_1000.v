`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:38 12/20/2014 
// Design Name: 
// Module Name:    count_1000 
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
module count_1000(clk, reset, time_out, clk_out);

	input clk, reset;
	output reg [11:0] time_out;
	output reg clk_out;

	always @(posedge clk)
	begin
		if (!reset)
		begin
			clk_out <= 0;
			time_out <= 0;
		end
		else
		if (time_out == 12'b100110011001)
		begin
			time_out <= 0;
			clk_out <= 1;
		end
		else
		if (time_out[7:0] == 8'b10011001)
		begin
			time_out[11:8] <= time_out[11:8] + 1;
			time_out[7:0] <= 0;
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
