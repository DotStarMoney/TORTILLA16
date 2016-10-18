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
-- CREATED		"Mon Dec 08 20:49:05 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY shiftBlock IS 
	PORT
	(
		shiftDirection :  IN  STD_LOGIC;
		shiftData :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		shiftDistance :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		shiftMode :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		carryOut :  OUT  STD_LOGIC;
		shiftOut :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END shiftBlock;

ARCHITECTURE bdf_type OF shiftBlock IS 

COMPONENT lpm_clshift1
	PORT(direction : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 overflow : OUT STD_LOGIC;
		 underflow : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux1
	PORT(data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
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

COMPONENT lpm_clshift0
	PORT(direction : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_clshift2
	PORT(data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 underflow : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;


BEGIN 



b2v_inst : lpm_clshift1
PORT MAP(direction => shiftDirection,
		 data => shiftData,
		 distance => shiftDistance,
		 overflow => SYNTHESIZED_WIRE_4,
		 underflow => SYNTHESIZED_WIRE_3,
		 result => SYNTHESIZED_WIRE_1);


b2v_inst12 : lpm_mux1
PORT MAP(data0x => SYNTHESIZED_WIRE_0,
		 data1x => SYNTHESIZED_WIRE_1,
		 data2x => SYNTHESIZED_WIRE_2,
		 sel => shiftMode,
		 result => shiftOut);


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


b2v_inst15 : lpm_mux0
PORT MAP(data1 => SYNTHESIZED_WIRE_5,
		 data0 => SYNTHESIZED_WIRE_6,
		 sel => shiftMode(0),
		 result => SYNTHESIZED_WIRE_7);


SYNTHESIZED_WIRE_8 <= shiftMode(1) OR shiftMode(0);


carryOut <= SYNTHESIZED_WIRE_7 AND SYNTHESIZED_WIRE_8;


b2v_inst2 : lpm_clshift0
PORT MAP(direction => shiftDirection,
		 data => shiftData,
		 distance => shiftDistance,
		 result => SYNTHESIZED_WIRE_0);


b2v_inst5 : lpm_clshift2
PORT MAP(data => shiftData,
		 distance => shiftDistance,
		 underflow => SYNTHESIZED_WIRE_6,
		 result => SYNTHESIZED_WIRE_2);


END bdf_type;