 
library IEEE;
use ieee.std_logic_1164.all;        
use ieee.numeric_std.all;

entity Z_ABS is
	generic(
		BIT_WIDTH : natural := 8
	);
   port
   (
      data   : in std_logic_vector(BIT_WIDTH-1 downto 0);
      result : out std_logic_vector(BIT_WIDTH-1 downto 0)
   );
end entity Z_ABS;
 
architecture Behavioral of Z_ABS is
begin
   
	process(data) is
	begin
		result <= std_logic_vector(abs(signed(data)));
	end process;
	
end architecture Behavioral;