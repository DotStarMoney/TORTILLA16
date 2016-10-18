 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity MULTI_GND is
	generic(
		BIT_WIDTH : natural := 8
	);
   port
   (
      q : out std_logic_vector(BIT_WIDTH-1 downto 0)
   );
end entity MULTI_GND;
 
architecture Behavioral of MULTI_GND is
begin
      q <= (others => '0');
end architecture Behavioral;