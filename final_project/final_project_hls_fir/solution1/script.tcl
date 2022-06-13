############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project final_project_hls_fir
set_top fir
add_files final_project_hls_fir/fir.c
add_files final_project_hls_fir/fir_coef.dat
add_files -tb final_project_hls_fir/fir_test.c
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 8 -name default
source "./final_project_hls_fir/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
