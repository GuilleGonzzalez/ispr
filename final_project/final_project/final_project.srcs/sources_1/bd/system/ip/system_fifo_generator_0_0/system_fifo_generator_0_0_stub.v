// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue May 25 17:08:16 2021
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_fifo_generator_0_0/system_fifo_generator_0_0_stub.v
// Design      : system_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_1_4,Vivado 2017.2" *)
module system_fifo_generator_0_0(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[6:0],wr_en,rd_en,dout[6:0],full,empty" */;
  input clk;
  input srst;
  input [6:0]din;
  input wr_en;
  input rd_en;
  output [6:0]dout;
  output full;
  output empty;
endmodule
