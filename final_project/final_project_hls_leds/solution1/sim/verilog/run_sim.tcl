# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2017.2
# Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
# 
# ==============================================================

set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado_HLS/2017.2/win64/tools/fpo_v7_0"

set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado_HLS/2017.2/win64/tools/opencv"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado_HLS/2017.2/win64/tools/fft_v9_0"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado_HLS/2017.2/win64/tools/fir_v7_0"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado_HLS/2017.2/win64/tools/dds_v6_0"

source check_sim.tcl

# --> test vector generation

ap_puts_info "COSIM" 302 "Starting C TB testing ...  "

cd ../wrapc

file delete -force  "err.log"

if {![file exists cosim.tv.exe]} {
	ap_puts_err "COSIM" 321 "EXE file generate failed, please re-run cosim."
	return -code error -errorcode $::errorCode
}

set ret [catch {eval exec ./cosim.tv.exe | tee temp0.log >&@ stdout} err]

if {$ret == 1} {
	ap_puts_err "COSIM" 320 "C TB testing failed, stop generating test vectors. Please check C TB or re-run cosim."
	return -code error -errorcode $::errorCode
}

if {[file isfile leds.autotvin.dat]} {
	file delete -force leds.autotvin.dat
}

if {[file isfile leds.autotvout.dat]} {
	file delete -force leds.autotvout.dat
}

sc_sim_check $ret $err "temp0.log"

cd ../tv/cdatafile
set ret [check_tvin_file]

if {$ret == 1} {
	ap_puts_err "COSIM" 344 "Rtl simulation failed."
	return -code error -errorcode $::errorCode
}

cd ../

# --> verilog simulation

ap_puts_info "COSIM" 323 "Starting verilog simulation..."

ap_puts_info "COSIM" 15 "Starting XSIM ..."

cd ../verilog

file delete -force ".exit.err"
file delete -force ".aesl_error"
file delete -force "err.log"

if {[file isfile run_xsim.bat]} {
	set ret [catch {eval exec "./run_xsim.bat | tee temp2.log" >&@ stdout} err]
}

cd ../tv/rtldatafile

set ret [check_tvout_file]

if {$ret == 1} {
	ap_puts_err "COSIM" 344 "Rtl simulation failed."
	return -code error -errorcode $::errorCode
}

cd ../../wrapc_pc

ap_puts_info "COSIM" 316 "Starting C post checking ..."

if {![file exists cosim.pc.exe]} {
    ap_puts_err "COSIM" 320 "EXE file generate failed, please re-run cosim."
    return -code error -errorcode $::errorCode
}

set ret [catch {eval exec ./cosim.pc.exe | tee temp0.log >&@ stdout} err]

sc_sim_check $ret $err "temp3.log"
