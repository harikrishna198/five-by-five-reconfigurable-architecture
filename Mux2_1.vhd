----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2023 02:35:02 PM
-- Design Name: 
-- Module Name: Mux2_1 - Behavioral
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

entity Mux2_1 is
  Port (x1,x2: in std_logic_vector(3 downto 0);
  t: in std_logic;
  o : out std_logic_vector(3 downto 0));
end Mux2_1;

architecture Behavioral of Mux2_1 is

begin
process( x1, x2, t)
begin
case t is
when '0' => o <= x1;
when '1' => o <= x2;
when others => o <= (others => '0'); 
end case;
end process;
end Behavioral;