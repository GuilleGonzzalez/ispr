--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Tue May 25 17:04:32 2021
--Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system is
  port (
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    col_V : out STD_LOGIC_VECTOR ( 9 downto 0 );
    reset : in STD_LOGIC;
    row_V : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=6,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=14,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_fir_0_0 is
  port (
    y_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component system_fir_0_0;
  component system_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component system_clk_wiz_0;
  component system_rst_clk_wiz_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_rst_clk_wiz_100M_0;
  component system_fir_0_1 is
  port (
    y_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component system_fir_0_1;
  component system_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component system_c_counter_binary_0_0;
  component system_xadc_wiz_0_0 is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    m_axis_resetn : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component system_xadc_wiz_0_0;
  component system_energy_1_0 is
  port (
    y_ap_vld : out STD_LOGIC;
    x_ap_vld : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component system_energy_1_0;
  component system_energy_0_1 is
  port (
    y_ap_vld : out STD_LOGIC;
    x_ap_vld : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component system_energy_0_1;
  component system_mux_0_0 is
  port (
    x0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ctl : in STD_LOGIC_VECTOR ( 4 downto 0 );
    y : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component system_mux_0_0;
  component system_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component system_reg_0_0;
  component system_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 6 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component system_fifo_generator_0_0;
  component system_leds_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    row_V : out STD_LOGIC_VECTOR ( 6 downto 0 );
    col_V : out STD_LOGIC_VECTOR ( 9 downto 0 );
    in_V_V_dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    in_V_V_empty_n : in STD_LOGIC;
    in_V_V_read : out STD_LOGIC
  );
  end component system_leds_0_0;
  component system_leds_controller_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    out_V_V_din : out STD_LOGIC_VECTOR ( 6 downto 0 );
    out_V_V_full_n : in STD_LOGIC;
    out_V_V_write : out STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    col_V : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component system_leds_controller_0_0;
  signal Vp_Vn_1_V_N : STD_LOGIC;
  signal Vp_Vn_1_V_P : STD_LOGIC;
  signal ap_ctrl_1_done : STD_LOGIC;
  signal ap_ctrl_1_idle : STD_LOGIC;
  signal ap_ctrl_1_ready : STD_LOGIC;
  signal ap_ctrl_1_start : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_in1_1 : STD_LOGIC;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal clk_wiz_locked : STD_LOGIC;
  signal energy_0_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal energy_0_y_ap_vld : STD_LOGIC;
  signal energy_1_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal fir_0_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fir_0_y_ap_vld : STD_LOGIC;
  signal fir_1_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fir_1_y_ap_vld : STD_LOGIC;
  signal leds_0_col_V : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal leds_0_in_V_V_read : STD_LOGIC;
  signal leds_0_row_V : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal leds_controller_0_out_V_V_din : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal leds_controller_0_out_V_V_write : STD_LOGIC;
  signal mux_0_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_0_q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reset_1 : STD_LOGIC;
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_100M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal x_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_energy_1_y_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_leds_controller_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_leds_controller_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_leds_controller_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_mux_0_ctl_UNCONNECTED : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xadc_wiz_0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Vp_Vn_1_V_N <= Vp_Vn_v_n;
  Vp_Vn_1_V_P <= Vp_Vn_v_p;
  ap_ctrl_1_start <= ap_ctrl_start;
  ap_ctrl_done <= ap_ctrl_1_done;
  ap_ctrl_idle <= ap_ctrl_1_idle;
  ap_ctrl_ready <= ap_ctrl_1_ready;
  clk_in1_1 <= clk_in1;
  col_V(9 downto 0) <= leds_0_col_V(9 downto 0);
  reset_1 <= reset;
  row_V(6 downto 0) <= leds_0_row_V(6 downto 0);
c_counter_binary_0: component system_c_counter_binary_0_0
     port map (
      CLK => clk_wiz_clk_out1,
      Q(3 downto 0) => c_counter_binary_0_Q(3 downto 0)
    );
clk_wiz: component system_clk_wiz_0
     port map (
      clk_in1 => clk_in1_1,
      clk_out1 => clk_wiz_clk_out1,
      locked => clk_wiz_locked,
      reset => reset_1
    );
energy_0: component system_energy_0_1
     port map (
      ap_clk => clk_wiz_clk_out1,
      ap_rst => rst_clk_wiz_100M_peripheral_reset(0),
      x(15 downto 0) => fir_0_y(15 downto 0),
      x_ap_vld => fir_0_y_ap_vld,
      y(15 downto 0) => energy_0_y(15 downto 0),
      y_ap_vld => energy_0_y_ap_vld
    );
energy_1: component system_energy_1_0
     port map (
      ap_clk => clk_wiz_clk_out1,
      ap_rst => rst_clk_wiz_100M_peripheral_reset(0),
      x(15 downto 0) => fir_1_y(15 downto 0),
      x_ap_vld => fir_1_y_ap_vld,
      y(15 downto 0) => energy_1_y(15 downto 0),
      y_ap_vld => NLW_energy_1_y_ap_vld_UNCONNECTED
    );
fifo_generator_0: component system_fifo_generator_0_0
     port map (
      clk => clk_wiz_clk_out1,
      din(6 downto 0) => leds_controller_0_out_V_V_din(6 downto 0),
      dout(6 downto 0) => fifo_generator_0_dout(6 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_en => leds_0_in_V_V_read,
      srst => '0',
      wr_en => leds_controller_0_out_V_V_write
    );
fir_0: component system_fir_0_0
     port map (
      ap_clk => clk_wiz_clk_out1,
      ap_rst => rst_clk_wiz_100M_peripheral_reset(0),
      x(15 downto 0) => x_1(15 downto 0),
      y(15 downto 0) => fir_0_y(15 downto 0),
      y_ap_vld => fir_0_y_ap_vld
    );
fir_1: component system_fir_0_1
     port map (
      ap_clk => clk_in1_1,
      ap_rst => reset_1,
      x(15 downto 0) => x_1(15 downto 0),
      y(15 downto 0) => fir_1_y(15 downto 0),
      y_ap_vld => fir_1_y_ap_vld
    );
leds_0: component system_leds_0_0
     port map (
      ap_clk => clk_wiz_clk_out1,
      ap_done => ap_ctrl_1_done,
      ap_idle => ap_ctrl_1_idle,
      ap_ready => ap_ctrl_1_ready,
      ap_rst => rst_clk_wiz_100M_peripheral_reset(0),
      ap_start => ap_ctrl_1_start,
      col_V(9 downto 0) => leds_0_col_V(9 downto 0),
      in_V_V_dout(6 downto 0) => fifo_generator_0_dout(6 downto 0),
      in_V_V_empty_n => fifo_generator_0_empty,
      in_V_V_read => leds_0_in_V_V_read,
      row_V(6 downto 0) => leds_0_row_V(6 downto 0)
    );
leds_controller_0: component system_leds_controller_0_0
     port map (
      ap_clk => clk_wiz_clk_out1,
      ap_done => NLW_leds_controller_0_ap_done_UNCONNECTED,
      ap_idle => NLW_leds_controller_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_leds_controller_0_ap_ready_UNCONNECTED,
      ap_rst => rst_clk_wiz_100M_peripheral_reset(0),
      ap_start => '0',
      col_V(3 downto 0) => c_counter_binary_0_Q(3 downto 0),
      out_V_V_din(6 downto 0) => leds_controller_0_out_V_V_din(6 downto 0),
      out_V_V_full_n => fifo_generator_0_full,
      out_V_V_write => leds_controller_0_out_V_V_write,
      x(15 downto 0) => B"0000000000000000"
    );
mux_0: component system_mux_0_0
     port map (
      ctl(4) => NLW_mux_0_ctl_UNCONNECTED(4),
      ctl(3 downto 0) => c_counter_binary_0_Q(3 downto 0),
      x0(15 downto 0) => reg_0_q(15 downto 0),
      x1(15 downto 0) => energy_1_y(15 downto 0),
      x2(15 downto 0) => B"0000000000000000",
      x3(15 downto 0) => B"0000000000000000",
      x4(15 downto 0) => B"0000000000000000",
      x5(15 downto 0) => B"0000000000000000",
      x6(15 downto 0) => B"0000000000000000",
      x7(15 downto 0) => B"0000000000000000",
      x8(15 downto 0) => B"0000000000000000",
      x9(15 downto 0) => B"0000000000000000",
      y(15 downto 0) => mux_0_y(15 downto 0)
    );
reg_0: component system_reg_0_0
     port map (
      clk => clk_wiz_clk_out1,
      d(15 downto 0) => energy_0_y(15 downto 0),
      en => energy_0_y_ap_vld,
      q(15 downto 0) => reg_0_q(15 downto 0),
      rst => rst_clk_wiz_100M_peripheral_aresetn(0)
    );
rst_clk_wiz_100M: component system_rst_clk_wiz_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_100M_peripheral_aresetn(0),
      peripheral_reset(0) => rst_clk_wiz_100M_peripheral_reset(0),
      slowest_sync_clk => clk_wiz_clk_out1
    );
xadc_wiz_0: component system_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      m_axis_aclk => clk_wiz_clk_out1,
      m_axis_resetn => '0',
      m_axis_tdata(15 downto 0) => x_1(15 downto 0),
      m_axis_tid(4 downto 0) => NLW_xadc_wiz_0_m_axis_tid_UNCONNECTED(4 downto 0),
      m_axis_tready => '0',
      m_axis_tvalid => NLW_xadc_wiz_0_m_axis_tvalid_UNCONNECTED,
      s_axis_aclk => clk_wiz_clk_out1,
      vn_in => Vp_Vn_1_V_N,
      vp_in => Vp_Vn_1_V_P
    );
end STRUCTURE;
