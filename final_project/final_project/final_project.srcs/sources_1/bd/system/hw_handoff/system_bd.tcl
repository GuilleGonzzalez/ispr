
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# mux, reg, reg

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART digilentinc.com:zybo:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clk_in1 [ create_bd_port -dir I -type clk clk_in1 ]
  set col_V [ create_bd_port -dir O -from 9 -to 0 -type data col_V ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set row_V [ create_bd_port -dir O -from 6 -to 0 -type data row_V ]

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
CONFIG.Final_Count_Value {A00} \
CONFIG.Output_Width {12} \
CONFIG.Restrict_Count {true} \
 ] $c_counter_binary_0

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz ]

  # Create instance: energy_0, and set properties
  set energy_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:energy:1.0 energy_0 ]

  # Create instance: energy_1, and set properties
  set energy_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:energy:1.0 energy_1 ]

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_0 ]
  set_property -dict [ list \
CONFIG.Input_Data_Width {7} \
CONFIG.Output_Data_Width {7} \
 ] $fifo_generator_0

  # Create instance: fir_0, and set properties
  set fir_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:fir:1.0 fir_0 ]

  # Create instance: fir_1, and set properties
  set fir_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:fir:1.0 fir_1 ]

  # Create instance: leds_0, and set properties
  set leds_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:leds:1.0 leds_0 ]

  # Create instance: leds_controller_0, and set properties
  set leds_controller_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:leds_controller:1.0 leds_controller_0 ]

  # Create instance: mux_0, and set properties
  set block_name mux
  set block_cell_name mux_0
  if { [catch {set mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reg_0, and set properties
  set block_name reg
  set block_cell_name reg_0
  if { [catch {set reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reg_1, and set properties
  set block_name reg
  set block_cell_name reg_1
  if { [catch {set reg_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reg_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_clk_wiz_100M, and set properties
  set rst_clk_wiz_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_100M ]

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [ list \
CONFIG.ENABLE_AXI4STREAM {true} \
CONFIG.ENABLE_EXTERNAL_MUX {false} \
CONFIG.ENABLE_RESET {true} \
CONFIG.ENABLE_VCCDDRO_ALARM {false} \
CONFIG.ENABLE_VCCPAUX_ALARM {false} \
CONFIG.ENABLE_VCCPINT_ALARM {false} \
CONFIG.EXTERNAL_MUX_CHANNEL {VP_VN} \
CONFIG.INTERFACE_SELECTION {None} \
CONFIG.OT_ALARM {false} \
CONFIG.SINGLE_CHANNEL_ENABLE_CALIBRATION {true} \
CONFIG.SINGLE_CHANNEL_SELECTION {VAUXP14_VAUXN14} \
CONFIG.STIMULUS_FREQ {1} \
CONFIG.USER_TEMP_ALARM {false} \
CONFIG.VCCAUX_ALARM {false} \
CONFIG.VCCINT_ALARM {false} \
CONFIG.WAVEFORM_TYPE {SIN} \
 ] $xadc_wiz_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {10000} \
CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_1

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {11} \
CONFIG.DIN_TO {8} \
CONFIG.DIN_WIDTH {12} \
CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_0

  # Create port connections
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net clk_in1_1 [get_bd_ports clk_in1] [get_bd_pins clk_wiz/clk_in1] [get_bd_pins fir_1/ap_clk]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins energy_0/ap_clk] [get_bd_pins energy_1/ap_clk] [get_bd_pins fifo_generator_0/clk] [get_bd_pins fir_0/ap_clk] [get_bd_pins leds_0/ap_clk] [get_bd_pins leds_controller_0/ap_clk] [get_bd_pins reg_0/clk] [get_bd_pins reg_1/clk] [get_bd_pins rst_clk_wiz_100M/slowest_sync_clk] [get_bd_pins xadc_wiz_0/m_axis_aclk] [get_bd_pins xadc_wiz_0/s_axis_aclk]
  connect_bd_net -net clk_wiz_locked [get_bd_pins clk_wiz/locked] [get_bd_pins rst_clk_wiz_100M/dcm_locked]
  connect_bd_net -net energy_0_y [get_bd_pins energy_0/y] [get_bd_pins reg_0/d]
  connect_bd_net -net energy_0_y_ap_vld [get_bd_pins energy_0/y_ap_vld] [get_bd_pins reg_0/en]
  connect_bd_net -net energy_1_y [get_bd_pins energy_1/y] [get_bd_pins reg_1/d]
  connect_bd_net -net energy_1_y_ap_vld [get_bd_pins energy_1/y_ap_vld] [get_bd_pins reg_1/en]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_0/dout] [get_bd_pins leds_0/in_V_V_dout]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins fifo_generator_0/empty] [get_bd_pins leds_0/in_V_V_empty_n]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins fifo_generator_0/full] [get_bd_pins leds_controller_0/out_V_V_full_n]
  connect_bd_net -net fir_0_y [get_bd_pins energy_0/x] [get_bd_pins fir_0/y]
  connect_bd_net -net fir_0_y_ap_vld [get_bd_pins energy_0/x_ap_vld] [get_bd_pins fir_0/y_ap_vld]
  connect_bd_net -net fir_1_y [get_bd_pins energy_1/x] [get_bd_pins fir_1/y]
  connect_bd_net -net fir_1_y_ap_vld [get_bd_pins energy_1/x_ap_vld] [get_bd_pins fir_1/y_ap_vld]
  connect_bd_net -net leds_0_col_V [get_bd_ports col_V] [get_bd_pins leds_0/col_V]
  connect_bd_net -net leds_0_in_V_V_read [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins leds_0/in_V_V_read]
  connect_bd_net -net leds_0_row_V [get_bd_ports row_V] [get_bd_pins leds_0/row_V]
  connect_bd_net -net leds_controller_0_out_V_V_din [get_bd_pins fifo_generator_0/din] [get_bd_pins leds_controller_0/out_V_V_din]
  connect_bd_net -net leds_controller_0_out_V_V_write [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins leds_controller_0/out_V_V_write]
  connect_bd_net -net mux_0_y [get_bd_pins leds_controller_0/x] [get_bd_pins mux_0/y]
  connect_bd_net -net reg_0_q [get_bd_pins mux_0/x0] [get_bd_pins reg_0/q]
  connect_bd_net -net reg_1_q [get_bd_pins mux_0/x1] [get_bd_pins reg_1/q]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz/reset] [get_bd_pins fir_1/ap_rst] [get_bd_pins rst_clk_wiz_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_pins reg_0/rst] [get_bd_pins reg_1/rst] [get_bd_pins rst_clk_wiz_100M/peripheral_aresetn] [get_bd_pins xadc_wiz_0/m_axis_resetn]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_reset [get_bd_pins energy_0/ap_rst] [get_bd_pins energy_1/ap_rst] [get_bd_pins fir_0/ap_rst] [get_bd_pins leds_0/ap_rst] [get_bd_pins leds_controller_0/ap_rst] [get_bd_pins rst_clk_wiz_100M/peripheral_reset]
  connect_bd_net -net x_1 [get_bd_pins fir_0/x] [get_bd_pins fir_1/x] [get_bd_pins xadc_wiz_0/m_axis_tdata]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins mux_0/x2] [get_bd_pins mux_0/x4] [get_bd_pins mux_0/x6] [get_bd_pins mux_0/x8] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins mux_0/x3] [get_bd_pins mux_0/x5] [get_bd_pins mux_0/x7] [get_bd_pins mux_0/x9] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins leds_controller_0/col_V] [get_bd_pins mux_0/ctl] [get_bd_pins xlslice_0/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


