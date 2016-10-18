 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity encode4_2 is
   port
   (
      line0   : in  std_logic;
		line1   : in  std_logic;
		line2   : in  std_logic;
		line3   : in  std_logic;
		
		lineout : out std_logic_vector(1 downto 0)
   );
end entity encode4_2;
 
architecture Behavioral of encode4_2 is
begin
	lineout(0) <= line1 or line3;
	lineout(1) <= line2 or line3;
end architecture Behavioral;