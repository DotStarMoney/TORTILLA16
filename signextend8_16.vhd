 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity signextend8_16 is
   port
   (
      data_in  : in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(15 downto 0)
   );
end entity signextend8_16;
 
architecture Behavioral of signextend8_16 is
begin
	data_out(7 downto 0) <= data_in(7 downto 0);
	data_out(8) <= data_in(7);
	data_out(9) <= data_in(7);
	data_out(10) <= data_in(7);
	data_out(11) <= data_in(7);
	data_out(12) <= data_in(7);
	data_out(13) <= data_in(7);
	data_out(14) <= data_in(7);
	data_out(15) <= data_in(7);
end architecture Behavioral;