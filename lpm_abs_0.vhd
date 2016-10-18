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
-- CREATED		"Tue Dec 09 21:20:26 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
-- use the following when compiling in Quartus II
--LIBRARY lpm;
--USE lpm.lpm_components.all; 

-- use the following when compiling in third party tools --
-- add lpm_pack.vhd from the Quartus II library
LIBRARY work;
USE work.lpm_components.all;

ENTITY lpm_abs_0 IS 
PORT 
( 
	data	:	IN	 STD_LOGIC_VECTOR(15 DOWNTO 0);
	result	:	OUT	 STD_LOGIC_VECTOR(15 DOWNTO 0)
); 
END lpm_abs_0;

ARCHITECTURE bdf_type OF lpm_abs_0 IS 
BEGIN 

-- instantiate LPM macrofunction 

b2v_inst22 : lpm_abs
GENERIC MAP(LPM_WIDTH => 16)
PORT MAP(data => data,
		 result => result);

END bdf_type; 