vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_11
vlib msim/xbip_utils_v3_0_7
vlib msim/c_reg_fd_v12_0_3
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_pipe_v3_0_3
vlib msim/xbip_dsp48_addsub_v3_0_3
vlib msim/xbip_addsub_v3_0_3
vlib msim/c_addsub_v12_0_10
vlib msim/c_gate_bit_v12_0_3
vlib msim/xbip_counter_v3_0_3
vlib msim/c_counter_binary_v12_0_10

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 msim/proc_sys_reset_v5_0_11
vmap xbip_utils_v3_0_7 msim/xbip_utils_v3_0_7
vmap c_reg_fd_v12_0_3 msim/c_reg_fd_v12_0_3
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_3 msim/xbip_pipe_v3_0_3
vmap xbip_dsp48_addsub_v3_0_3 msim/xbip_dsp48_addsub_v3_0_3
vmap xbip_addsub_v3_0_3 msim/xbip_addsub_v3_0_3
vmap c_addsub_v12_0_10 msim/c_addsub_v12_0_10
vmap c_gate_bit_v12_0_3 msim/c_gate_bit_v12_0_3
vmap xbip_counter_v3_0_3 msim/xbip_counter_v3_0_3
vmap c_counter_binary_v12_0_10 msim/c_counter_binary_v12_0_10

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../final_project.srcs/sources_1/bd/system/ipshared/9c7f" "+incdir+../../../../final_project.srcs/sources_1/bd/system/ipshared/9c7f" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/hdl/system.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_c.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mac_muladd_10cud.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mac_muladd_16dEe.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mul_mul_16s_1bkb.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_shift_reg.vhd" \
"../../../bd/system/ip/system_fir_0_0/sim/system_fir_0_0.vhd" \
"c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_clk_wiz_0/system_clk_wiz_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_clk_wiz_100M_0/sim/system_rst_clk_wiz_100M_0.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/849f/hdl/vhdl/leds.vhd" \
"../../../bd/system/ip/system_leds_0_0/sim/system_leds_0_0.vhd" \
"../../../bd/system/ip/system_fir_0_1/sim/system_fir_0_1.vhd" \

vcom -work xbip_utils_v3_0_7 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/3d01/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_3 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/e1e2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_3 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/2957/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_10 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/a394/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_3 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/b6ab/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_3 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/de69/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_10 -64 -93 \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/d6cf/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_c_counter_binary_0_0/sim/system_c_counter_binary_0_0.vhd" \
"c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_sim_netlist.vhdl" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/e470/hdl/vhdl/energy.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/e470/hdl/vhdl/energy_mul_mul_16bkb.vhd" \
"../../../bd/system/ip/system_energy_1_0/sim/system_energy_1_0.vhd" \
"../../../bd/system/ip/system_energy_0_1/sim/system_energy_0_1.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/e84c/hdl/vhdl/leds_controller.vhd" \
"../../../../final_project.srcs/sources_1/bd/system/ipshared/e84c/hdl/vhdl/leds_controller_mbkb.vhd" \
"../../../bd/system/ip/system_leds_controller_0_0/sim/system_leds_controller_0_0.vhd" \
"../../../bd/system/ip/system_mux_0_0/sim/system_mux_0_0.vhd" \
"../../../bd/system/ip/system_reg_0_0/sim/system_reg_0_0.vhd" \
"c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_fifo_generator_0_0/system_fifo_generator_0_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"

