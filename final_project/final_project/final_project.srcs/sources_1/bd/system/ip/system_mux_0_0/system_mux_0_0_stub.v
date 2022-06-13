// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed May 25 17:46:47 2022
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_mux_0_0/system_mux_0_0_stub.v
// Design      : system_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mux,Vivado 2017.2" *)
module system_mux_0_0(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, ctl, y)
/* synthesis syn_black_box black_box_pad_pin="x0[15:0],x1[15:0],x2[15:0],x3[15:0],x4[15:0],x5[15:0],x6[15:0],x7[15:0],x8[15:0],x9[15:0],ctl[3:0],y[15:0]" */;
  input [15:0]x0;
  input [15:0]x1;
  input [15:0]x2;
  input [15:0]x3;
  input [15:0]x4;
  input [15:0]x5;
  input [15:0]x6;
  input [15:0]x7;
  input [15:0]x8;
  input [15:0]x9;
  input [3:0]ctl;
  output [15:0]y;
endmodule
