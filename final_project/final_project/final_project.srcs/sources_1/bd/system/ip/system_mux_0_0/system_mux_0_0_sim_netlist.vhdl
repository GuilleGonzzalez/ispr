-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed May 25 17:46:47 2022
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_mux_0_0/system_mux_0_0_sim_netlist.vhdl
-- Design      : system_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_mux_0_0_mux is
  port (
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ctl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    x9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x4 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_mux_0_0_mux : entity is "mux";
end system_mux_0_0_mux;

architecture STRUCTURE of system_mux_0_0_mux is
  signal \y_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \y_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \y_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \y_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \y_reg[9]_i_4_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \y_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \y_reg[9]\ : label is "LD";
begin
\y_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[0]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(0)
    );
\y_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[0]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[0]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[0]_i_4_n_0\,
      O => \y_reg[0]_i_1_n_0\
    );
\y_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(0),
      I3 => ctl(0),
      I4 => x8(0),
      O => \y_reg[0]_i_2_n_0\
    );
\y_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(0),
      I1 => x6(0),
      I2 => ctl(1),
      I3 => x5(0),
      I4 => ctl(0),
      I5 => x4(0),
      O => \y_reg[0]_i_3_n_0\
    );
\y_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(0),
      I1 => x2(0),
      I2 => ctl(1),
      I3 => x1(0),
      I4 => ctl(0),
      I5 => x0(0),
      O => \y_reg[0]_i_4_n_0\
    );
\y_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[10]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(10)
    );
\y_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[10]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[10]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[10]_i_4_n_0\,
      O => \y_reg[10]_i_1_n_0\
    );
\y_reg[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(10),
      I3 => ctl(0),
      I4 => x8(10),
      O => \y_reg[10]_i_2_n_0\
    );
\y_reg[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(10),
      I1 => x6(10),
      I2 => ctl(1),
      I3 => x5(10),
      I4 => ctl(0),
      I5 => x4(10),
      O => \y_reg[10]_i_3_n_0\
    );
\y_reg[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(10),
      I1 => x2(10),
      I2 => ctl(1),
      I3 => x1(10),
      I4 => ctl(0),
      I5 => x0(10),
      O => \y_reg[10]_i_4_n_0\
    );
\y_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[11]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(11)
    );
\y_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[11]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[11]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[11]_i_4_n_0\,
      O => \y_reg[11]_i_1_n_0\
    );
\y_reg[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(11),
      I3 => ctl(0),
      I4 => x8(11),
      O => \y_reg[11]_i_2_n_0\
    );
\y_reg[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(11),
      I1 => x6(11),
      I2 => ctl(1),
      I3 => x5(11),
      I4 => ctl(0),
      I5 => x4(11),
      O => \y_reg[11]_i_3_n_0\
    );
\y_reg[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(11),
      I1 => x2(11),
      I2 => ctl(1),
      I3 => x1(11),
      I4 => ctl(0),
      I5 => x0(11),
      O => \y_reg[11]_i_4_n_0\
    );
\y_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[12]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(12)
    );
\y_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[12]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[12]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[12]_i_4_n_0\,
      O => \y_reg[12]_i_1_n_0\
    );
\y_reg[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(12),
      I3 => ctl(0),
      I4 => x8(12),
      O => \y_reg[12]_i_2_n_0\
    );
\y_reg[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(12),
      I1 => x6(12),
      I2 => ctl(1),
      I3 => x5(12),
      I4 => ctl(0),
      I5 => x4(12),
      O => \y_reg[12]_i_3_n_0\
    );
\y_reg[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(12),
      I1 => x2(12),
      I2 => ctl(1),
      I3 => x1(12),
      I4 => ctl(0),
      I5 => x0(12),
      O => \y_reg[12]_i_4_n_0\
    );
\y_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[13]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(13)
    );
\y_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[13]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[13]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[13]_i_4_n_0\,
      O => \y_reg[13]_i_1_n_0\
    );
\y_reg[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(13),
      I3 => ctl(0),
      I4 => x8(13),
      O => \y_reg[13]_i_2_n_0\
    );
\y_reg[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(13),
      I1 => x6(13),
      I2 => ctl(1),
      I3 => x5(13),
      I4 => ctl(0),
      I5 => x4(13),
      O => \y_reg[13]_i_3_n_0\
    );
\y_reg[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(13),
      I1 => x2(13),
      I2 => ctl(1),
      I3 => x1(13),
      I4 => ctl(0),
      I5 => x0(13),
      O => \y_reg[13]_i_4_n_0\
    );
\y_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[14]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(14)
    );
\y_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[14]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[14]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[14]_i_4_n_0\,
      O => \y_reg[14]_i_1_n_0\
    );
\y_reg[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(14),
      I3 => ctl(0),
      I4 => x8(14),
      O => \y_reg[14]_i_2_n_0\
    );
\y_reg[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(14),
      I1 => x6(14),
      I2 => ctl(1),
      I3 => x5(14),
      I4 => ctl(0),
      I5 => x4(14),
      O => \y_reg[14]_i_3_n_0\
    );
\y_reg[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(14),
      I1 => x2(14),
      I2 => ctl(1),
      I3 => x1(14),
      I4 => ctl(0),
      I5 => x0(14),
      O => \y_reg[14]_i_4_n_0\
    );
\y_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[15]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(15)
    );
\y_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[15]_i_3_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[15]_i_4_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[15]_i_5_n_0\,
      O => \y_reg[15]_i_1_n_0\
    );
\y_reg[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => ctl(3),
      I1 => ctl(2),
      I2 => ctl(1),
      O => \y_reg[15]_i_2_n_0\
    );
\y_reg[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(15),
      I3 => ctl(0),
      I4 => x8(15),
      O => \y_reg[15]_i_3_n_0\
    );
\y_reg[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(15),
      I1 => x6(15),
      I2 => ctl(1),
      I3 => x5(15),
      I4 => ctl(0),
      I5 => x4(15),
      O => \y_reg[15]_i_4_n_0\
    );
\y_reg[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(15),
      I1 => x2(15),
      I2 => ctl(1),
      I3 => x1(15),
      I4 => ctl(0),
      I5 => x0(15),
      O => \y_reg[15]_i_5_n_0\
    );
\y_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[1]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(1)
    );
\y_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[1]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[1]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[1]_i_4_n_0\,
      O => \y_reg[1]_i_1_n_0\
    );
\y_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(1),
      I3 => ctl(0),
      I4 => x8(1),
      O => \y_reg[1]_i_2_n_0\
    );
\y_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(1),
      I1 => x6(1),
      I2 => ctl(1),
      I3 => x5(1),
      I4 => ctl(0),
      I5 => x4(1),
      O => \y_reg[1]_i_3_n_0\
    );
\y_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(1),
      I1 => x2(1),
      I2 => ctl(1),
      I3 => x1(1),
      I4 => ctl(0),
      I5 => x0(1),
      O => \y_reg[1]_i_4_n_0\
    );
\y_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[2]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(2)
    );
\y_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[2]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[2]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[2]_i_4_n_0\,
      O => \y_reg[2]_i_1_n_0\
    );
\y_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(2),
      I3 => ctl(0),
      I4 => x8(2),
      O => \y_reg[2]_i_2_n_0\
    );
\y_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(2),
      I1 => x6(2),
      I2 => ctl(1),
      I3 => x5(2),
      I4 => ctl(0),
      I5 => x4(2),
      O => \y_reg[2]_i_3_n_0\
    );
\y_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(2),
      I1 => x2(2),
      I2 => ctl(1),
      I3 => x1(2),
      I4 => ctl(0),
      I5 => x0(2),
      O => \y_reg[2]_i_4_n_0\
    );
\y_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[3]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(3)
    );
\y_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[3]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[3]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[3]_i_4_n_0\,
      O => \y_reg[3]_i_1_n_0\
    );
\y_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(3),
      I3 => ctl(0),
      I4 => x8(3),
      O => \y_reg[3]_i_2_n_0\
    );
\y_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(3),
      I1 => x6(3),
      I2 => ctl(1),
      I3 => x5(3),
      I4 => ctl(0),
      I5 => x4(3),
      O => \y_reg[3]_i_3_n_0\
    );
\y_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(3),
      I1 => x2(3),
      I2 => ctl(1),
      I3 => x1(3),
      I4 => ctl(0),
      I5 => x0(3),
      O => \y_reg[3]_i_4_n_0\
    );
\y_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[4]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(4)
    );
\y_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[4]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[4]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[4]_i_4_n_0\,
      O => \y_reg[4]_i_1_n_0\
    );
\y_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(4),
      I3 => ctl(0),
      I4 => x8(4),
      O => \y_reg[4]_i_2_n_0\
    );
\y_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(4),
      I1 => x6(4),
      I2 => ctl(1),
      I3 => x5(4),
      I4 => ctl(0),
      I5 => x4(4),
      O => \y_reg[4]_i_3_n_0\
    );
\y_reg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(4),
      I1 => x2(4),
      I2 => ctl(1),
      I3 => x1(4),
      I4 => ctl(0),
      I5 => x0(4),
      O => \y_reg[4]_i_4_n_0\
    );
\y_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[5]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(5)
    );
\y_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[5]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[5]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[5]_i_4_n_0\,
      O => \y_reg[5]_i_1_n_0\
    );
\y_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(5),
      I3 => ctl(0),
      I4 => x8(5),
      O => \y_reg[5]_i_2_n_0\
    );
\y_reg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(5),
      I1 => x6(5),
      I2 => ctl(1),
      I3 => x5(5),
      I4 => ctl(0),
      I5 => x4(5),
      O => \y_reg[5]_i_3_n_0\
    );
\y_reg[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(5),
      I1 => x2(5),
      I2 => ctl(1),
      I3 => x1(5),
      I4 => ctl(0),
      I5 => x0(5),
      O => \y_reg[5]_i_4_n_0\
    );
\y_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[6]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(6)
    );
\y_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[6]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[6]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[6]_i_4_n_0\,
      O => \y_reg[6]_i_1_n_0\
    );
\y_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(6),
      I3 => ctl(0),
      I4 => x8(6),
      O => \y_reg[6]_i_2_n_0\
    );
\y_reg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(6),
      I1 => x6(6),
      I2 => ctl(1),
      I3 => x5(6),
      I4 => ctl(0),
      I5 => x4(6),
      O => \y_reg[6]_i_3_n_0\
    );
\y_reg[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(6),
      I1 => x2(6),
      I2 => ctl(1),
      I3 => x1(6),
      I4 => ctl(0),
      I5 => x0(6),
      O => \y_reg[6]_i_4_n_0\
    );
\y_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[7]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(7)
    );
\y_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[7]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[7]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[7]_i_4_n_0\,
      O => \y_reg[7]_i_1_n_0\
    );
\y_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(7),
      I3 => ctl(0),
      I4 => x8(7),
      O => \y_reg[7]_i_2_n_0\
    );
\y_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(7),
      I1 => x6(7),
      I2 => ctl(1),
      I3 => x5(7),
      I4 => ctl(0),
      I5 => x4(7),
      O => \y_reg[7]_i_3_n_0\
    );
\y_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(7),
      I1 => x2(7),
      I2 => ctl(1),
      I3 => x1(7),
      I4 => ctl(0),
      I5 => x0(7),
      O => \y_reg[7]_i_4_n_0\
    );
\y_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[8]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(8)
    );
\y_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[8]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[8]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[8]_i_4_n_0\,
      O => \y_reg[8]_i_1_n_0\
    );
\y_reg[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(8),
      I3 => ctl(0),
      I4 => x8(8),
      O => \y_reg[8]_i_2_n_0\
    );
\y_reg[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(8),
      I1 => x6(8),
      I2 => ctl(1),
      I3 => x5(8),
      I4 => ctl(0),
      I5 => x4(8),
      O => \y_reg[8]_i_3_n_0\
    );
\y_reg[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(8),
      I1 => x2(8),
      I2 => ctl(1),
      I3 => x1(8),
      I4 => ctl(0),
      I5 => x0(8),
      O => \y_reg[8]_i_4_n_0\
    );
\y_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \y_reg[9]_i_1_n_0\,
      G => \y_reg[15]_i_2_n_0\,
      GE => '1',
      Q => y(9)
    );
\y_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \y_reg[9]_i_2_n_0\,
      I1 => ctl(3),
      I2 => \y_reg[9]_i_3_n_0\,
      I3 => ctl(2),
      I4 => \y_reg[9]_i_4_n_0\,
      O => \y_reg[9]_i_1_n_0\
    );
\y_reg[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => ctl(1),
      I1 => ctl(2),
      I2 => x9(9),
      I3 => ctl(0),
      I4 => x8(9),
      O => \y_reg[9]_i_2_n_0\
    );
\y_reg[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x7(9),
      I1 => x6(9),
      I2 => ctl(1),
      I3 => x5(9),
      I4 => ctl(0),
      I5 => x4(9),
      O => \y_reg[9]_i_3_n_0\
    );
\y_reg[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => x3(9),
      I1 => x2(9),
      I2 => ctl(1),
      I3 => x1(9),
      I4 => ctl(0),
      I5 => x0(9),
      O => \y_reg[9]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_mux_0_0 is
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
    ctl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    y : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_mux_0_0 : entity is "system_mux_0_0,mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_mux_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_mux_0_0 : entity is "mux,Vivado 2017.2";
end system_mux_0_0;

architecture STRUCTURE of system_mux_0_0 is
begin
U0: entity work.system_mux_0_0_mux
     port map (
      ctl(3 downto 0) => ctl(3 downto 0),
      x0(15 downto 0) => x0(15 downto 0),
      x1(15 downto 0) => x1(15 downto 0),
      x2(15 downto 0) => x2(15 downto 0),
      x3(15 downto 0) => x3(15 downto 0),
      x4(15 downto 0) => x4(15 downto 0),
      x5(15 downto 0) => x5(15 downto 0),
      x6(15 downto 0) => x6(15 downto 0),
      x7(15 downto 0) => x7(15 downto 0),
      x8(15 downto 0) => x8(15 downto 0),
      x9(15 downto 0) => x9(15 downto 0),
      y(15 downto 0) => y(15 downto 0)
    );
end STRUCTURE;
