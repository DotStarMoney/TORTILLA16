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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Full Version"

-- DATE "02/05/2015 16:35:28"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	ALUOut : OUT std_logic_vector(18 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	ALUCtrl : IN std_logic_vector(29 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- ALUOut[18]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[17]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[16]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[15]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[14]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[12]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[9]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[8]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[7]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[6]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOut[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[24]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[23]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[22]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[21]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[20]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[19]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[18]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[17]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[5]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[12]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[10]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[11]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[8]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[6]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[4]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[1]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[13]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[14]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[16]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[25]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[26]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[27]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[15]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCtrl[28]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALUOut : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ALUCtrl : std_logic_vector(29 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~16_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~14_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~18_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~20_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~24_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~20_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~4_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~25_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~26_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~21_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~5_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~7_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~24_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~31_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~32_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~33_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~26_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~12_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~34_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~27_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~2_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]~37_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~29_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~38_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~22_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~30_combout\ : std_logic;
SIGNAL \ALUCtrl[16]~input_o\ : std_logic;
SIGNAL \ALUOut[18]~output_o\ : std_logic;
SIGNAL \ALUOut[17]~output_o\ : std_logic;
SIGNAL \ALUOut[16]~output_o\ : std_logic;
SIGNAL \ALUOut[15]~output_o\ : std_logic;
SIGNAL \ALUOut[14]~output_o\ : std_logic;
SIGNAL \ALUOut[13]~output_o\ : std_logic;
SIGNAL \ALUOut[12]~output_o\ : std_logic;
SIGNAL \ALUOut[11]~output_o\ : std_logic;
SIGNAL \ALUOut[10]~output_o\ : std_logic;
SIGNAL \ALUOut[9]~output_o\ : std_logic;
SIGNAL \ALUOut[8]~output_o\ : std_logic;
SIGNAL \ALUOut[7]~output_o\ : std_logic;
SIGNAL \ALUOut[6]~output_o\ : std_logic;
SIGNAL \ALUOut[5]~output_o\ : std_logic;
SIGNAL \ALUOut[4]~output_o\ : std_logic;
SIGNAL \ALUOut[3]~output_o\ : std_logic;
SIGNAL \ALUOut[2]~output_o\ : std_logic;
SIGNAL \ALUOut[1]~output_o\ : std_logic;
SIGNAL \ALUOut[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst2|q~0_combout\ : std_logic;
SIGNAL \inst2|q~1_combout\ : std_logic;
SIGNAL \ALUCtrl[22]~input_o\ : std_logic;
SIGNAL \inst2|q~2_combout\ : std_logic;
SIGNAL \inst2|q~3_combout\ : std_logic;
SIGNAL \ALUCtrl[20]~input_o\ : std_logic;
SIGNAL \inst2|q~4_combout\ : std_logic;
SIGNAL \inst2|q~5_combout\ : std_logic;
SIGNAL \ALUCtrl[18]~input_o\ : std_logic;
SIGNAL \inst2|q~6_combout\ : std_logic;
SIGNAL \ALUCtrl[17]~input_o\ : std_logic;
SIGNAL \inst2|q~7_combout\ : std_logic;
SIGNAL \ALUCtrl[0]~input_o\ : std_logic;
SIGNAL \ALUCtrl[1]~input_o\ : std_logic;
SIGNAL \ALUCtrl[4]~input_o\ : std_logic;
SIGNAL \ALUCtrl[2]~input_o\ : std_logic;
SIGNAL \ALUCtrl[3]~input_o\ : std_logic;
SIGNAL \ALUCtrl[12]~input_o\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~15_combout\ : std_logic;
SIGNAL \ALUCtrl[13]~input_o\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~17_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~2_combout\ : std_logic;
SIGNAL \ALUCtrl[8]~input_o\ : std_logic;
SIGNAL \ALUCtrl[6]~input_o\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~10_combout\ : std_logic;
SIGNAL \ALUCtrl[7]~input_o\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ : std_logic;
SIGNAL \ALUCtrl[10]~input_o\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~8_combout\ : std_logic;
SIGNAL \ALUCtrl[11]~input_o\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~12_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~13_combout\ : std_logic;
SIGNAL \ALUCtrl[9]~input_o\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~0_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\ : std_logic;
SIGNAL \ALUCtrl[5]~input_o\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[31]~17_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\ : std_logic;
SIGNAL \ALUCtrl[14]~input_o\ : std_logic;
SIGNAL \ALUCtrl[23]~input_o\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~29_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~39_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~27_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~30_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~8_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~25_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~9_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~10_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~14_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~6_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~12_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~13_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~18_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~17_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \ALUCtrl[29]~input_o\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\ : std_logic;
SIGNAL \ALUCtrl[27]~input_o\ : std_logic;
SIGNAL \inst2|q~8_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \ALUCtrl[25]~input_o\ : std_logic;
SIGNAL \ALUCtrl[26]~input_o\ : std_logic;
SIGNAL \inst2|q~9_combout\ : std_logic;
SIGNAL \inst2|q~10_combout\ : std_logic;
SIGNAL \inst2|q~11_combout\ : std_logic;
SIGNAL \inst2|q~12_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \ALUCtrl[21]~input_o\ : std_logic;
SIGNAL \inst2|q~13_combout\ : std_logic;
SIGNAL \inst2|q~14_combout\ : std_logic;
SIGNAL \inst2|q~15_combout\ : std_logic;
SIGNAL \inst2|q~16_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \ALUCtrl[19]~input_o\ : std_logic;
SIGNAL \inst2|q~17_combout\ : std_logic;
SIGNAL \inst2|q~18_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst2|q~19_combout\ : std_logic;
SIGNAL \inst2|q~20_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~35_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~18_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~22_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~23_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~28_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~20_combout\ : std_logic;
SIGNAL \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst2|q~21_combout\ : std_logic;
SIGNAL \inst2|q~22_combout\ : std_logic;
SIGNAL \inst5|zero~1_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst5|zero~0_combout\ : std_logic;
SIGNAL \inst5|zero~2_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~19_combout\ : std_logic;
SIGNAL \ALUCtrl[28]~input_o\ : std_logic;
SIGNAL \ALUCtrl[15]~input_o\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~18_combout\ : std_logic;
SIGNAL \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \ALUCtrl[24]~input_o\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst7|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|q\ : std_logic_vector(18 DOWNTO 0);

BEGIN

ALUOut <= ww_ALUOut;
ww_clk <= clk;
ww_rst <= rst;
ww_ALUCtrl <= ALUCtrl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X28_Y30_N14
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~4_combout\ $ (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ $ 
-- (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)) # (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	datad => VCC,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X28_Y30_N20
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)))) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND))) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\ & (\inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\,
	datab => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X27_Y29_N24
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~16_combout\ = (\ALUCtrl[3]~input_o\ & (((\ALUCtrl[12]~input_o\ & !\ALUCtrl[2]~input_o\)))) # (!\ALUCtrl[3]~input_o\ & (\ALUCtrl[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \ALUCtrl[12]~input_o\,
	datac => \ALUCtrl[2]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~16_combout\);

-- Location: LCCOMB_X25_Y31_N10
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~14_combout\ = (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\) # 
-- ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\ & \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\)))) # (!\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\ & 
-- (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\,
	datac => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~14_combout\);

-- Location: LCCOMB_X25_Y30_N28
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \ALUCtrl[14]~input_o\ $ (\ALUCtrl[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[14]~input_o\,
	datac => \ALUCtrl[24]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X25_Y31_N12
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~18_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[2]~input_o\ & ((\ALUCtrl[9]~input_o\))) # (!\ALUCtrl[2]~input_o\ & (\ALUCtrl[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[7]~input_o\,
	datab => \ALUCtrl[9]~input_o\,
	datac => \ALUCtrl[2]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~18_combout\);

-- Location: LCCOMB_X27_Y29_N18
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~20_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[2]~input_o\ & (\ALUCtrl[11]~input_o\)) # (!\ALUCtrl[2]~input_o\ & ((\ALUCtrl[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \ALUCtrl[11]~input_o\,
	datac => \ALUCtrl[9]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~20_combout\);

-- Location: LCCOMB_X27_Y29_N12
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~20_combout\) # ((\ALUCtrl[10]~input_o\ & !\ALUCtrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[10]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~20_combout\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\);

-- Location: LCCOMB_X29_Y31_N10
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(18) = ((\ALUCtrl[6]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\ & !\ALUCtrl[3]~input_o\))) # 
-- (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[6]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\,
	datac => \ALUCtrl[3]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]~37_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(18));

-- Location: LCCOMB_X29_Y31_N6
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~24_combout\ = (\ALUCtrl[5]~input_o\ & (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(18) & (!\ALUCtrl[2]~input_o\))) # (!\ALUCtrl[5]~input_o\ & 
-- (((!\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(18),
	datab => \ALUCtrl[5]~input_o\,
	datac => \ALUCtrl[2]~input_o\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~29_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~24_combout\);

-- Location: LCCOMB_X25_Y29_N18
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~20_combout\ = (\ALUCtrl[5]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(18))) # (!\ALUCtrl[5]~input_o\ & 
-- ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(18),
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(22),
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~20_combout\);

-- Location: LCCOMB_X26_Y29_N26
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~4_combout\ = (\ALUCtrl[0]~input_o\ & ((\ALUCtrl[1]~input_o\) # ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~24_combout\)))) # (!\ALUCtrl[0]~input_o\ & (!\ALUCtrl[1]~input_o\ & 
-- ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[0]~input_o\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~24_combout\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~20_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~4_combout\);

-- Location: LCCOMB_X25_Y31_N20
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(21) = ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ & (\ALUCtrl[13]~input_o\ & !\ALUCtrl[3]~input_o\))) # 
-- (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~38_combout\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\,
	datac => \ALUCtrl[13]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(21));

-- Location: LCCOMB_X25_Y31_N22
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~25_combout\ = (!\ALUCtrl[4]~input_o\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~10_combout\) # ((\ALUCtrl[7]~input_o\ & !\ALUCtrl[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[7]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~10_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~25_combout\);

-- Location: LCCOMB_X25_Y30_N14
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~26_combout\ = (\ALUCtrl[5]~input_o\ & (!\ALUCtrl[2]~input_o\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~25_combout\)))) # (!\ALUCtrl[5]~input_o\ & 
-- (((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(21),
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~25_combout\,
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~26_combout\);

-- Location: LCCOMB_X25_Y29_N4
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~21_combout\ = (\ALUCtrl[5]~input_o\ & ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(17)))) # (!\ALUCtrl[5]~input_o\ & 
-- (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(21),
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(17),
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~21_combout\);

-- Location: LCCOMB_X26_Y30_N6
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ = (\ALUCtrl[0]~input_o\ & (\ALUCtrl[1]~input_o\)) # (!\ALUCtrl[0]~input_o\ & ((\ALUCtrl[1]~input_o\ & (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~22_combout\)) # 
-- (!\ALUCtrl[1]~input_o\ & ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[0]~input_o\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~22_combout\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~21_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\);

-- Location: LCCOMB_X26_Y30_N8
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ = (\ALUCtrl[0]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ & ((\ALUCtrl[11]~input_o\))) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ & (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~26_combout\)))) # (!\ALUCtrl[0]~input_o\ & 
-- (((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~26_combout\,
	datab => \ALUCtrl[11]~input_o\,
	datac => \ALUCtrl[0]~input_o\,
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~6_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\);

-- Location: LCCOMB_X29_Y31_N16
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~5_combout\ = (\ALUCtrl[4]~input_o\ & ((\ALUCtrl[3]~input_o\ & ((\ALUCtrl[13]~input_o\))) # (!\ALUCtrl[3]~input_o\ & (\ALUCtrl[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \ALUCtrl[12]~input_o\,
	datac => \ALUCtrl[3]~input_o\,
	datad => \ALUCtrl[13]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~5_combout\);

-- Location: LCCOMB_X26_Y30_N26
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~7_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~5_combout\) # ((!\ALUCtrl[4]~input_o\ & \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~5_combout\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~6_combout\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~7_combout\);

-- Location: LCCOMB_X25_Y29_N2
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~24_combout\ = (\ALUCtrl[5]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~23_combout\)) # (!\ALUCtrl[5]~input_o\ & 
-- ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[5]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~23_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~24_combout\);

-- Location: LCCOMB_X29_Y30_N2
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = \ALUCtrl[21]~input_o\ $ (\ALUCtrl[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[21]~input_o\,
	datad => \ALUCtrl[14]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X25_Y30_N10
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~31_combout\ = (\ALUCtrl[5]~input_o\ & (\ALUCtrl[2]~input_o\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\)))) # (!\ALUCtrl[5]~input_o\ & 
-- (((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\,
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~31_combout\);

-- Location: LCCOMB_X29_Y30_N4
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \ALUCtrl[20]~input_o\ $ (\ALUCtrl[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtrl[20]~input_o\,
	datad => \ALUCtrl[14]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X29_Y31_N0
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~32_combout\ = (!\ALUCtrl[4]~input_o\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\) # ((!\ALUCtrl[3]~input_o\ & \ALUCtrl[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\,
	datac => \ALUCtrl[3]~input_o\,
	datad => \ALUCtrl[12]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~32_combout\);

-- Location: LCCOMB_X29_Y31_N2
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~33_combout\ = (\ALUCtrl[5]~input_o\ & (((\ALUCtrl[2]~input_o\ & \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~32_combout\)))) # (!\ALUCtrl[5]~input_o\ & 
-- (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(18),
	datab => \ALUCtrl[5]~input_o\,
	datac => \ALUCtrl[2]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~32_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~33_combout\);

-- Location: LCCOMB_X25_Y29_N20
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~26_combout\ = (\ALUCtrl[5]~input_o\ & ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(22)))) # (!\ALUCtrl[5]~input_o\ & 
-- (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(18),
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(22),
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~26_combout\);

-- Location: LCCOMB_X26_Y29_N4
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~12_combout\ = (\ALUCtrl[1]~input_o\ & (((\ALUCtrl[0]~input_o\)))) # (!\ALUCtrl[1]~input_o\ & ((\ALUCtrl[0]~input_o\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~33_combout\))) 
-- # (!\ALUCtrl[0]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[1]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~26_combout\,
	datac => \ALUCtrl[0]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~33_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~12_combout\);

-- Location: LCCOMB_X29_Y30_N6
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = \ALUCtrl[14]~input_o\ $ (\ALUCtrl[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtrl[14]~input_o\,
	datad => \ALUCtrl[19]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X25_Y29_N14
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~34_combout\ = (\ALUCtrl[5]~input_o\ & (\ALUCtrl[2]~input_o\ & (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(21)))) # (!\ALUCtrl[5]~input_o\ & 
-- (((!\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(21),
	datac => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~30_combout\,
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~34_combout\);

-- Location: LCCOMB_X25_Y29_N8
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~27_combout\ = (\ALUCtrl[5]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(21))) # (!\ALUCtrl[5]~input_o\ & 
-- ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(21),
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(17),
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~27_combout\);

-- Location: LCCOMB_X29_Y30_N24
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~6_combout\ = \ALUCtrl[14]~input_o\ $ (\ALUCtrl[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtrl[14]~input_o\,
	datad => \ALUCtrl[18]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X28_Y31_N22
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\ & ((\ALUCtrl[24]~input_o\ & ((!\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[24]~input_o\ & (!\ALUCtrl[25]~input_o\)))) # 
-- (!\inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\ & ((\ALUCtrl[25]~input_o\ & ((\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[25]~input_o\ & (\ALUCtrl[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[24]~input_o\,
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\,
	datac => \ALUCtrl[25]~input_o\,
	datad => \ALUCtrl[26]~input_o\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y30_N24
\inst6|LPM_MUX_component|auto_generated|result_node[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = (\ALUCtrl[29]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\))) # (!\ALUCtrl[29]~input_o\ & 
-- (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	datac => \ALUCtrl[29]~input_o\,
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\,
	combout => \inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X28_Y30_N26
\inst7|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\ALUCtrl[28]~input_o\ & (\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \ALUCtrl[28]~input_o\,
	datac => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y29_N18
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (!\ALUCtrl[0]~input_o\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21_combout\ & (\ALUCtrl[13]~input_o\ & 
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19_combout\)) # (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21_combout\ & (!\ALUCtrl[13]~input_o\ & 
-- !\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21_combout\,
	datab => \ALUCtrl[13]~input_o\,
	datac => \ALUCtrl[0]~input_o\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y29_N12
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8_combout\ & 
-- (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3_combout\ & \ALUCtrl[13]~input_o\)) # (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8_combout\ & (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3_combout\ & 
-- !\ALUCtrl[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8_combout\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3_combout\,
	datac => \ALUCtrl[13]~input_o\,
	datad => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X27_Y29_N16
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\ = (\ALUCtrl[13]~input_o\ & (((!\ALUCtrl[10]~input_o\) # (!\ALUCtrl[11]~input_o\)) # (!\ALUCtrl[12]~input_o\))) # (!\ALUCtrl[13]~input_o\ & ((\ALUCtrl[12]~input_o\) # 
-- ((\ALUCtrl[11]~input_o\) # (\ALUCtrl[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \ALUCtrl[12]~input_o\,
	datac => \ALUCtrl[11]~input_o\,
	datad => \ALUCtrl[10]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\);

-- Location: LCCOMB_X27_Y29_N26
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\ = (\ALUCtrl[8]~input_o\ & (((!\ALUCtrl[13]~input_o\) # (!\ALUCtrl[9]~input_o\)) # (!\ALUCtrl[7]~input_o\))) # (!\ALUCtrl[8]~input_o\ & ((\ALUCtrl[7]~input_o\) # ((\ALUCtrl[9]~input_o\) 
-- # (\ALUCtrl[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[8]~input_o\,
	datab => \ALUCtrl[7]~input_o\,
	datac => \ALUCtrl[9]~input_o\,
	datad => \ALUCtrl[13]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\);

-- Location: LCCOMB_X26_Y30_N28
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~2_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\) # ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\) # (\ALUCtrl[13]~input_o\ $ 
-- (\ALUCtrl[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\,
	datad => \ALUCtrl[6]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~2_combout\);

-- Location: LCCOMB_X26_Y30_N14
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~2_combout\ & (\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\ALUCtrl[13]~input_o\ $ 
-- (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|inz_w[0]~2_combout\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~22_combout\,
	datad => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X27_Y30_N8
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11_combout\ & (\ALUCtrl[13]~input_o\ & 
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15_combout\)) # (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11_combout\ & (!\ALUCtrl[13]~input_o\ & 
-- !\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11_combout\,
	datac => \ALUCtrl[13]~input_o\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X29_Y31_N28
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (\ALUCtrl[13]~input_o\) # ((\ALUCtrl[12]~input_o\) # (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \ALUCtrl[12]~input_o\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X29_Y31_N22
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (\ALUCtrl[4]~input_o\ & ((\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~4_combout\) # ((\ALUCtrl[3]~input_o\ & \ALUCtrl[13]~input_o\)))) # (!\ALUCtrl[4]~input_o\ & 
-- (((\ALUCtrl[3]~input_o\ & \ALUCtrl[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \ALUCtrl[3]~input_o\,
	datad => \ALUCtrl[13]~input_o\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X29_Y31_N24
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(21)) # ((\ALUCtrl[4]~input_o\ & \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w\(21),
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X29_Y31_N26
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\) # ((\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~6_combout\) # 
-- ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\) # (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\,
	datab => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X27_Y31_N24
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~8_combout\ = (!\ALUCtrl[2]~input_o\ & ((\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~5_combout\) # ((\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & 
-- \ALUCtrl[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datab => \ALUCtrl[5]~input_o\,
	datac => \ALUCtrl[2]~input_o\,
	datad => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~8_combout\);

-- Location: LCCOMB_X27_Y29_N20
\inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\ = (\ALUCtrl[13]~input_o\) # ((\ALUCtrl[12]~input_o\) # ((\ALUCtrl[11]~input_o\) # (\ALUCtrl[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \ALUCtrl[12]~input_o\,
	datac => \ALUCtrl[11]~input_o\,
	datad => \ALUCtrl[10]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\);

-- Location: LCCOMB_X27_Y29_N14
\inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\ = (\ALUCtrl[6]~input_o\) # ((\ALUCtrl[9]~input_o\) # ((\ALUCtrl[8]~input_o\) # (\ALUCtrl[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[6]~input_o\,
	datab => \ALUCtrl[9]~input_o\,
	datac => \ALUCtrl[8]~input_o\,
	datad => \ALUCtrl[7]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\);

-- Location: LCCOMB_X27_Y31_N18
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ = (\ALUCtrl[2]~input_o\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\) # (\inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~1_combout\,
	datac => \ALUCtrl[2]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|inz_w[0]~0_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~9_combout\);

-- Location: LCCOMB_X25_Y30_N6
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ = (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[31]~17_combout\ & (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~30_combout\ & 
-- (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~26_combout\ & !\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[31]~17_combout\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~30_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~26_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~31_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~10_combout\);

-- Location: LCCOMB_X26_Y29_N22
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ = (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~34_combout\ & (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~24_combout\ & 
-- (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~35_combout\ & !\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~34_combout\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~24_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~35_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~33_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~11_combout\);

-- Location: LCCOMB_X27_Y30_N26
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ = (\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ & (\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ & 
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~11_combout\,
	datab => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~10_combout\,
	datac => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~9_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X27_Y30_N12
\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ = (\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~3_combout\) # ((\ALUCtrl[0]~input_o\ & ((\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~12_combout\) 
-- # (\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~12_combout\,
	datab => \ALUCtrl[0]~input_o\,
	datac => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	datad => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~8_combout\,
	combout => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~13_combout\);

-- Location: LCCOMB_X29_Y31_N12
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]~37_combout\ = (\ALUCtrl[4]~input_o\ & (((!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\)) # (!\ALUCtrl[2]~input_o\))) # (!\ALUCtrl[4]~input_o\ & 
-- (((!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \ALUCtrl[2]~input_o\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]~37_combout\);

-- Location: LCCOMB_X29_Y31_N14
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~29_combout\ = (\ALUCtrl[4]~input_o\ & ((\ALUCtrl[2]~input_o\) # ((!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\)))) # (!\ALUCtrl[4]~input_o\ & 
-- (((!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \ALUCtrl[2]~input_o\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~29_combout\);

-- Location: LCCOMB_X25_Y29_N30
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(18) = ((!\ALUCtrl[2]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\ & \ALUCtrl[4]~input_o\))) # 
-- (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[18]~37_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(18));

-- Location: LCCOMB_X25_Y29_N16
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(22) = ((\ALUCtrl[2]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\ & \ALUCtrl[4]~input_o\))) # 
-- (!\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[22]~29_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(22));

-- Location: LCCOMB_X25_Y31_N18
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~38_combout\ = (\ALUCtrl[4]~input_o\ & ((\ALUCtrl[2]~input_o\) # ((!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\)))) # (!\ALUCtrl[4]~input_o\ & 
-- (((!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~38_combout\);

-- Location: LCCOMB_X25_Y29_N10
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~22_combout\ = (\ALUCtrl[4]~input_o\ & (\ALUCtrl[13]~input_o\)) # (!\ALUCtrl[4]~input_o\ & ((\ALUCtrl[5]~input_o\ & (\ALUCtrl[13]~input_o\)) # (!\ALUCtrl[5]~input_o\ & 
-- ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \ALUCtrl[4]~input_o\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\,
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[29]~22_combout\);

-- Location: LCCOMB_X25_Y31_N4
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~30_combout\ = (\ALUCtrl[4]~input_o\ & (((!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\)) # (!\ALUCtrl[2]~input_o\))) # (!\ALUCtrl[4]~input_o\ & 
-- (((!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~30_combout\);

-- Location: LCCOMB_X25_Y29_N28
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(17) = ((!\ALUCtrl[2]~input_o\ & (\ALUCtrl[4]~input_o\ & \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\))) # 
-- (!\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[17]~30_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(17));

-- Location: LCCOMB_X25_Y29_N22
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(21) = ((\ALUCtrl[2]~input_o\ & (\ALUCtrl[4]~input_o\ & \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\))) # 
-- (!\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~38_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w\(21));

-- Location: IOIBUF_X27_Y0_N8
\ALUCtrl[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(16),
	o => \ALUCtrl[16]~input_o\);

-- Location: IOOBUF_X35_Y0_N16
\ALUOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(18),
	devoe => ww_devoe,
	o => \ALUOut[18]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\ALUOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(17),
	devoe => ww_devoe,
	o => \ALUOut[17]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ALUOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(16),
	devoe => ww_devoe,
	o => \ALUOut[16]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\ALUOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(15),
	devoe => ww_devoe,
	o => \ALUOut[15]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\ALUOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(14),
	devoe => ww_devoe,
	o => \ALUOut[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ALUOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(13),
	devoe => ww_devoe,
	o => \ALUOut[13]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\ALUOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(12),
	devoe => ww_devoe,
	o => \ALUOut[12]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\ALUOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(11),
	devoe => ww_devoe,
	o => \ALUOut[11]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\ALUOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(10),
	devoe => ww_devoe,
	o => \ALUOut[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\ALUOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(9),
	devoe => ww_devoe,
	o => \ALUOut[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\ALUOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(8),
	devoe => ww_devoe,
	o => \ALUOut[8]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\ALUOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(7),
	devoe => ww_devoe,
	o => \ALUOut[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\ALUOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(6),
	devoe => ww_devoe,
	o => \ALUOut[6]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\ALUOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(5),
	devoe => ww_devoe,
	o => \ALUOut[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\ALUOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(4),
	devoe => ww_devoe,
	o => \ALUOut[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\ALUOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(3),
	devoe => ww_devoe,
	o => \ALUOut[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\ALUOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(2),
	devoe => ww_devoe,
	o => \ALUOut[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\ALUOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(1),
	devoe => ww_devoe,
	o => \ALUOut[1]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\ALUOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|q\(0),
	devoe => ww_devoe,
	o => \ALUOut[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X29_Y30_N26
\inst2|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~0_combout\ = (\ALUCtrl[24]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[24]~input_o\,
	datad => \rst~input_o\,
	combout => \inst2|q~0_combout\);

-- Location: FF_X29_Y30_N27
\inst2|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(18));

-- Location: LCCOMB_X29_Y30_N12
\inst2|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~1_combout\ = (\ALUCtrl[23]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[23]~input_o\,
	datad => \rst~input_o\,
	combout => \inst2|q~1_combout\);

-- Location: FF_X29_Y30_N13
\inst2|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(17));

-- Location: IOIBUF_X31_Y73_N1
\ALUCtrl[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(22),
	o => \ALUCtrl[22]~input_o\);

-- Location: LCCOMB_X28_Y31_N26
\inst2|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~2_combout\ = (\ALUCtrl[22]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtrl[22]~input_o\,
	datad => \rst~input_o\,
	combout => \inst2|q~2_combout\);

-- Location: FF_X28_Y31_N27
\inst2|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(16));

-- Location: LCCOMB_X29_Y30_N14
\inst2|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~3_combout\ = (\ALUCtrl[21]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[21]~input_o\,
	datad => \rst~input_o\,
	combout => \inst2|q~3_combout\);

-- Location: FF_X29_Y30_N15
\inst2|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(15));

-- Location: IOIBUF_X29_Y73_N8
\ALUCtrl[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(20),
	o => \ALUCtrl[20]~input_o\);

-- Location: LCCOMB_X29_Y30_N16
\inst2|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~4_combout\ = (\ALUCtrl[20]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtrl[20]~input_o\,
	datad => \rst~input_o\,
	combout => \inst2|q~4_combout\);

-- Location: FF_X29_Y30_N17
\inst2|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(14));

-- Location: LCCOMB_X29_Y30_N18
\inst2|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~5_combout\ = (\ALUCtrl[19]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[19]~input_o\,
	datad => \rst~input_o\,
	combout => \inst2|q~5_combout\);

-- Location: FF_X29_Y30_N19
\inst2|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(13));

-- Location: IOIBUF_X27_Y0_N22
\ALUCtrl[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(18),
	o => \ALUCtrl[18]~input_o\);

-- Location: LCCOMB_X29_Y30_N28
\inst2|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~6_combout\ = (\ALUCtrl[18]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtrl[18]~input_o\,
	datad => \rst~input_o\,
	combout => \inst2|q~6_combout\);

-- Location: FF_X29_Y30_N29
\inst2|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(12));

-- Location: IOIBUF_X115_Y29_N8
\ALUCtrl[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(17),
	o => \ALUCtrl[17]~input_o\);

-- Location: LCCOMB_X25_Y30_N16
\inst2|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~7_combout\ = (!\rst~input_o\ & \ALUCtrl[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \ALUCtrl[17]~input_o\,
	combout => \inst2|q~7_combout\);

-- Location: FF_X25_Y30_N17
\inst2|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(11));

-- Location: IOIBUF_X0_Y29_N22
\ALUCtrl[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(0),
	o => \ALUCtrl[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\ALUCtrl[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(1),
	o => \ALUCtrl[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\ALUCtrl[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(4),
	o => \ALUCtrl[4]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\ALUCtrl[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(2),
	o => \ALUCtrl[2]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\ALUCtrl[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(3),
	o => \ALUCtrl[3]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\ALUCtrl[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(12),
	o => \ALUCtrl[12]~input_o\);

-- Location: LCCOMB_X29_Y31_N8
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~15_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[2]~input_o\ & (\ALUCtrl[6]~input_o\)) # (!\ALUCtrl[2]~input_o\ & ((\ALUCtrl[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[6]~input_o\,
	datab => \ALUCtrl[2]~input_o\,
	datac => \ALUCtrl[3]~input_o\,
	datad => \ALUCtrl[12]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~15_combout\);

-- Location: IOIBUF_X25_Y73_N15
\ALUCtrl[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(13),
	o => \ALUCtrl[13]~input_o\);

-- Location: LCCOMB_X26_Y30_N18
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\ = (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~15_combout\) # ((!\ALUCtrl[3]~input_o\ & \ALUCtrl[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[3]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~15_combout\,
	datac => \ALUCtrl[13]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\);

-- Location: LCCOMB_X25_Y29_N0
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~17_combout\ = (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~14_combout\) # ((!\ALUCtrl[4]~input_o\ & \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~14_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[15]~16_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~17_combout\);

-- Location: LCCOMB_X25_Y30_N24
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~2_combout\ = (!\ALUCtrl[5]~input_o\ & (!\ALUCtrl[0]~input_o\ & (!\ALUCtrl[1]~input_o\ & \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[5]~input_o\,
	datab => \ALUCtrl[0]~input_o\,
	datac => \ALUCtrl[1]~input_o\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~17_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~2_combout\);

-- Location: IOIBUF_X0_Y27_N22
\ALUCtrl[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(8),
	o => \ALUCtrl[8]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\ALUCtrl[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(6),
	o => \ALUCtrl[6]~input_o\);

-- Location: LCCOMB_X25_Y31_N16
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~10_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[2]~input_o\ & (\ALUCtrl[8]~input_o\)) # (!\ALUCtrl[2]~input_o\ & ((\ALUCtrl[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \ALUCtrl[8]~input_o\,
	datac => \ALUCtrl[6]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~10_combout\);

-- Location: IOIBUF_X0_Y32_N15
\ALUCtrl[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(7),
	o => \ALUCtrl[7]~input_o\);

-- Location: LCCOMB_X25_Y31_N2
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~10_combout\) # ((\ALUCtrl[7]~input_o\ & !\ALUCtrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~10_combout\,
	datac => \ALUCtrl[7]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\);

-- Location: LCCOMB_X25_Y31_N14
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ = (\ALUCtrl[2]~input_o\ & \ALUCtrl[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datac => \ALUCtrl[4]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\);

-- Location: IOIBUF_X20_Y0_N15
\ALUCtrl[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(10),
	o => \ALUCtrl[10]~input_o\);

-- Location: LCCOMB_X27_Y29_N0
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~8_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[2]~input_o\ & (\ALUCtrl[12]~input_o\)) # (!\ALUCtrl[2]~input_o\ & ((\ALUCtrl[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \ALUCtrl[3]~input_o\,
	datac => \ALUCtrl[12]~input_o\,
	datad => \ALUCtrl[10]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~8_combout\);

-- Location: IOIBUF_X0_Y29_N15
\ALUCtrl[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(11),
	o => \ALUCtrl[11]~input_o\);

-- Location: LCCOMB_X27_Y29_N2
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~8_combout\) # ((\ALUCtrl[11]~input_o\ & !\ALUCtrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~8_combout\,
	datac => \ALUCtrl[11]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\);

-- Location: LCCOMB_X25_Y31_N0
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~12_combout\ = (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\) # 
-- ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ & \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\)))) # (!\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\ & 
-- (((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ & \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[9]~11_combout\,
	datac => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~12_combout\);

-- Location: LCCOMB_X27_Y29_N28
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~13_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[2]~input_o\ & ((\ALUCtrl[10]~input_o\))) # (!\ALUCtrl[2]~input_o\ & (\ALUCtrl[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \ALUCtrl[3]~input_o\,
	datac => \ALUCtrl[8]~input_o\,
	datad => \ALUCtrl[10]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~13_combout\);

-- Location: IOIBUF_X45_Y0_N15
\ALUCtrl[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(9),
	o => \ALUCtrl[9]~input_o\);

-- Location: LCCOMB_X27_Y29_N6
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~13_combout\) # ((\ALUCtrl[9]~input_o\ & !\ALUCtrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~13_combout\,
	datac => \ALUCtrl[9]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\);

-- Location: LCCOMB_X26_Y30_N24
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~12_combout\) # ((!\ALUCtrl[4]~input_o\ & \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~12_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~14_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\);

-- Location: LCCOMB_X25_Y30_N26
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~0_combout\ = (\ALUCtrl[5]~input_o\ & (!\ALUCtrl[0]~input_o\ & (!\ALUCtrl[1]~input_o\ & \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[5]~input_o\,
	datab => \ALUCtrl[0]~input_o\,
	datac => \ALUCtrl[1]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~0_combout\);

-- Location: LCCOMB_X27_Y31_N4
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\ = (\ALUCtrl[4]~input_o\ & (((!\ALUCtrl[2]~input_o\ & \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\)))) # (!\ALUCtrl[4]~input_o\ & 
-- (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~16_combout\,
	datab => \ALUCtrl[2]~input_o\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~9_combout\,
	datad => \ALUCtrl[4]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\);

-- Location: IOIBUF_X29_Y0_N15
\ALUCtrl[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(5),
	o => \ALUCtrl[5]~input_o\);

-- Location: LCCOMB_X25_Y30_N12
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[31]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[31]~17_combout\ = (\ALUCtrl[5]~input_o\ & (!\ALUCtrl[2]~input_o\ & (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\))) # (!\ALUCtrl[5]~input_o\ & 
-- (((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~36_combout\,
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[31]~17_combout\);

-- Location: LCCOMB_X25_Y30_N22
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~1_combout\ = (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~0_combout\) # ((!\ALUCtrl[1]~input_o\ & (\ALUCtrl[0]~input_o\ & 
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[31]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[1]~input_o\,
	datab => \ALUCtrl[0]~input_o\,
	datac => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~0_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[31]~17_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~1_combout\);

-- Location: LCCOMB_X25_Y30_N18
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\ = (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~2_combout\) # ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~1_combout\) # ((\ALUCtrl[1]~input_o\ & 
-- \ALUCtrl[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[1]~input_o\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~2_combout\,
	datac => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~1_combout\,
	datad => \ALUCtrl[13]~input_o\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\);

-- Location: IOIBUF_X0_Y30_N8
\ALUCtrl[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(14),
	o => \ALUCtrl[14]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\ALUCtrl[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(23),
	o => \ALUCtrl[23]~input_o\);

-- Location: LCCOMB_X29_Y30_N22
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = \ALUCtrl[14]~input_o\ $ (\ALUCtrl[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtrl[14]~input_o\,
	datad => \ALUCtrl[23]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: LCCOMB_X29_Y30_N8
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \ALUCtrl[14]~input_o\ $ (\ALUCtrl[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtrl[14]~input_o\,
	datad => \ALUCtrl[22]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X26_Y29_N30
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8_combout\ = (\ALUCtrl[5]~input_o\ & ((\ALUCtrl[13]~input_o\))) # (!\ALUCtrl[5]~input_o\ & (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~7_combout\,
	datac => \ALUCtrl[13]~input_o\,
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8_combout\);

-- Location: LCCOMB_X25_Y31_N24
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~29_combout\ = (\ALUCtrl[3]~input_o\ & (\ALUCtrl[2]~input_o\ & ((\ALUCtrl[7]~input_o\)))) # (!\ALUCtrl[3]~input_o\ & (((\ALUCtrl[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \ALUCtrl[6]~input_o\,
	datac => \ALUCtrl[7]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~29_combout\);

-- Location: LCCOMB_X25_Y31_N30
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~18_combout\) # ((\ALUCtrl[8]~input_o\ & !\ALUCtrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~18_combout\,
	datac => \ALUCtrl[8]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\);

-- Location: LCCOMB_X25_Y31_N6
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~39_combout\ = (\ALUCtrl[4]~input_o\ & (((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\ & \ALUCtrl[2]~input_o\)))) # (!\ALUCtrl[4]~input_o\ & 
-- (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~29_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\,
	datad => \ALUCtrl[2]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~39_combout\);

-- Location: LCCOMB_X27_Y29_N22
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[2]~input_o\ & (\ALUCtrl[13]~input_o\)) # (!\ALUCtrl[2]~input_o\ & ((\ALUCtrl[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \ALUCtrl[11]~input_o\,
	datac => \ALUCtrl[2]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\);

-- Location: LCCOMB_X29_Y31_N4
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\) # ((!\ALUCtrl[3]~input_o\ & \ALUCtrl[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~22_combout\,
	datac => \ALUCtrl[3]~input_o\,
	datad => \ALUCtrl[12]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\);

-- Location: LCCOMB_X25_Y31_N28
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\ = (!\ALUCtrl[2]~input_o\ & \ALUCtrl[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datac => \ALUCtrl[4]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\);

-- Location: LCCOMB_X29_Y31_N18
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~27_combout\ = (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\) # 
-- ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\ & \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\)))) # (!\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ & 
-- (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\ & ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~27_combout\);

-- Location: LCCOMB_X25_Y29_N6
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\ = (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~27_combout\) # ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\ & !\ALUCtrl[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[12]~21_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~27_combout\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\);

-- Location: LCCOMB_X25_Y30_N0
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~30_combout\ = (\ALUCtrl[5]~input_o\ & (!\ALUCtrl[2]~input_o\ & (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~39_combout\))) # (!\ALUCtrl[5]~input_o\ & 
-- (((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~39_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\,
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~30_combout\);

-- Location: LCCOMB_X26_Y29_N16
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~8_combout\ = (\ALUCtrl[1]~input_o\ & (((\ALUCtrl[0]~input_o\)))) # (!\ALUCtrl[1]~input_o\ & ((\ALUCtrl[0]~input_o\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~30_combout\))) 
-- # (!\ALUCtrl[0]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~24_combout\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \ALUCtrl[0]~input_o\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~30_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~8_combout\);

-- Location: LCCOMB_X26_Y29_N10
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ = (\ALUCtrl[1]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~8_combout\ & (\ALUCtrl[10]~input_o\)) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~8_combout\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8_combout\))))) # (!\ALUCtrl[1]~input_o\ & 
-- (((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[10]~input_o\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[28]~8_combout\,
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~8_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\);

-- Location: LCCOMB_X25_Y30_N4
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~25_combout\ = (\ALUCtrl[5]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~17_combout\)) # (!\ALUCtrl[5]~input_o\ & 
-- ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[5]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~17_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[19]~15_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~25_combout\);

-- Location: LCCOMB_X27_Y29_N4
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~9_combout\ = (\ALUCtrl[3]~input_o\ & (\ALUCtrl[10]~input_o\)) # (!\ALUCtrl[3]~input_o\ & ((\ALUCtrl[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[10]~input_o\,
	datac => \ALUCtrl[9]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~9_combout\);

-- Location: LCCOMB_X27_Y29_N8
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[12]~input_o\))) # (!\ALUCtrl[3]~input_o\ & (\ALUCtrl[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtrl[11]~input_o\,
	datac => \ALUCtrl[12]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\);

-- Location: LCCOMB_X26_Y30_N4
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~10_combout\ = (!\ALUCtrl[5]~input_o\ & ((\ALUCtrl[4]~input_o\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\))) # (!\ALUCtrl[4]~input_o\ & 
-- (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \ALUCtrl[5]~input_o\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~9_combout\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~10_combout\);

-- Location: LCCOMB_X26_Y30_N30
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~10_combout\) # ((\ALUCtrl[13]~input_o\ & \ALUCtrl[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[13]~input_o\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~10_combout\,
	datac => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11_combout\);

-- Location: LCCOMB_X27_Y30_N28
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\ = (\ALUCtrl[0]~input_o\ & (\ALUCtrl[1]~input_o\)) # (!\ALUCtrl[0]~input_o\ & ((\ALUCtrl[1]~input_o\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11_combout\))) # 
-- (!\ALUCtrl[1]~input_o\ & (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[0]~input_o\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~25_combout\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~11_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\);

-- Location: LCCOMB_X27_Y30_N6
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\ = (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\ & (((\ALUCtrl[9]~input_o\) # (!\ALUCtrl[0]~input_o\)))) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\ & (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~31_combout\ & ((\ALUCtrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[27]~31_combout\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~10_combout\,
	datac => \ALUCtrl[9]~input_o\,
	datad => \ALUCtrl[0]~input_o\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[3]~11_combout\);

-- Location: LCCOMB_X29_Y31_N30
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~14_combout\ = (\ALUCtrl[4]~input_o\ & (((\ALUCtrl[13]~input_o\)))) # (!\ALUCtrl[4]~input_o\ & ((\ALUCtrl[3]~input_o\ & ((\ALUCtrl[13]~input_o\))) # (!\ALUCtrl[3]~input_o\ & 
-- (\ALUCtrl[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \ALUCtrl[12]~input_o\,
	datac => \ALUCtrl[3]~input_o\,
	datad => \ALUCtrl[13]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~14_combout\);

-- Location: LCCOMB_X27_Y29_N10
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~6_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[11]~input_o\))) # (!\ALUCtrl[3]~input_o\ & (\ALUCtrl[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[10]~input_o\,
	datac => \ALUCtrl[11]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~6_combout\);

-- Location: LCCOMB_X27_Y29_N30
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~12_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[9]~input_o\))) # (!\ALUCtrl[3]~input_o\ & (\ALUCtrl[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[8]~input_o\,
	datac => \ALUCtrl[9]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~12_combout\);

-- Location: LCCOMB_X26_Y30_N0
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~13_combout\ = (!\ALUCtrl[5]~input_o\ & ((\ALUCtrl[4]~input_o\ & (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~6_combout\)) # (!\ALUCtrl[4]~input_o\ & 
-- ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~6_combout\,
	datac => \ALUCtrl[5]~input_o\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~12_combout\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~13_combout\);

-- Location: LCCOMB_X26_Y30_N2
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~13_combout\) # ((\ALUCtrl[5]~input_o\ & \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtrl[5]~input_o\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~14_combout\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~13_combout\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15_combout\);

-- Location: LCCOMB_X27_Y30_N0
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ = (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~12_combout\ & (((\ALUCtrl[8]~input_o\)) # (!\ALUCtrl[1]~input_o\))) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~12_combout\ & (\ALUCtrl[1]~input_o\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~12_combout\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \ALUCtrl[8]~input_o\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[26]~15_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X26_Y30_N16
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~18_combout\ = (\ALUCtrl[4]~input_o\ & (\ALUCtrl[13]~input_o\)) # (!\ALUCtrl[4]~input_o\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datac => \ALUCtrl[13]~input_o\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[13]~4_combout\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~18_combout\);

-- Location: LCCOMB_X26_Y30_N20
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\ = (!\ALUCtrl[5]~input_o\ & !\ALUCtrl[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUCtrl[5]~input_o\,
	datad => \ALUCtrl[4]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\);

-- Location: LCCOMB_X26_Y30_N22
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~17_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\ & (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\)) # 
-- (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\ & ((\ALUCtrl[7]~input_o\))) # (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\ 
-- & (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[11]~9_combout\,
	datad => \ALUCtrl[7]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~17_combout\);

-- Location: LCCOMB_X26_Y30_N12
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\ = (\ALUCtrl[5]~input_o\) # ((!\ALUCtrl[4]~input_o\ & \ALUCtrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[4]~input_o\,
	datab => \ALUCtrl[5]~input_o\,
	datac => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\);

-- Location: LCCOMB_X26_Y30_N10
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~17_combout\ & (((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~18_combout\) # 
-- (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\)))) # (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~17_combout\ & (\ALUCtrl[8]~input_o\ & 
-- ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[8]~input_o\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[21]~18_combout\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~17_combout\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19_combout\);

-- Location: LCCOMB_X26_Y29_N6
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ = (\ALUCtrl[1]~input_o\ & (((\ALUCtrl[0]~input_o\) # (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19_combout\)))) # (!\ALUCtrl[1]~input_o\ & 
-- (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~27_combout\ & (!\ALUCtrl[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~27_combout\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \ALUCtrl[0]~input_o\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~19_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X26_Y29_N0
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\ = (\ALUCtrl[0]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ & ((\ALUCtrl[7]~input_o\))) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ & (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~34_combout\)))) # (!\ALUCtrl[0]~input_o\ & 
-- (((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[25]~34_combout\,
	datab => \ALUCtrl[7]~input_o\,
	datac => \ALUCtrl[0]~input_o\,
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\);

-- Location: LCCOMB_X25_Y30_N30
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\ = \ALUCtrl[14]~input_o\ $ (\ALUCtrl[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[14]~input_o\,
	datad => \ALUCtrl[17]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X28_Y30_N6
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\ALUCtrl[16]~input_o\ $ (!\ALUCtrl[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[16]~input_o\,
	datab => \ALUCtrl[14]~input_o\,
	datad => VCC,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X28_Y30_N8
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)))) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND))) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ & (\inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\,
	datab => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X28_Y30_N10
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~6_combout\ $ (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\ $ 
-- (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)) # (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\,
	datad => VCC,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X28_Y30_N12
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\inst|inst|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ & 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND))))) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ & (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ & (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\))))
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\))) # (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	datad => VCC,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X28_Y30_N16
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\inst|inst|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ & 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ & ((\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND))))) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ & (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ & (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\))))
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\))) # (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\,
	datad => VCC,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X28_Y30_N18
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ $ (\inst|inst|LPM_ADD_SUB_component|auto_generated|_~2_combout\ $ 
-- (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ & ((!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~2_combout\))) # (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ & (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\,
	datab => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X28_Y30_N22
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\ $ (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\ $ 
-- (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\ & 
-- !\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)) # (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\) # 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\,
	datad => VCC,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: IOIBUF_X115_Y30_N1
\ALUCtrl[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(29),
	o => \ALUCtrl[29]~input_o\);

-- Location: LCCOMB_X28_Y30_N2
\inst6|LPM_MUX_component|auto_generated|result_node[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\ = (\ALUCtrl[29]~input_o\ & (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\)) # (!\ALUCtrl[29]~input_o\ & 
-- ((\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\,
	datac => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	datad => \ALUCtrl[29]~input_o\,
	combout => \inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\);

-- Location: IOIBUF_X27_Y73_N22
\ALUCtrl[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(27),
	o => \ALUCtrl[27]~input_o\);

-- Location: LCCOMB_X28_Y31_N4
\inst2|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~8_combout\ = (!\rst~input_o\ & ((\ALUCtrl[27]~input_o\ & ((\inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\))) # (!\ALUCtrl[27]~input_o\ & (\inst5|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\,
	datac => \ALUCtrl[27]~input_o\,
	datad => \rst~input_o\,
	combout => \inst2|q~8_combout\);

-- Location: FF_X28_Y31_N5
\inst2|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(10));

-- Location: LCCOMB_X26_Y29_N24
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\ & ((\ALUCtrl[3]~input_o\ & (\ALUCtrl[13]~input_o\)) # (!\ALUCtrl[3]~input_o\ & ((\ALUCtrl[12]~input_o\))))) 
-- # (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\ & (\ALUCtrl[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\,
	datab => \ALUCtrl[13]~input_o\,
	datac => \ALUCtrl[12]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3_combout\);

-- Location: LCCOMB_X26_Y29_N20
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\ = (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~4_combout\ & (((\ALUCtrl[12]~input_o\)) # (!\ALUCtrl[1]~input_o\))) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~4_combout\ & (\ALUCtrl[1]~input_o\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~4_combout\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \ALUCtrl[12]~input_o\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~3_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\);

-- Location: LCCOMB_X27_Y30_N2
\inst6|LPM_MUX_component|auto_generated|result_node[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ = (\ALUCtrl[29]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\))) # (!\ALUCtrl[29]~input_o\ & 
-- (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[6]~5_combout\,
	datac => \ALUCtrl[29]~input_o\,
	combout => \inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\);

-- Location: IOIBUF_X38_Y0_N1
\ALUCtrl[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(25),
	o => \ALUCtrl[25]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\ALUCtrl[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(26),
	o => \ALUCtrl[26]~input_o\);

-- Location: LCCOMB_X28_Y31_N24
\inst2|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~9_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ & ((\ALUCtrl[23]~input_o\ & ((!\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[23]~input_o\ & (!\ALUCtrl[25]~input_o\)))) # 
-- (!\inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ & ((\ALUCtrl[25]~input_o\ & ((\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[25]~input_o\ & (\ALUCtrl[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[23]~input_o\,
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\,
	datac => \ALUCtrl[25]~input_o\,
	datad => \ALUCtrl[26]~input_o\,
	combout => \inst2|q~9_combout\);

-- Location: LCCOMB_X28_Y31_N16
\inst2|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~10_combout\ = (\ALUCtrl[27]~input_o\ & (\inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\)) # (!\ALUCtrl[27]~input_o\ & ((\inst2|q~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\,
	datac => \ALUCtrl[27]~input_o\,
	datad => \inst2|q~9_combout\,
	combout => \inst2|q~10_combout\);

-- Location: FF_X28_Y31_N17
\inst2|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~10_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(9));

-- Location: LCCOMB_X28_Y31_N10
\inst2|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~11_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ & ((\ALUCtrl[22]~input_o\ & ((!\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[22]~input_o\ & (!\ALUCtrl[25]~input_o\)))) # 
-- (!\inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ & ((\ALUCtrl[25]~input_o\ & ((\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[25]~input_o\ & (\ALUCtrl[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	datab => \ALUCtrl[22]~input_o\,
	datac => \ALUCtrl[25]~input_o\,
	datad => \ALUCtrl[26]~input_o\,
	combout => \inst2|q~11_combout\);

-- Location: LCCOMB_X28_Y31_N2
\inst2|q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~12_combout\ = (\ALUCtrl[27]~input_o\ & (\inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\)) # (!\ALUCtrl[27]~input_o\ & ((\inst2|q~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	datac => \ALUCtrl[27]~input_o\,
	datad => \inst2|q~11_combout\,
	combout => \inst2|q~12_combout\);

-- Location: FF_X28_Y31_N3
\inst2|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~12_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(8));

-- Location: LCCOMB_X27_Y30_N30
\inst6|LPM_MUX_component|auto_generated|result_node[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ = (\ALUCtrl[29]~input_o\ & (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\)) # (!\ALUCtrl[29]~input_o\ & 
-- ((\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[4]~9_combout\,
	datac => \ALUCtrl[29]~input_o\,
	datad => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	combout => \inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\);

-- Location: IOIBUF_X0_Y30_N1
\ALUCtrl[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(21),
	o => \ALUCtrl[21]~input_o\);

-- Location: LCCOMB_X28_Y31_N12
\inst2|q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~13_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ & ((\ALUCtrl[21]~input_o\ & ((!\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[21]~input_o\ & (!\ALUCtrl[25]~input_o\)))) # 
-- (!\inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ & ((\ALUCtrl[25]~input_o\ & ((\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[25]~input_o\ & (\ALUCtrl[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[25]~input_o\,
	datab => \ALUCtrl[21]~input_o\,
	datac => \inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\,
	datad => \ALUCtrl[26]~input_o\,
	combout => \inst2|q~13_combout\);

-- Location: LCCOMB_X28_Y31_N20
\inst2|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~14_combout\ = (\ALUCtrl[27]~input_o\ & (\inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\)) # (!\ALUCtrl[27]~input_o\ & ((\inst2|q~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\,
	datac => \ALUCtrl[27]~input_o\,
	datad => \inst2|q~13_combout\,
	combout => \inst2|q~14_combout\);

-- Location: FF_X28_Y31_N21
\inst2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~14_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(7));

-- Location: LCCOMB_X28_Y31_N6
\inst2|q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~15_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & ((\ALUCtrl[20]~input_o\ & ((!\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[20]~input_o\ & (!\ALUCtrl[25]~input_o\)))) # 
-- (!\inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & ((\ALUCtrl[25]~input_o\ & ((\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[25]~input_o\ & (\ALUCtrl[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \ALUCtrl[20]~input_o\,
	datac => \ALUCtrl[25]~input_o\,
	datad => \ALUCtrl[26]~input_o\,
	combout => \inst2|q~15_combout\);

-- Location: LCCOMB_X28_Y31_N14
\inst2|q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~16_combout\ = (\ALUCtrl[27]~input_o\ & (\inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\)) # (!\ALUCtrl[27]~input_o\ & ((\inst2|q~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datac => \ALUCtrl[27]~input_o\,
	datad => \inst2|q~15_combout\,
	combout => \inst2|q~16_combout\);

-- Location: FF_X28_Y31_N15
\inst2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~16_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(6));

-- Location: LCCOMB_X27_Y30_N18
\inst6|LPM_MUX_component|auto_generated|result_node[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ = (\ALUCtrl[29]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\))) # (!\ALUCtrl[29]~input_o\ & 
-- (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	datac => \ALUCtrl[29]~input_o\,
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	combout => \inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\);

-- Location: IOIBUF_X31_Y73_N8
\ALUCtrl[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(19),
	o => \ALUCtrl[19]~input_o\);

-- Location: LCCOMB_X28_Y31_N0
\inst2|q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~17_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ & ((\ALUCtrl[19]~input_o\ & ((!\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[19]~input_o\ & (!\ALUCtrl[25]~input_o\)))) # 
-- (!\inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ & ((\ALUCtrl[25]~input_o\ & ((\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[25]~input_o\ & (\ALUCtrl[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[25]~input_o\,
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	datac => \ALUCtrl[19]~input_o\,
	datad => \ALUCtrl[26]~input_o\,
	combout => \inst2|q~17_combout\);

-- Location: LCCOMB_X28_Y31_N8
\inst2|q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~18_combout\ = (\ALUCtrl[27]~input_o\ & (\inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\)) # (!\ALUCtrl[27]~input_o\ & ((\inst2|q~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	datac => \ALUCtrl[27]~input_o\,
	datad => \inst2|q~17_combout\,
	combout => \inst2|q~18_combout\);

-- Location: FF_X28_Y31_N9
\inst2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~18_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(5));

-- Location: LCCOMB_X27_Y30_N20
\inst6|LPM_MUX_component|auto_generated|result_node[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ = (\ALUCtrl[29]~input_o\ & (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\)) # (!\ALUCtrl[29]~input_o\ & 
-- ((\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[1]~15_combout\,
	datab => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	datac => \ALUCtrl[29]~input_o\,
	combout => \inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\);

-- Location: LCCOMB_X28_Y31_N18
\inst2|q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~19_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ & ((\ALUCtrl[18]~input_o\ & ((!\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[18]~input_o\ & (!\ALUCtrl[25]~input_o\)))) # 
-- (!\inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ & ((\ALUCtrl[25]~input_o\ & ((\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[25]~input_o\ & (\ALUCtrl[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\,
	datab => \ALUCtrl[18]~input_o\,
	datac => \ALUCtrl[25]~input_o\,
	datad => \ALUCtrl[26]~input_o\,
	combout => \inst2|q~19_combout\);

-- Location: LCCOMB_X27_Y30_N16
\inst2|q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~20_combout\ = (\ALUCtrl[27]~input_o\ & (\inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\)) # (!\ALUCtrl[27]~input_o\ & ((\inst2|q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[27]~input_o\,
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\,
	datad => \inst2|q~19_combout\,
	combout => \inst2|q~20_combout\);

-- Location: FF_X27_Y30_N17
\inst2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~20_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(4));

-- Location: LCCOMB_X25_Y29_N26
\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~35_combout\ = (\ALUCtrl[5]~input_o\ & (\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\ & (\ALUCtrl[2]~input_o\))) # (!\ALUCtrl[5]~input_o\ & 
-- (((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\,
	datab => \ALUCtrl[2]~input_o\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~39_combout\,
	datad => \ALUCtrl[5]~input_o\,
	combout => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~35_combout\);

-- Location: LCCOMB_X25_Y31_N8
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~18_combout\ = (\ALUCtrl[3]~input_o\ & ((\ALUCtrl[2]~input_o\ & ((\ALUCtrl[7]~input_o\))) # (!\ALUCtrl[2]~input_o\ & (\ALUCtrl[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[2]~input_o\,
	datab => \ALUCtrl[13]~input_o\,
	datac => \ALUCtrl[7]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~18_combout\);

-- Location: LCCOMB_X25_Y31_N26
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\ = (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~18_combout\) # ((\ALUCtrl[6]~input_o\ & !\ALUCtrl[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~18_combout\,
	datac => \ALUCtrl[6]~input_o\,
	datad => \ALUCtrl[3]~input_o\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\);

-- Location: LCCOMB_X29_Y31_N20
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~22_combout\ = (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\) # 
-- ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\ & \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\)))) # (!\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\ & 
-- (((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\ & \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~13_combout\,
	datab => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~19_combout\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[14]~23_combout\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[23]~12_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~22_combout\);

-- Location: LCCOMB_X25_Y29_N24
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~23_combout\ = (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~22_combout\) # ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\ & !\ALUCtrl[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[8]~19_combout\,
	datac => \ALUCtrl[4]~input_o\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~22_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~23_combout\);

-- Location: LCCOMB_X25_Y29_N12
\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~28_combout\ = (\ALUCtrl[5]~input_o\ & ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\))) # (!\ALUCtrl[5]~input_o\ & 
-- (\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[5]~input_o\,
	datab => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[16]~23_combout\,
	datad => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~28_combout\,
	combout => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~28_combout\);

-- Location: LCCOMB_X26_Y29_N14
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ = (\ALUCtrl[0]~input_o\ & ((\ALUCtrl[1]~input_o\) # ((\inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~35_combout\)))) # (!\ALUCtrl[0]~input_o\ & (!\ALUCtrl[1]~input_o\ & 
-- ((\inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[0]~input_o\,
	datab => \ALUCtrl[1]~input_o\,
	datac => \inst4|inst|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~35_combout\,
	datad => \inst4|inst2|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~28_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~16_combout\);

-- Location: LCCOMB_X26_Y29_N2
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~20_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\ & (\ALUCtrl[7]~input_o\)) # 
-- (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\ & ((\ALUCtrl[6]~input_o\))))) # (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\ & 
-- (((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\,
	datab => \ALUCtrl[7]~input_o\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~16_combout\,
	datad => \ALUCtrl[6]~input_o\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~20_combout\);

-- Location: LCCOMB_X26_Y29_N28
\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21_combout\ = (\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~20_combout\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~7_combout\) # 
-- ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\)))) # (!\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~20_combout\ & (((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~12_combout\ & 
-- !\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[20]~7_combout\,
	datab => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~20_combout\,
	datac => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[10]~12_combout\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[30]~2_combout\,
	combout => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21_combout\);

-- Location: LCCOMB_X26_Y29_N8
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ = (\ALUCtrl[1]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ & (\ALUCtrl[6]~input_o\)) # 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ & ((\inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21_combout\))))) # (!\ALUCtrl[1]~input_o\ & 
-- (((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[1]~input_o\,
	datab => \ALUCtrl[6]~input_o\,
	datac => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~16_combout\,
	datad => \inst4|inst5|LPM_CLSHIFT_component|auto_generated|sbit_w[24]~21_combout\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\);

-- Location: LCCOMB_X27_Y30_N14
\inst6|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\ALUCtrl[29]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\))) # (!\ALUCtrl[29]~input_o\ & 
-- (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	datac => \ALUCtrl[29]~input_o\,
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~17_combout\,
	combout => \inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X28_Y31_N28
\inst2|q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~21_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & ((\ALUCtrl[17]~input_o\ & ((!\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[17]~input_o\ & (!\ALUCtrl[25]~input_o\)))) # 
-- (!\inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & ((\ALUCtrl[25]~input_o\ & ((\ALUCtrl[26]~input_o\))) # (!\ALUCtrl[25]~input_o\ & (\ALUCtrl[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datab => \ALUCtrl[17]~input_o\,
	datac => \ALUCtrl[25]~input_o\,
	datad => \ALUCtrl[26]~input_o\,
	combout => \inst2|q~21_combout\);

-- Location: LCCOMB_X27_Y30_N10
\inst2|q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|q~22_combout\ = (\ALUCtrl[27]~input_o\ & (\inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\)) # (!\ALUCtrl[27]~input_o\ & ((\inst2|q~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[27]~input_o\,
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datad => \inst2|q~21_combout\,
	combout => \inst2|q~22_combout\);

-- Location: FF_X27_Y30_N11
\inst2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|q~22_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(3));

-- Location: LCCOMB_X28_Y30_N28
\inst5|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|zero~1_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\) # ((\inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\) # (\inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\,
	datad => \inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	combout => \inst5|zero~1_combout\);

-- Location: LCCOMB_X27_Y30_N4
\inst6|LPM_MUX_component|auto_generated|result_node[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ = (\ALUCtrl[29]~input_o\ & (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\)) # (!\ALUCtrl[29]~input_o\ & 
-- ((\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[5]~7_combout\,
	datac => \ALUCtrl[29]~input_o\,
	datad => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	combout => \inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X28_Y31_N30
\inst5|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|zero~0_combout\ = (\inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\) # ((\inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\) # ((\inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\) # 
-- (\inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	datab => \inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\,
	datac => \inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\,
	datad => \inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	combout => \inst5|zero~0_combout\);

-- Location: LCCOMB_X28_Y30_N0
\inst5|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|zero~2_combout\ = (!\inst5|zero~1_combout\ & (!\inst5|zero~0_combout\ & !\inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|zero~1_combout\,
	datac => \inst5|zero~0_combout\,
	datad => \inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\,
	combout => \inst5|zero~2_combout\);

-- Location: FF_X28_Y30_N1
\inst2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|zero~2_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(2));

-- Location: LCCOMB_X27_Y30_N22
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~19_combout\ = (!\ALUCtrl[0]~input_o\ & !\ALUCtrl[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUCtrl[0]~input_o\,
	datad => \ALUCtrl[1]~input_o\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~19_combout\);

-- Location: IOIBUF_X0_Y26_N15
\ALUCtrl[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(28),
	o => \ALUCtrl[28]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\ALUCtrl[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(15),
	o => \ALUCtrl[15]~input_o\);

-- Location: LCCOMB_X28_Y30_N4
\inst7|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = ((!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\ & (\ALUCtrl[24]~input_o\ $ (\ALUCtrl[14]~input_o\)))) # (!\ALUCtrl[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[24]~input_o\,
	datab => \ALUCtrl[14]~input_o\,
	datac => \ALUCtrl[15]~input_o\,
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~3_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X25_Y30_N8
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~18_combout\ = (\ALUCtrl[1]~input_o\ & \ALUCtrl[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[1]~input_o\,
	datad => \ALUCtrl[13]~input_o\,
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~18_combout\);

-- Location: LCCOMB_X25_Y30_N2
\inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\ALUCtrl[15]~input_o\ & ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~1_combout\) # ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~18_combout\) # 
-- (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~1_combout\,
	datab => \ALUCtrl[15]~input_o\,
	datac => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~18_combout\,
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~2_combout\,
	combout => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: IOIBUF_X0_Y33_N15
\ALUCtrl[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUCtrl(24),
	o => \ALUCtrl[24]~input_o\);

-- Location: LCCOMB_X25_Y30_N20
\inst|inst|LPM_ADD_SUB_component|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|_~8_combout\ = \ALUCtrl[14]~input_o\ $ (((\ALUCtrl[24]~input_o\ & \ALUCtrl[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUCtrl[14]~input_o\,
	datac => \ALUCtrl[24]~input_o\,
	datad => \ALUCtrl[15]~input_o\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~8_combout\);

-- Location: LCCOMB_X28_Y30_N24
\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ $ (\inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ $ 
-- (!\inst|inst|LPM_ADD_SUB_component|auto_generated|_~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst|inst|LPM_ADD_SUB_component|auto_generated|_~8_combout\,
	cin => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X28_Y30_N30
\inst7|LPM_MUX_component|auto_generated|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ = (\inst7|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((!\ALUCtrl[28]~input_o\ & (\inst7|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \ALUCtrl[28]~input_o\,
	datac => \inst7|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datad => \inst|inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X29_Y30_N0
\inst7|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (\inst7|LPM_MUX_component|auto_generated|result_node[0]~2_combout\) # ((\inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ & 
-- (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~19_combout\ & \ALUCtrl[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst15|LPM_MUX_component|auto_generated|result_node[0]~13_combout\,
	datab => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[7]~19_combout\,
	datac => \ALUCtrl[28]~input_o\,
	datad => \inst7|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	combout => \inst7|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: FF_X29_Y30_N1
\inst2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(1));

-- Location: FF_X27_Y33_N17
\inst2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|q~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|q\(0));

ww_ALUOut(18) <= \ALUOut[18]~output_o\;

ww_ALUOut(17) <= \ALUOut[17]~output_o\;

ww_ALUOut(16) <= \ALUOut[16]~output_o\;

ww_ALUOut(15) <= \ALUOut[15]~output_o\;

ww_ALUOut(14) <= \ALUOut[14]~output_o\;

ww_ALUOut(13) <= \ALUOut[13]~output_o\;

ww_ALUOut(12) <= \ALUOut[12]~output_o\;

ww_ALUOut(11) <= \ALUOut[11]~output_o\;

ww_ALUOut(10) <= \ALUOut[10]~output_o\;

ww_ALUOut(9) <= \ALUOut[9]~output_o\;

ww_ALUOut(8) <= \ALUOut[8]~output_o\;

ww_ALUOut(7) <= \ALUOut[7]~output_o\;

ww_ALUOut(6) <= \ALUOut[6]~output_o\;

ww_ALUOut(5) <= \ALUOut[5]~output_o\;

ww_ALUOut(4) <= \ALUOut[4]~output_o\;

ww_ALUOut(3) <= \ALUOut[3]~output_o\;

ww_ALUOut(2) <= \ALUOut[2]~output_o\;

ww_ALUOut(1) <= \ALUOut[1]~output_o\;

ww_ALUOut(0) <= \ALUOut[0]~output_o\;
END structure;


