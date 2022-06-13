-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu May 27 16:07:27 2021
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_leds_0_1/system_leds_0_1_stub.vhdl
-- Design      : system_leds_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_leds_0_1 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    row_V : out STD_LOGIC_VECTOR ( 6 downto 0 );
    col_V : out STD_LOGIC_VECTOR ( 9 downto 0 );
    in_V_V_dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    in_V_V_empty_n : in STD_LOGIC;
    in_V_V_read : out STD_LOGIC
  );

end system_leds_0_1;

architecture stub of system_leds_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,row_V[6:0],col_V[9:0],in_V_V_dout[6:0],in_V_V_empty_n,in_V_V_read";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "leds,Vivado 2017.2";
begin
end;
