-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu May 27 16:07:33 2021
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_leds_controller_0_1 -prefix
--               system_leds_controller_0_1_ system_leds_controller_0_0_stub.vhdl
-- Design      : system_leds_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_leds_controller_0_1 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    out_V_V_din : out STD_LOGIC_VECTOR ( 6 downto 0 );
    out_V_V_full_n : in STD_LOGIC;
    out_V_V_write : out STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    col_V : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end system_leds_controller_0_1;

architecture stub of system_leds_controller_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,out_V_V_din[6:0],out_V_V_full_n,out_V_V_write,x[15:0],col_V[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "leds_controller,Vivado 2017.2";
begin
end;
