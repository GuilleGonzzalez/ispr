-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:leds_controller:1.0
-- IP Revision: 2105271555

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_leds_controller_0_1 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    out_V_V_din : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    out_V_V_full_n : IN STD_LOGIC;
    out_V_V_write : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    col_V : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END system_leds_controller_0_1;

ARCHITECTURE system_leds_controller_0_1_arch OF system_leds_controller_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_leds_controller_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT leds_controller IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      out_V_V_din : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      out_V_V_full_n : IN STD_LOGIC;
      out_V_V_write : OUT STD_LOGIC;
      x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      col_V : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT leds_controller;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_leds_controller_0_1_arch: ARCHITECTURE IS "leds_controller,Vivado 2017.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_leds_controller_0_1_arch : ARCHITECTURE IS "system_leds_controller_0_1,leds_controller,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_leds_controller_0_1_arch: ARCHITECTURE IS "system_leds_controller_0_1,leds_controller,{x_ipProduct=Vivado 2017.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=leds_controller,x_ipVersion=1.0,x_ipCoreRevision=2105271555,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 out_V_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 out_V_V FULL_N";
  ATTRIBUTE X_INTERFACE_INFO OF out_V_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 out_V_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF x: SIGNAL IS "xilinx.com:signal:data:1.0 x DATA";
  ATTRIBUTE X_INTERFACE_INFO OF col_V: SIGNAL IS "xilinx.com:signal:data:1.0 col_V DATA";
BEGIN
  U0 : leds_controller
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      out_V_V_din => out_V_V_din,
      out_V_V_full_n => out_V_V_full_n,
      out_V_V_write => out_V_V_write,
      x => x,
      col_V => col_V
    );
END system_leds_controller_0_1_arch;
