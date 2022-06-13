// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 27 16:07:33 2021
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top system_leds_controller_0_1 -prefix
//               system_leds_controller_0_1_ system_leds_controller_0_0_stub.v
// Design      : system_leds_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "leds_controller,Vivado 2017.2" *)
module system_leds_controller_0_1(ap_clk, ap_rst, out_V_V_din, out_V_V_full_n, 
  out_V_V_write, x, col_V)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst,out_V_V_din[6:0],out_V_V_full_n,out_V_V_write,x[15:0],col_V[3:0]" */;
  input ap_clk;
  input ap_rst;
  output [6:0]out_V_V_din;
  input out_V_V_full_n;
  output out_V_V_write;
  input [15:0]x;
  input [3:0]col_V;
endmodule
