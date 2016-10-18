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
-- CREATED		"Wed Dec 10 23:13:56 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY regile IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		r_gsel1 :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		r_gsel2 :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		r_thread :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		w_data :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		w_modePC :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		w_modeSP :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		w_offset :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		w_sel :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		w_status :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		w_thread :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		r_gout1 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		r_gout2 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		r_pc :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		r_sp :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		r_stat :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END regile;

ARCHITECTURE bdf_type OF regile IS 

COMPONENT lpm_mux7
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux8
	PORT(data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alt3pram
GENERIC (INDATA_ACLR : STRING;
			INDATA_REG : STRING;
			NUMWORDS : INTEGER;
			OUTDATA_ACLR_B : STRING;
			OUTDATA_ACLR_A : STRING;
			OUTDATA_REG_B : STRING;
			RDADDRESS_ACLR_A : STRING;
			RDADDRESS_ACLR_B : STRING;
			RDADDRESS_REG_A : STRING;
			RDADDRESS_REG_B : STRING;
			RDCONTROL_ACLR_A : STRING;
			RDCONTROL_ACLR_B : STRING;
			RDCONTROL_REG_A : STRING;
			RDCONTROL_REG_B : STRING;
			WIDTH : INTEGER;
			WIDTHAD : INTEGER;
			WRITE_ACLR : STRING;
			WRITE_REG : STRING
			);
	PORT(aclr : IN STD_LOGIC;
		 rden_b : IN STD_LOGIC;
		 rden_a : IN STD_LOGIC;
		 outclock : IN STD_LOGIC;
		 outclocken : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 inclock : IN STD_LOGIC;
		 inclocken : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
		 rdaddress_a : IN STD_LOGIC_VECTOR(WIDTHAD-1 DOWNTO 0);
		 rdaddress_b : IN STD_LOGIC_VECTOR(WIDTHAD-1 DOWNTO 0);
		 wraddress : IN STD_LOGIC_VECTOR(WIDTHAD-1 DOWNTO 0);
		 qa : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
		 qb : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT z_abs
GENERIC (BIT_WIDTH : INTEGER
			);
	PORT(data : IN STD_LOGIC_VECTOR(BIT_WIDTH-1 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(BIT_WIDTH-1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_decode1
	PORT(data : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 eq0 : OUT STD_LOGIC;
		 eq1 : OUT STD_LOGIC;
		 eq2 : OUT STD_LOGIC;
		 eq3 : OUT STD_LOGIC;
		 eq4 : OUT STD_LOGIC;
		 eq5 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_mux5
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_add_sub5
	PORT(add_sub : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_mux6
	PORT(data0x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_add_sub6
	PORT(add_sub : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT encode4_2
	PORT(line0 : IN STD_LOGIC;
		 line1 : IN STD_LOGIC;
		 line2 : IN STD_LOGIC;
		 line3 : IN STD_LOGIC;
		 lineout : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_constant0
	PORT(		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_constant1
	PORT(		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_constant2
	PORT(		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_constant3
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_constant4
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_constant5
	PORT(		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT signextend8_16
	PORT(data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT flop16xn
GENERIC (BIT_WIDTH : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 ce : IN STD_LOGIC;
		 we : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(BIT_WIDTH-1 DOWNTO 0);
		 sel_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sel_out : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(BIT_WIDTH-1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	abs_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	abs_in_two :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	gpaddr :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	pc_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	r_gsel1_in :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	r_gsel2_in :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	r_thread_in :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	sp_out :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_1 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	GDFX_TEMP_SIGNAL_2 :  STD_LOGIC_VECTOR(5 DOWNTO 0);

BEGIN 
SYNTHESIZED_WIRE_36 <= '1';

GDFX_TEMP_SIGNAL_0 <= (r_thread_in(3 DOWNTO 0) & r_gsel1_in(1 DOWNTO 0));
GDFX_TEMP_SIGNAL_1 <= (r_thread_in(3 DOWNTO 0) & r_gsel2_in(1 DOWNTO 0));
GDFX_TEMP_SIGNAL_2 <= (w_thread(3 DOWNTO 0) & gpaddr(1 DOWNTO 0));


b2v_aiosdn : lpm_mux7
PORT MAP(sel => SYNTHESIZED_WIRE_0,
		 data0x => SYNTHESIZED_WIRE_1,
		 data1x => w_data(7 DOWNTO 0),
		 result => SYNTHESIZED_WIRE_33);


b2v_anst : lpm_mux8
PORT MAP(data0x => SYNTHESIZED_WIRE_2,
		 data1x => SYNTHESIZED_WIRE_3,
		 data2x => SYNTHESIZED_WIRE_4,
		 data3x => w_offset,
		 sel => w_modeSP,
		 result => abs_in_two);


SYNTHESIZED_WIRE_18 <= NOT(abs_in_two(7));



b2v_inst : alt3pram
GENERIC MAP(INDATA_ACLR => "ON",
			INDATA_REG => "INCLOCK",
			NUMWORDS => 64,
			OUTDATA_ACLR_B => "ON",
			OUTDATA_ACLR_A => "ON",
			OUTDATA_REG_B => "UNREGISTERED",
			RDADDRESS_ACLR_A => "ON",
			RDADDRESS_ACLR_B => "ON",
			RDADDRESS_REG_A => "OUTCLOCK",
			RDADDRESS_REG_B => "OUTCLOCK",
			RDCONTROL_ACLR_A => "ON",
			RDCONTROL_ACLR_B => "ON",
			RDCONTROL_REG_A => "OUTCLOCK",
			RDCONTROL_REG_B => "OUTCLOCK",
			WIDTH => 8,
			WIDTHAD => 6,
			WRITE_ACLR => "ON",
			WRITE_REG => "INCLOCK"
			)
PORT MAP(aclr => rst,
		 rden_b => SYNTHESIZED_WIRE_36,
		 rden_a => SYNTHESIZED_WIRE_36,
		 outclock => rst,
		 outclocken => SYNTHESIZED_WIRE_36,
		 wren => SYNTHESIZED_WIRE_8,
		 inclock => clk,
		 inclocken => SYNTHESIZED_WIRE_36,
		 data => w_data(7 DOWNTO 0),
		 rdaddress_a => GDFX_TEMP_SIGNAL_0,
		 rdaddress_b => GDFX_TEMP_SIGNAL_1,
		 wraddress => GDFX_TEMP_SIGNAL_2,
		 qa => r_gout1,
		 qb => r_gout2);


b2v_inst1 : z_abs
GENERIC MAP(BIT_WIDTH => 16
			)
PORT MAP(data => abs_in,
		 result => SYNTHESIZED_WIRE_13);



b2v_inst16 : lpm_decode1
PORT MAP(data => w_sel,
		 eq0 => SYNTHESIZED_WIRE_10,
		 eq1 => SYNTHESIZED_WIRE_0,
		 eq2 => SYNTHESIZED_WIRE_37,
		 eq3 => SYNTHESIZED_WIRE_40,
		 eq4 => SYNTHESIZED_WIRE_38,
		 eq5 => SYNTHESIZED_WIRE_39);


b2v_inst17 : lpm_mux5
PORT MAP(sel => SYNTHESIZED_WIRE_10,
		 data0x => SYNTHESIZED_WIRE_11,
		 data1x => w_data,
		 result => SYNTHESIZED_WIRE_30);


b2v_inst19 : lpm_add_sub5
PORT MAP(add_sub => SYNTHESIZED_WIRE_12,
		 dataa => pc_out,
		 datab => SYNTHESIZED_WIRE_13,
		 result => SYNTHESIZED_WIRE_11);


b2v_inst2 : z_abs
GENERIC MAP(BIT_WIDTH => 8
			)
PORT MAP(data => abs_in_two,
		 result => SYNTHESIZED_WIRE_19);


b2v_inst20 : lpm_mux6
PORT MAP(data0x => SYNTHESIZED_WIRE_14,
		 data1x => SYNTHESIZED_WIRE_15,
		 data2x => SYNTHESIZED_WIRE_16,
		 data3x => SYNTHESIZED_WIRE_17,
		 sel => w_modePC,
		 result => abs_in);


SYNTHESIZED_WIRE_12 <= NOT(abs_in(15));



b2v_inst24 : lpm_add_sub6
PORT MAP(add_sub => SYNTHESIZED_WIRE_18,
		 dataa => sp_out,
		 datab => SYNTHESIZED_WIRE_19,
		 result => SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_37 OR SYNTHESIZED_WIRE_38 OR SYNTHESIZED_WIRE_39 OR SYNTHESIZED_WIRE_40;


b2v_inst28 : encode4_2
PORT MAP(line0 => SYNTHESIZED_WIRE_37,
		 line1 => SYNTHESIZED_WIRE_40,
		 line2 => SYNTHESIZED_WIRE_38,
		 line3 => SYNTHESIZED_WIRE_39,
		 lineout => gpaddr);


b2v_inst30 : lpm_constant0
PORT MAP(		 result => SYNTHESIZED_WIRE_2);


b2v_inst31 : lpm_constant1
PORT MAP(		 result => SYNTHESIZED_WIRE_3);


b2v_inst32 : lpm_constant2
PORT MAP(		 result => SYNTHESIZED_WIRE_4);


b2v_inst33 : lpm_constant3
PORT MAP(		 result => SYNTHESIZED_WIRE_14);


b2v_inst34 : lpm_constant4
PORT MAP(		 result => SYNTHESIZED_WIRE_15);


b2v_inst35 : lpm_constant5
PORT MAP(		 result => SYNTHESIZED_WIRE_16);


b2v_inst432 : signextend8_16
PORT MAP(data_in => w_offset,
		 data_out => SYNTHESIZED_WIRE_17);


b2v_Program_Counters : flop16xn
GENERIC MAP(BIT_WIDTH => 16
			)
PORT MAP(clk => clk,
		 rst => rst,
		 ce => SYNTHESIZED_WIRE_36,
		 we => SYNTHESIZED_WIRE_36,
		 d => SYNTHESIZED_WIRE_30,
		 sel_in => w_thread,
		 sel_out => r_thread,
		 q => pc_out);


b2v_Stack_Pointers : flop16xn
GENERIC MAP(BIT_WIDTH => 8
			)
PORT MAP(clk => clk,
		 rst => rst,
		 ce => SYNTHESIZED_WIRE_36,
		 we => SYNTHESIZED_WIRE_36,
		 d => SYNTHESIZED_WIRE_33,
		 sel_in => w_thread,
		 sel_out => r_thread,
		 q => sp_out);


b2v_States : flop16xn
GENERIC MAP(BIT_WIDTH => 8
			)
PORT MAP(clk => clk,
		 rst => rst,
		 ce => SYNTHESIZED_WIRE_36,
		 we => SYNTHESIZED_WIRE_36,
		 d => w_status,
		 sel_in => w_thread,
		 sel_out => r_thread,
		 q => r_stat);

r_thread_in <= r_thread;
r_gsel1_in <= r_gsel1;
r_gsel2_in <= r_gsel2;
r_pc <= pc_out;
r_sp <= sp_out;

END bdf_type;