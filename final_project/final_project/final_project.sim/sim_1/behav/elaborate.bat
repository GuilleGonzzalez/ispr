@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 1a9770d63fe24b15b4ed7bebcf357c6c -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_11 -L xbip_utils_v3_0_7 -L c_reg_fd_v12_0_3 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_3 -L xbip_dsp48_addsub_v3_0_3 -L xbip_addsub_v3_0_3 -L c_addsub_v12_0_10 -L c_gate_bit_v12_0_3 -L xbip_counter_v3_0_3 -L c_counter_binary_v12_0_10 -L secureip -L xpm --snapshot tb_system_behav xil_defaultlib.tb_system -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
