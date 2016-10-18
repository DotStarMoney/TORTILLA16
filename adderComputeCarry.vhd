
library ieee;                                   
use ieee.std_logic_1164.all;

entity adderComputeCarry is
	port(
		addsub : in std_logic;
		ahi    : in std_logic;
		bhi    : in std_logic;
		outhi  : in std_logic;
		sgnd   : in std_logic;
		carry  : out std_logic
	);
end adderComputeCarry;

architecture struc of adderComputeCarry is
	begin
		carry <= ((not sgnd) and outhi) or (sgnd and (((not addsub) and ahi and (not bhi) and (not outhi)) or 
																	 (addsub and (not ahi) and (not bhi) and outhi)       or
																	 (addsub and ahi and bhi and (not outhi))             or
																	 ((not addsub) and (not ahi) and bhi and outhi)));
end struc;