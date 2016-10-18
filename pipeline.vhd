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
-- CREATED		"Tue Dec 09 00:10:55 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY pipeline IS 
	PORT
	(
		signed :  IN  STD_LOGIC;
		addSub :  IN  STD_LOGIC;
		carryIn :  IN  STD_LOGIC;
		A_in :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B_in :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Carry :  OUT  STD_LOGIC;
		Result :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END pipeline;

ARCHITECTURE bdf_type OF pipeline IS 

COMPONENT lpm_add_sub1
	PORT(cin : IN STD_LOGIC;
		 add_sub : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux0
	PORT(data1 : IN STD_LOGIC;
		 data0 : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT addercomputecarry
	PORT(addsub : IN STD_LOGIC;
		 ahi : IN STD_LOGIC;
		 bhi : IN STD_LOGIC;
		 outhi : IN STD_LOGIC;
		 sgnd : IN STD_LOGIC;
		 carry : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	A_AdderIn :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	B_AdderIn :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	O :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_1 <= '0';
SYNTHESIZED_WIRE_3 <= '0';



b2v_inst : lpm_add_sub1
PORT MAP(cin => SYNTHESIZED_WIRE_0,
		 add_sub => addSub,
		 dataa => A_AdderIn,
		 datab => B_AdderIn,
		 result => O);


b2v_inst1 : lpm_mux0
PORT MAP(data1 => A_AdderIn(7),
		 data0 => SYNTHESIZED_WIRE_1,
		 sel => signed,
		 result => A_AdderIn(8));


b2v_inst11 : addercomputecarry
PORT MAP(addsub => addSub,
		 ahi => A_AdderIn(7),
		 bhi => B_AdderIn(7),
		 outhi => O(8),
		 sgnd => signed,
		 carry => Carry);


SYNTHESIZED_WIRE_0 <= carryIn XOR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_2 <= NOT(addSub);




b2v_inst3 : lpm_mux0
PORT MAP(data1 => B_AdderIn(7),
		 data0 => SYNTHESIZED_WIRE_3,
		 sel => signed,
		 result => B_AdderIn(8));


Result(7 DOWNTO 0) <= O(7 DOWNTO 0);

A_AdderIn(7 DOWNTO 0) <= A_in;
B_AdderIn(7 DOWNTO 0) <= B_in;
END bdf_type;