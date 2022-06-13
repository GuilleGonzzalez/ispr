-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 25 17:05:43 2021
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_fir_0_0/system_fir_0_0_stub.vhdl
-- Design      : system_fir_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_fir_0_0 is
  Port ( 
    y_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end system_fir_0_0;

architecture stub of system_fir_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "y_ap_vld,ap_clk,ap_rst,y[15:0],x[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fir,Vivado 2017.2";
begin
end;
