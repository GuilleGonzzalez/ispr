-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Fri May 27 17:13:12 2022
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_xlslice_0_0/system_xlslice_0_0_sim_netlist.vhdl
-- Design      : system_xlslice_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_xlslice_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_xlslice_0_0 : entity is "system_xlslice_0_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_xlslice_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_xlslice_0_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2017.2";
end system_xlslice_0_0;

architecture STRUCTURE of system_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  Dout(3 downto 0) <= \^din\(11 downto 8);
  \^din\(11 downto 8) <= Din(11 downto 8);
end STRUCTURE;
