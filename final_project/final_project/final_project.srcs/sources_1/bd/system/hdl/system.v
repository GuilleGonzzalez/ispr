//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Mon May  4 17:54:10 2020
//Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=1,da_clkrst_cnt=3,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (DDR_ck_n,
    reset_rtl);
  inout DDR_ck_n;
  input reset_rtl;

  wire Net;
  wire [15:0]fir_0_y;
  wire reset_rtl_1;
  wire [0:0]rst_DDR_ck_n_100M_peripheral_reset;

  assign reset_rtl_1 = reset_rtl;
  system_energy_0_0 energy_0
       (.x(fir_0_y));
  system_fir_0_1 fir_0
       (.ap_clk(DDR_ck_n),
        .ap_rst(rst_DDR_ck_n_100M_peripheral_reset),
        .ap_start(1'b0),
        .x({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .y(fir_0_y));
  system_rst_DDR_ck_n_100M_0 rst_DDR_ck_n_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_rtl_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_DDR_ck_n_100M_peripheral_reset),
        .slowest_sync_clk(DDR_ck_n));
endmodule
