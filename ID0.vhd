 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity InstructionDecoderStage1 is
   port
   (
      opcode 			: in std_logic_vector(23 downto 0);
		
		a_src				: out std_logic_vector(1 downto 0);
		b_src				: out std_logic_vector(1 downto 0)
   );
end entity InstructionDecoderStage1;
 
architecture Behavioral of InstructionDecoderStage1 is
begin
	process(opcode)
	begin
		case opcode(5 downto 0) is
		when "001011" => --0B CPB
			a_src <= "01";
			b_src <= opcode(9 downto 8);
		when "001100" => --0C CPC
			a_src <= "10";
			b_src <= opcode(9 downto 8);	
		when "001101" => --0D CPD
			a_src <= "11";
			b_src <= opcode(9 downto 8);	
			
		when "010111" => --17 MVA
			a_src <= opcode(9 downto 8);
			b_src <= "00";		
		when "011000" => --18 MVB
			a_src <= opcode(9 downto 8);
			b_src <= "00";		
		when "011001" => --19 MVC
			a_src <= opcode(9 downto 8);
			b_src <= "00";		
		when "011010" => --1A MVD
			a_src <= opcode(9 downto 8);
			b_src <= "00";		
		when "011011" => --1B MVS
			a_src <= opcode(9 downto 8);
			b_src <= "00";			
		
		when "011110" => --1E NOT
			a_src <= opcode(9 downto 8);
			b_src <= "00";		
			
		when "101000" => --28 STB
			a_src <= "01";	
			b_src <= opcode(9 downto 8);
		when "101001" => --29 STC
			a_src <= "10";	
			b_src <= opcode(9 downto 8);
		when "101010" => --2A STD
			a_src <= "11";	
			b_src <= opcode(9 downto 8);
			
		when others =>
			a_src <= "00";
			b_src <= opcode(9 downto 8);
		end case;	
	end process;

end architecture Behavioral;