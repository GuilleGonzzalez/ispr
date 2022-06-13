// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue May 25 17:05:43 2021
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_fir_0_0/system_fir_0_0_stub.v
// Design      : system_fir_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fir,Vivado 2017.2" *)
module system_fir_0_0(y_ap_vld, ap_clk, ap_rst, y, x)
/* synthesis syn_black_box black_box_pad_pin="y_ap_vld,ap_clk,ap_rst,y[15:0],x[15:0]" */;
  output y_ap_vld;
  input ap_clk;
  input ap_rst;
  output [15:0]y;
  input [15:0]x;
endmodule
