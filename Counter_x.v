////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : 
//  /   /         Filename : xil_1888_46
// /___/   /\     Timestamp : 03/30/2015 21:23:01
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: 
//
`timescale 1ns / 1ps

module Counter_x(clk, 
                 clk0, 
                 clk1, 
                 clk2, 
                 counter_ch, 
                 counter_val, 
                 counter_we, 
                 rst, 
                 counter_out, 
                 counter0_OUT, 
                 counter1_OUT, 
                 counter2_OUT);

    input clk;
    input clk0;
    input clk1;
    input clk2;
    input [1:0] counter_ch;
    input [31:0] counter_val;
    input counter_we;
    input rst;
   output [31:0] counter_out;
   output counter0_OUT;
   output counter1_OUT;
   output counter2_OUT;
   
   
endmodule
