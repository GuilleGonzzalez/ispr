// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 27 16:07:27 2021
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_leds_0_1/system_leds_0_1_stub.v
// Design      : system_leds_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "leds,Vivado 2017.2" *)
module system_leds_0_1(ap_clk, ap_rst, row_V, col_V, in_V_V_dout, 
  in_V_V_empty_n, in_V_V_read)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst,row_V[6:0],col_V[9:0],in_V_V_dout[6:0],in_V_V_empty_n,in_V_V_read" */;
  input ap_clk;
  input ap_rst;
  output [6:0]row_V;
  output [9:0]col_V;
  input [6:0]in_V_V_dout;
  input in_V_V_empty_n;
  output in_V_V_read;
endmodule
