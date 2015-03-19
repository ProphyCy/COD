`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:52:40 01/05/2015 
// Design Name: 
// Module Name:    mux8to1_32 
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
module mux8to1_32(
				input wire [31:0] Do0,
				input wire [31:0] Do1,
				input wire [31:0] Do2,
				input wire [31:0] Do3,
				input wire [31:0] Do4,
				input wire [31:0] Do5,
				input wire [31:0] Do6,
				input wire [31:0] Do7,
				input wire [2:0] SEL,
				output reg [31:0] Do
    );

	always @(*)
	begin
		case (SEL)
			0: begin	Do <= Do0; end
			1:	begin Do <= Do1; end
			2:	begin Do <= Do2; end
			3: begin	Do <= Do3; end
			4:	begin Do <= Do4; end
			5:	begin Do <= Do5; end
			6:	begin Do <= Do6; end
			7:	begin Do <= Do7; end
		endcase
	end

endmodule
