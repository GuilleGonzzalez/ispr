-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 25 17:07:24 2021
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_energy_0_1/system_energy_0_1_sim_netlist.vhdl
-- Design      : system_energy_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_energy_0_1_energy_mul_mul_16bkb_DSP48_0 is
  port (
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x_preg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x_ap_vld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_energy_0_1_energy_mul_mul_16bkb_DSP48_0 : entity is "energy_mul_mul_16bkb_DSP48_0";
end system_energy_0_1_energy_mul_mul_16bkb_DSP48_0;

architecture STRUCTURE of system_energy_0_1_energy_mul_mul_16bkb_DSP48_0 is
  signal a_cvt : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of a_cvt : signal is "true";
  signal b_cvt : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of b_cvt : signal is "true";
  signal in00_n_74 : STD_LOGIC;
  signal in00_n_75 : STD_LOGIC;
  signal in00_n_76 : STD_LOGIC;
  signal in00_n_77 : STD_LOGIC;
  signal in00_n_78 : STD_LOGIC;
  signal in00_n_79 : STD_LOGIC;
  signal in00_n_80 : STD_LOGIC;
  signal in00_n_81 : STD_LOGIC;
  signal in00_n_82 : STD_LOGIC;
  signal in00_n_83 : STD_LOGIC;
  signal in00_n_84 : STD_LOGIC;
  signal in00_n_85 : STD_LOGIC;
  signal in00_n_86 : STD_LOGIC;
  signal in00_n_87 : STD_LOGIC;
  signal in00_n_88 : STD_LOGIC;
  signal in00_n_89 : STD_LOGIC;
  signal p_cvt : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of p_cvt : signal is "true";
  signal NLW_in00_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_in00_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_in00_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_in00_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_in00_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of in00 : label is "{SYNTH-13 {cell *THIS*}}";
begin
  y(15 downto 0) <= p_cvt(15 downto 0);
a_cvt_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(15),
      I1 => x_preg(15),
      I2 => x_ap_vld,
      O => b_cvt(15)
    );
a_cvt_inferred_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(6),
      I1 => x_preg(6),
      I2 => x_ap_vld,
      O => b_cvt(6)
    );
a_cvt_inferred_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(5),
      I1 => x_preg(5),
      I2 => x_ap_vld,
      O => b_cvt(5)
    );
a_cvt_inferred_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(4),
      I1 => x_preg(4),
      I2 => x_ap_vld,
      O => b_cvt(4)
    );
a_cvt_inferred_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(3),
      I1 => x_preg(3),
      I2 => x_ap_vld,
      O => b_cvt(3)
    );
a_cvt_inferred_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(2),
      I1 => x_preg(2),
      I2 => x_ap_vld,
      O => b_cvt(2)
    );
a_cvt_inferred_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(1),
      I1 => x_preg(1),
      I2 => x_ap_vld,
      O => b_cvt(1)
    );
a_cvt_inferred_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(0),
      I1 => x_preg(0),
      I2 => x_ap_vld,
      O => b_cvt(0)
    );
a_cvt_inferred_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(14),
      I1 => x_preg(14),
      I2 => x_ap_vld,
      O => b_cvt(14)
    );
a_cvt_inferred_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(13),
      I1 => x_preg(13),
      I2 => x_ap_vld,
      O => b_cvt(13)
    );
a_cvt_inferred_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(12),
      I1 => x_preg(12),
      I2 => x_ap_vld,
      O => b_cvt(12)
    );
a_cvt_inferred_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(11),
      I1 => x_preg(11),
      I2 => x_ap_vld,
      O => b_cvt(11)
    );
a_cvt_inferred_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(10),
      I1 => x_preg(10),
      I2 => x_ap_vld,
      O => b_cvt(10)
    );
a_cvt_inferred_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(9),
      I1 => x_preg(9),
      I2 => x_ap_vld,
      O => b_cvt(9)
    );
a_cvt_inferred_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(8),
      I1 => x_preg(8),
      I2 => x_ap_vld,
      O => b_cvt(8)
    );
a_cvt_inferred_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => x(7),
      I1 => x_preg(7),
      I2 => x_ap_vld,
      O => b_cvt(7)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(15),
      O => a_cvt(15)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(14),
      O => a_cvt(14)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(5),
      O => a_cvt(5)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(4),
      O => a_cvt(4)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(3),
      O => a_cvt(3)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(2),
      O => a_cvt(2)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(1),
      O => a_cvt(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(0),
      O => a_cvt(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(13),
      O => a_cvt(13)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(12),
      O => a_cvt(12)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(11),
      O => a_cvt(11)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(10),
      O => a_cvt(10)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(9),
      O => a_cvt(9)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(8),
      O => a_cvt(8)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(7),
      O => a_cvt(7)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => b_cvt(6),
      O => a_cvt(6)
    );
in00: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => a_cvt(15),
      A(28) => a_cvt(15),
      A(27) => a_cvt(15),
      A(26) => a_cvt(15),
      A(25) => a_cvt(15),
      A(24) => a_cvt(15),
      A(23) => a_cvt(15),
      A(22) => a_cvt(15),
      A(21) => a_cvt(15),
      A(20) => a_cvt(15),
      A(19) => a_cvt(15),
      A(18) => a_cvt(15),
      A(17) => a_cvt(15),
      A(16) => a_cvt(15),
      A(15 downto 0) => a_cvt(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_in00_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b_cvt(15),
      B(16) => b_cvt(15),
      B(15 downto 0) => b_cvt(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_in00_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_in00_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_in00_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_in00_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_in00_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_in00_P_UNCONNECTED(47 downto 32),
      P(31) => in00_n_74,
      P(30) => in00_n_75,
      P(29) => in00_n_76,
      P(28) => in00_n_77,
      P(27) => in00_n_78,
      P(26) => in00_n_79,
      P(25) => in00_n_80,
      P(24) => in00_n_81,
      P(23) => in00_n_82,
      P(22) => in00_n_83,
      P(21) => in00_n_84,
      P(20) => in00_n_85,
      P(19) => in00_n_86,
      P(18) => in00_n_87,
      P(17) => in00_n_88,
      P(16) => in00_n_89,
      P(15 downto 0) => p_cvt(15 downto 0),
      PATTERNBDETECT => NLW_in00_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_in00_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_in00_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_in00_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_energy_0_1_energy_mul_mul_16bkb is
  port (
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x_preg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x_ap_vld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_energy_0_1_energy_mul_mul_16bkb : entity is "energy_mul_mul_16bkb";
end system_energy_0_1_energy_mul_mul_16bkb;

architecture STRUCTURE of system_energy_0_1_energy_mul_mul_16bkb is
begin
energy_mul_mul_16bkb_DSP48_0_U: entity work.system_energy_0_1_energy_mul_mul_16bkb_DSP48_0
     port map (
      x(15 downto 0) => x(15 downto 0),
      x_ap_vld => x_ap_vld,
      x_preg(15 downto 0) => x_preg(15 downto 0),
      y(15 downto 0) => y(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_energy_0_1_energy is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    y_ap_vld : out STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x_ap_vld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_energy_0_1_energy : entity is "energy";
end system_energy_0_1_energy;

architecture STRUCTURE of system_energy_0_1_energy is
  signal \^x_ap_vld\ : STD_LOGIC;
  signal x_preg : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  \^x_ap_vld\ <= x_ap_vld;
  y_ap_vld <= \^x_ap_vld\;
energy_mul_mul_16bkb_U0: entity work.system_energy_0_1_energy_mul_mul_16bkb
     port map (
      x(15 downto 0) => x(15 downto 0),
      x_ap_vld => \^x_ap_vld\,
      x_preg(15 downto 0) => x_preg(15 downto 0),
      y(15 downto 0) => y(15 downto 0)
    );
\x_preg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(0),
      Q => x_preg(0),
      R => ap_rst
    );
\x_preg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(10),
      Q => x_preg(10),
      R => ap_rst
    );
\x_preg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(11),
      Q => x_preg(11),
      R => ap_rst
    );
\x_preg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(12),
      Q => x_preg(12),
      R => ap_rst
    );
\x_preg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(13),
      Q => x_preg(13),
      R => ap_rst
    );
\x_preg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(14),
      Q => x_preg(14),
      R => ap_rst
    );
\x_preg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(15),
      Q => x_preg(15),
      R => ap_rst
    );
\x_preg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(1),
      Q => x_preg(1),
      R => ap_rst
    );
\x_preg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(2),
      Q => x_preg(2),
      R => ap_rst
    );
\x_preg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(3),
      Q => x_preg(3),
      R => ap_rst
    );
\x_preg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(4),
      Q => x_preg(4),
      R => ap_rst
    );
\x_preg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(5),
      Q => x_preg(5),
      R => ap_rst
    );
\x_preg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(6),
      Q => x_preg(6),
      R => ap_rst
    );
\x_preg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(7),
      Q => x_preg(7),
      R => ap_rst
    );
\x_preg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(8),
      Q => x_preg(8),
      R => ap_rst
    );
\x_preg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^x_ap_vld\,
      D => x(9),
      Q => x_preg(9),
      R => ap_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_energy_0_1 is
  port (
    y_ap_vld : out STD_LOGIC;
    x_ap_vld : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_energy_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_energy_0_1 : entity is "system_energy_0_1,energy,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_energy_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_energy_0_1 : entity is "energy,Vivado 2017.2";
end system_energy_0_1;

architecture STRUCTURE of system_energy_0_1 is
begin
U0: entity work.system_energy_0_1_energy
     port map (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      x(15 downto 0) => x(15 downto 0),
      x_ap_vld => x_ap_vld,
      y(15 downto 0) => y(15 downto 0),
      y_ap_vld => y_ap_vld
    );
end STRUCTURE;
