 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Flop16xN is
	generic(
		BIT_WIDTH : natural := 8
	);
   port
   (
      clk     : in std_logic;
      rst     : in std_logic;
      ce      : in std_logic := '1';
		
      d       : in std_logic_vector(BIT_WIDTH-1 downto 0);
		sel_in  : in std_logic_vector(3 downto 0);
		we      : in std_logic;
		
		sel_out : in std_logic_vector(3 downto 0);
      q       : out std_logic_vector(BIT_WIDTH-1 downto 0)
   );
end entity Flop16xN;
 
architecture Behavioral of Flop16xN is

	signal dat0  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat1  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat2  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat3  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat4  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat5  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat6  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat7  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat8  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat9  : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat10 : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat11 : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat12 : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat13 : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat14 : std_logic_vector(BIT_WIDTH-1 downto 0);
	signal dat15 : std_logic_vector(BIT_WIDTH-1 downto 0);

	begin

		process (clk) is

			begin
				if rising_edge(clk) then  
					if (rst='1') then   
						dat0 <= (others => '0');
						dat1 <= (others => '0');
						dat2 <= (others => '0');
						dat3 <= (others => '0');
						dat4 <= (others => '0');
						dat5 <= (others => '0');
						dat6 <= (others => '0');
						dat7 <= (others => '0');
						dat8 <= (others => '0');
						dat9 <= (others => '0');
						dat10 <= (others => '0');
						dat11 <= (others => '0');
						dat12 <= (others => '0');
						dat13 <= (others => '0');
						dat14 <= (others => '0');
						dat15 <= (others => '0');
					elsif (ce='1') then
						if (we='1') then
							case sel_in is
								when "0000" =>
									dat0 <= d;
								when "0001" =>
									dat1 <= d;
								when "0010" =>
									dat2 <= d;
								when "0011" =>
									dat3 <= d;
								when "0100" => 
									dat4 <= d;
								when "0101" =>
									dat5 <= d;
								when "0110" =>
									dat6 <= d;
								when "0111" =>
									dat7 <= d;
								when "1000" =>
									dat8 <= d;
								when "1001" =>
									dat9 <= d;
								when "1010" =>
									dat10 <= d;
								when "1011" =>
									dat11 <= d;
								when "1100" =>
									dat12 <= d;
								when "1101" =>
									dat13 <= d;
								when "1110" =>
									dat14 <= d;
								when "1111" =>
									dat15 <= d;
								when others =>
							end case;
						end if;
						case sel_out is
							when "0000" =>
								q <= dat0;
							when "0001" =>
								q <= dat1;
							when "0010" =>
								q <= dat2;
							when "0011" =>
								q <= dat3;
							when "0100" => 
								q <= dat4;
							when "0101" =>
								q <= dat5;
							when "0110" =>
								q <= dat6;
							when "0111" =>
								q <= dat7;
							when "1000" =>
								q <= dat8;
							when "1001" =>
								q <= dat9;
							when "1010" =>
								q <= dat10;
							when "1011" =>
								q <= dat11;
							when "1100" =>
								q <= dat12;
							when "1101" =>
								q <= dat13;
							when "1110" =>
								q <= dat14;
							when "1111" =>
								q <= dat15;
							when others =>
						end case;
					end if;
				end if;
		end process;
end architecture Behavioral;