#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("out_V_V_din", 7, hls_out, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("out_V_V_full_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("out_V_V_write", 1, hls_out, 0, "ap_fifo", "fifo_update", 1),
	Port_Property("x", 16, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("col_V", 4, hls_in, 2, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "leds_controller";
