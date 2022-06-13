-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed May 25 17:46:47 2022
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_mux_0_0/system_mux_0_0_stub.vhdl
-- Design      : system_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_mux_0_0 is
  Port ( 
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
    ctl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    y : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end system_mux_0_0;

architecture stub of system_mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "x0[15:0],x1[15:0],x2[15:0],x3[15:0],x4[15:0],x5[15:0],x6[15:0],x7[15:0],x8[15:0],x9[15:0],ctl[3:0],y[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mux,Vivado 2017.2";
begin
end;
