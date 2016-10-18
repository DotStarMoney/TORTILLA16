-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Full Version"
-- CREATED		"Wed Dec 10 12:35:05 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ALU IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		ALUCtrl :  IN  STD_LOGIC_VECTOR(29 DOWNTO 0);
		ALUOut :  OUT  STD_LOGIC_VECTOR(18 DOWNTO 0)
	);
END ALU;

ARCHITECTURE bdf_type OF ALU IS 

COMPONENT pipeline
	PORT(addSub : IN STD_LOGIC;
		 signed : IN STD_LOGIC;
		 carryIn : IN STD_LOGIC;
		 A_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Carry : OUT STD_LOGIC;
		 Result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT d_ff_vhdl
GENERIC (BIT_WIDTH : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 ce : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shiftblock
	PORT(shiftDirection : IN STD_LOGIC;
		 shiftData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 shiftDistance : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 shiftMode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 carryOut : OUT STD_LOGIC;
		 shiftOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bitwiseblock
GENERIC (BIT_WIDTH : INTEGER
			);
	PORT(bypass : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 zero : OUT STD_LOGIC;
		 o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux7
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux0
	PORT(data1 : IN STD_LOGIC;
		 data0 : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	carry :  STD_LOGIC;
SIGNAL	res :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	zero :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(18 DOWNTO 0);

BEGIN 
SYNTHESIZED_WIRE_1 <= '1';

GDFX_TEMP_SIGNAL_0 <= (ALUCtrl(24 DOWNTO 17) & res(7 DOWNTO 0) & zero & carry & res(7));


b2v_inst : pipeline
PORT MAP(addSub => ALUCtrl(14),
		 signed => ALUCtrl(15),
		 carryIn => ALUCtrl(16),
		 A_in => SYNTHESIZED_WIRE_7,
		 B_in => ALUCtrl(24 DOWNTO 17),
		 Carry => SYNTHESIZED_WIRE_6,
		 Result => SYNTHESIZED_WIRE_3);


b2v_inst2 : d_ff_vhdl
GENERIC MAP(BIT_WIDTH => 19
			)
PORT MAP(clk => clk,
		 rst => rst,
		 ce => SYNTHESIZED_WIRE_1,
		 d => GDFX_TEMP_SIGNAL_0,
		 q => ALUOut);



b2v_inst4 : shiftblock
PORT MAP(shiftDirection => ALUCtrl(2),
		 shiftData => ALUCtrl(13 DOWNTO 6),
		 shiftDistance => ALUCtrl(5 DOWNTO 3),
		 shiftMode => ALUCtrl(1 DOWNTO 0),
		 carryOut => SYNTHESIZED_WIRE_5,
		 shiftOut => SYNTHESIZED_WIRE_7);


b2v_inst5 : bitwiseblock
GENERIC MAP(BIT_WIDTH => 8
			)
PORT MAP(bypass => ALUCtrl(27),
		 a => SYNTHESIZED_WIRE_2,
		 b => ALUCtrl(24 DOWNTO 17),
		 mode => ALUCtrl(26 DOWNTO 25),
		 zero => zero,
		 o => res);


b2v_inst6 : lpm_mux7
PORT MAP(sel => ALUCtrl(29),
		 data0x => SYNTHESIZED_WIRE_3,
		 data1x => SYNTHESIZED_WIRE_7,
		 result => SYNTHESIZED_WIRE_2);


b2v_inst7 : lpm_mux0
PORT MAP(data1 => SYNTHESIZED_WIRE_5,
		 data0 => SYNTHESIZED_WIRE_6,
		 sel => ALUCtrl(28),
		 result => carry);


END bdf_type;