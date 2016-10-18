 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity InstructionDecoderStage2 is
   port
   (
      opcode 			: in std_logic_vector(23 downto 0);
		clk            : in std_logic;
		
		mask_z   		: out std_logic;
		mask_c   		: out std_logic;
		mask_s   		: out std_logic;
		addr_src 		: out std_logic_vector(1 downto 0);
		mem_mode			: out std_logic;
		rw					: out std_logic;
		sel      		: out std_logic_vector(2 downto 0);
		modePC			: out std_logic_vector(1 downto 0);
		modeSP			: out std_logic_vector(1 downto 0);
		premem			: out std_logic;
		memlo 			: out std_logic;
		ind   			: out std_logic;
		shiftmode		: out std_logic_vector(1 downto 0);
		shiftdirection : out std_logic;
		shift_src		: out std_logic;
		a_src				: out std_logic_vector(1 downto 0);
		sub_add			: out std_logic;
		op_signed      : out std_logic;
		b_src				: out std_logic_vector(1 downto 0);
		mode				: out std_logic_vector(1 downto 0);
		bypass			: out std_logic;
		cs					: out std_logic;
		rw_long			: out std_logic;
		ow_status      : out std_logic;
		bypass_add		: out std_logic;
		bittest_bit		: out std_logic_vector(2 downto 0);
		bittest_val		: out std_logic;
		stack_page		: out std_logic;
		offset_en		: out std_logic;
		offset_src		: out std_logic;
		
		opcode_out     : out std_logic_vector(23 downto 0)
   );
end entity InstructionDecoderStage2;
 
architecture Behavioral of InstructionDecoderStage2 is

	component idrom
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q			: OUT STD_LOGIC_VECTOR (40 DOWNTO 0)
	);
	END component idrom;
	
	signal opcode_hold : std_logic_vector(23 downto 0);
	signal dat : std_logic_vector(40 downto 0);

	begin
		
		process(clk)
			begin
				if rising_edge(clk) then
					opcode_hold <= opcode;
				end if;
		end process;
		
		opcode_out <= opcode_hold;
		
		idrom0 : idrom port map(address => opcode(7 downto 0),
										clock => clk,
										q => dat);
		
		
		mask_z   		<= dat(40);
		mask_c   		<= dat(39);
		mask_s   		<= dat(38);
		addr_src 		<= dat(37 downto 36);
		mem_mode			<= dat(35);
		rw					<= dat(34);
		sel      		<= dat(33 downto 31);
		modePC			<= dat(30 downto 29);
		modeSP			<= dat(28 downto 27);
		premem			<= dat(26);
		memlo 			<= dat(25);
		ind   			<= dat(24);
		shiftmode		<= dat(23 downto 22);
		shiftdirection <= dat(21);
		shift_src		<= dat(20);
		a_src				<= dat(19 downto 18);
		sub_add			<= dat(17);
		op_signed      <= dat(16);
		b_src				<= dat(15 downto 14);
		mode				<= dat(13 downto 12);
		bypass			<= dat(11);
		cs					<= dat(10);
		rw_long			<= dat(9);
		ow_status      <= dat(8);
		bypass_add		<= dat(7);
		bittest_bit		<= dat(6 downto 4);
		bittest_val		<= dat(3);
		stack_page		<= dat(2);
		offset_en		<= dat(1);
		offset_src		<= dat(0);
		
end architecture Behavioral;