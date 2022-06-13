--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Tue May 31 11:30:29 2022
--Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    clk_in1 : in STD_LOGIC;
    col_V : out STD_LOGIC_VECTOR ( 9 downto 0 );
    reset : in STD_LOGIC;
    row_V : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    clk_in1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    row_V : out STD_LOGIC_VECTOR ( 6 downto 0 );
    col_V : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component system;
begin
system_i: component system
     port map (
      clk_in1 => clk_in1,
      col_V(9 downto 0) => col_V(9 downto 0),
      reset => reset,
      row_V(6 downto 0) => row_V(6 downto 0)
    );
end STRUCTURE;
