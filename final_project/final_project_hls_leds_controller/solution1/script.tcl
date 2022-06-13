############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project final_project_hls_leds_controller
set_top leds_controller
add_files final_project_hls_leds_controller/leds_controller.cpp
add_files -tb final_project_hls_leds_controller/leds_controller_test.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 8 -name default
source "./final_project_hls_leds_controller/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -flow impl -rtl verilog -format ip_catalog
