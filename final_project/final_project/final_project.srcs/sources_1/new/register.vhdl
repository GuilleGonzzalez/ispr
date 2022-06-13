----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2022 16:35:59
-- Design Name: 
-- Module Name: register - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register is
    Generic ( WIDTH : integer := 16
    );
    Port ( clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           d : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           rst : in STD_LOGIC;
           en : in STD_LOGIC);
end register;

architecture Behavioral of register is

begin

process (clk)
begin
   if (clk'event and clk = '1'>) then
      if rst = '0' then
         q <= (others => '0');
      else
        if en = '1' then
            q <= d;
        end if;
      end if;
   end if;
end process;


end Behavioral;
