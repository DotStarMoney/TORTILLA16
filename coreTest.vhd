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
-- CREATED		"Wed Dec 10 22:48:33 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY coreTest IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC
	);
END coreTest;

ARCHITECTURE bdf_type OF coreTest IS 

COMPONENT core
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 thread : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_counter1
	PORT(clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : core
PORT MAP(clk => clk,
		 rst => rst,
		 thread => SYNTHESIZED_WIRE_0);


b2v_inst1 : lpm_counter1
PORT MAP(clock => clk,
		 q => SYNTHESIZED_WIRE_0);


END bdf_type;