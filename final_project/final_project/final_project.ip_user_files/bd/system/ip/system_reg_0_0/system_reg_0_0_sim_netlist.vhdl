-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 25 17:07:25 2021
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_reg_0_0/system_reg_0_0_sim_netlist.vhdl
-- Design      : system_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_reg_0_0_reg is
  port (
    q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_reg_0_0_reg : entity is "reg";
end system_reg_0_0_reg;

architecture STRUCTURE of system_reg_0_0_reg is
  signal p_0_in : STD_LOGIC;
begin
\q[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => p_0_in
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(0),
      Q => q(0),
      R => p_0_in
    );
\q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(10),
      Q => q(10),
      R => p_0_in
    );
\q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(11),
      Q => q(11),
      R => p_0_in
    );
\q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(12),
      Q => q(12),
      R => p_0_in
    );
\q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(13),
      Q => q(13),
      R => p_0_in
    );
\q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(14),
      Q => q(14),
      R => p_0_in
    );
\q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(15),
      Q => q(15),
      R => p_0_in
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(1),
      Q => q(1),
      R => p_0_in
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(2),
      Q => q(2),
      R => p_0_in
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(3),
      Q => q(3),
      R => p_0_in
    );
\q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(4),
      Q => q(4),
      R => p_0_in
    );
\q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(5),
      Q => q(5),
      R => p_0_in
    );
\q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(6),
      Q => q(6),
      R => p_0_in
    );
\q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(7),
      Q => q(7),
      R => p_0_in
    );
\q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(8),
      Q => q(8),
      R => p_0_in
    );
\q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => d(9),
      Q => q(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_reg_0_0 : entity is "system_reg_0_0,reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_reg_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_reg_0_0 : entity is "reg,Vivado 2017.2";
end system_reg_0_0;

architecture STRUCTURE of system_reg_0_0 is
begin
U0: entity work.system_reg_0_0_reg
     port map (
      clk => clk,
      d(15 downto 0) => d(15 downto 0),
      en => en,
      q(15 downto 0) => q(15 downto 0),
      rst => rst
    );
end STRUCTURE;
