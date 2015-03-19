////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_2976_21
// /___/   /\     Timestamp : 12/15/2014 18:04:45
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module counter_4bit(clk, 
                    Qa, 
                    Qb, 
                    Qc, 
                    Qd, 
                    Rc);

    input clk;
   output Qa;
   output Qb;
   output Qc;
   output Qd;
   output Rc;
	
	wire nQa, nQb, nQc, nQd;
	wire Da, Db, Dc, Dd;
   
	assign Da = nQa;
	
   FD 
		FD_A(.C(clk), .D(Da), .Q(Qa)),
		FD_B(.C(clk), .D(Db), .Q(Qb)),
		FD_C(.C(clk), .D(Dc), .Q(Qc)),
		FD_D(.C(clk), .D(Dd), .Q(Qd));
		
	defparam FD_A.INIT = 1'b0;
	defparam FD_B.INIT = 1'b0;
	defparam FD_C.INIT = 1'b0;
	defparam FD_D.INIT = 1'b0;
		
	INV 
		nQa_L(.I(Qa), .O(nQa)),
		nQb_L(.I(Qb), .O(nQb)),
		nQc_L(.I(Qc), .O(nQc)),
		nQd_L(.I(Qd), .O(nQd));

	NOR2
		NOR_C(.I0(nQa) ,.I1(nQb), .O(NOR_C_OUT));
		
	NOR3
		NOR_D(.I0(nQa) ,.I1(nQb), .I2(nQc), .O(NOR_D_OUT));
		
	NOR4
		NOR_Rc(.I0(nQa) ,.I1(nQb), .I2(nQc), .I3(nQd), .O(Rc));
	
	XNOR2
		XNOR_B(.I0(Qa), .I1(nQb), .O(Db)),
		XNOR_C(.I0(NOR_C_OUT), .I1(nQc), .O(Dc)),
		XNOR_D(.I0(NOR_D_OUT), .I1(nQd), .O(Dd));
		
endmodule
