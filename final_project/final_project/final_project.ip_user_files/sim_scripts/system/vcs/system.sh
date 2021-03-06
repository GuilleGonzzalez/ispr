#!/bin/bash -f
# Vivado (TM) v2017.2 (64-bit)
#
# Filename    : system.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Tue May 25 17:04:44 +0200 2021
# IP Build 1909766 on Thu Jun 15 19:58:00 MDT 2017 
#
# usage: system.sh [-help]
# usage: system.sh [-lib_map_path]
# usage: system.sh [-noclean_files]
# usage: system.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'system.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
# ********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm lib_cdc_v1_0_2 proc_sys_reset_v5_0_11 xbip_utils_v3_0_7 c_reg_fd_v12_0_3 xbip_dsp48_wrapper_v3_0_4 xbip_pipe_v3_0_3 xbip_dsp48_addsub_v3_0_3 xbip_addsub_v3_0_3 c_addsub_v12_0_10 c_gate_bit_v12_0_3 xbip_counter_v3_0_3 c_counter_binary_v12_0_10)

# Simulation root library directory
sim_lib_dir="vcs"

# Script info
echo -e "system.sh - Script generated by export_simulation (Vivado v2017.2 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/9c7f" \
    "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/system/hdl/system.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_c.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mac_muladd_10cud.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mac_muladd_16dEe.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_mul_mul_16s_1bkb.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/2943/hdl/vhdl/fir_shift_reg.vhd" \
    "$ref_dir/../../../bd/system/ip/system_fir_0_0/sim/system_fir_0_0.vhd" \
    "$ref_dir/c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_clk_wiz_0/system_clk_wiz_0_sim_netlist.vhdl" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_11 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/system/ip/system_rst_clk_wiz_100M_0/sim/system_rst_clk_wiz_100M_0.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/849f/hdl/vhdl/leds.vhd" \
    "$ref_dir/../../../bd/system/ip/system_leds_0_0/sim/system_leds_0_0.vhd" \
    "$ref_dir/../../../bd/system/ip/system_fir_0_1/sim/system_fir_0_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_utils_v3_0_7 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/3d01/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_reg_fd_v12_0_3 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/e1e2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_wrapper_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_pipe_v3_0_3 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_dsp48_addsub_v3_0_3 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_addsub_v3_0_3 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/2957/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_addsub_v12_0_10 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/a394/hdl/c_addsub_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_gate_bit_v12_0_3 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/b6ab/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xbip_counter_v3_0_3 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/de69/hdl/xbip_counter_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work c_counter_binary_v12_0_10 $vhdlan_opts \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/d6cf/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/system/ip/system_c_counter_binary_0_0/sim/system_c_counter_binary_0_0.vhd" \
    "$ref_dir/c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_sim_netlist.vhdl" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/e470/hdl/vhdl/energy.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/e470/hdl/vhdl/energy_mul_mul_16bkb.vhd" \
    "$ref_dir/../../../bd/system/ip/system_energy_1_0/sim/system_energy_1_0.vhd" \
    "$ref_dir/../../../bd/system/ip/system_energy_0_1/sim/system_energy_0_1.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/e84c/hdl/vhdl/leds_controller.vhd" \
    "$ref_dir/../../../../final_project.srcs/sources_1/bd/system/ipshared/e84c/hdl/vhdl/leds_controller_mbkb.vhd" \
    "$ref_dir/../../../bd/system/ip/system_leds_controller_0_0/sim/system_leds_controller_0_0.vhd" \
    "$ref_dir/../../../bd/system/ip/system_mux_0_0/sim/system_mux_0_0.vhd" \
    "$ref_dir/../../../bd/system/ip/system_reg_0_0/sim/system_reg_0_0.vhd" \
    "$ref_dir/c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_fifo_generator_0_0/system_fifo_generator_0_0_sim_netlist.vhdl" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.system xil_defaultlib.glbl -o system_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./system_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./system.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key system_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc system_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./system.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: system.sh [-help]\n\
Usage: system.sh [-lib_map_path]\n\
Usage: system.sh [-reset_run]\n\
Usage: system.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
