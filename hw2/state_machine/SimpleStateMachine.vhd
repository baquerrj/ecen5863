-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
-- CREATED		"Sun Sep 15 14:31:37 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SimpleStateMachine IS 
	PORT
	(
		Y :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		X :  OUT  STD_LOGIC
	);
END SimpleStateMachine;

ARCHITECTURE bdf_type OF SimpleStateMachine IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	DFF_inst :  STD_LOGIC;


BEGIN 



PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_inst <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	X <= DFF_inst;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(Y);



END bdf_type;