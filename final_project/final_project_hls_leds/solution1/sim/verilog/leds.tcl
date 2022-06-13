
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set col_group [add_wave_group col(wire) -into $coutputgroup]
add_wave /apatb_leds_top/AESL_inst_leds/col_V -into $col_group -radix hex
set row_group [add_wave_group row(wire) -into $coutputgroup]
add_wave /apatb_leds_top/AESL_inst_leds/row_V -into $row_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set in_group [add_wave_group in(fifo) -into $cinputgroup]
add_wave /apatb_leds_top/AESL_inst_leds/in_V_V_read -into $in_group -color #ffff00 -radix hex
add_wave /apatb_leds_top/AESL_inst_leds/in_V_V_empty_n -into $in_group -color #ffff00 -radix hex
add_wave /apatb_leds_top/AESL_inst_leds/in_V_V_dout -into $in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_leds_top/AESL_inst_leds/ap_start -into $blocksiggroup
add_wave /apatb_leds_top/AESL_inst_leds/ap_done -into $blocksiggroup
add_wave /apatb_leds_top/AESL_inst_leds/ap_idle -into $blocksiggroup
add_wave /apatb_leds_top/AESL_inst_leds/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_leds_top/AESL_inst_leds/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_leds_top/AESL_inst_leds/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_leds_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_leds_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_leds_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_leds_top/LENGTH_row_V -into $tb_portdepth_group -radix hex
add_wave /apatb_leds_top/LENGTH_col_V -into $tb_portdepth_group -radix hex
add_wave /apatb_leds_top/LENGTH_in_V_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_col_group [add_wave_group col(wire) -into $tbcoutputgroup]
add_wave /apatb_leds_top/col_V -into $tb_col_group -radix hex
set tb_row_group [add_wave_group row(wire) -into $tbcoutputgroup]
add_wave /apatb_leds_top/row_V -into $tb_row_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_in_group [add_wave_group in(fifo) -into $tbcinputgroup]
add_wave /apatb_leds_top/in_V_V_read -into $tb_in_group -color #ffff00 -radix hex
add_wave /apatb_leds_top/in_V_V_empty_n -into $tb_in_group -color #ffff00 -radix hex
add_wave /apatb_leds_top/in_V_V_dout -into $tb_in_group -radix hex
save_wave_config leds.wcfg
run all
quit

