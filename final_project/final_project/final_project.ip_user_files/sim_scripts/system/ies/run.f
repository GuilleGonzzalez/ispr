-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/hdl/system.vhd" \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir.vhd" \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_c.vhd" \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mac_muladd_10cud.vhd" \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mac_muladd_16dEe.vhd" \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mul_mul_16s_1bkb.vhd" \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_shift_reg.vhd" \
  "../../../bd/system/ip/system_fir_0_0/sim/system_fir_0_0.vhd" \
  "c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_clk_wiz_0/system_clk_wiz_0_sim_netlist.vhdl" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_11 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/system/ip/system_rst_clk_wiz_100M_0/sim/system_rst_clk_wiz_100M_0.vhd" \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/849f/hdl/vhdl/leds.vhd" \
  "../../../bd/system/ip/system_leds_0_0/sim/system_leds_0_0.vhd" \
  "../../../bd/system/ip/system_fir_0_1/sim/system_fir_0_1.vhd" \
-endlib
-makelib ies/xbip_utils_v3_0_7 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/3d01/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/c_reg_fd_v12_0_3 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/e1e2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/xbip_pipe_v3_0_3 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/xbip_dsp48_addsub_v3_0_3 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/xbip_addsub_v3_0_3 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/2957/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/c_addsub_v12_0_10 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/a394/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies/c_gate_bit_v12_0_3 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/b6ab/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies/xbip_counter_v3_0_3 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/de69/hdl/xbip_counter_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/c_counter_binary_v12_0_10 \
  "../../../../final_project.srcs/sources_1/bd/system/ipshared/d6cf/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
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
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

