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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to
-- suit user's needs .Comments are provided in each section to help the user
-- fill out necessary details.
-- ***************************************************************************
-- Generated on "11/06/2019 18:06:54"

-- Vhdl Test Bench template for design  :  Counter
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

library ieee;
use ieee.std_logic_1164.all;

entity Counter_tb is
end Counter_tb;
architecture Counter_arch of Counter_tb is

-- signals
signal CE : std_logic := '1';
signal CLK : std_logic := '0';
signal Q : std_logic_vector(15 DOWNTO 0) := x"0000";
signal RESET : std_logic := '1';
signal TC : std_logic := '0';

constant period : time := 20 ns;

begin
	uut : entity work.Counter
	port map (
-- list connections between master ports and signals
	CE		=> CE,
	CLK 	=> CLK,
	Q 		=> Q,
	RESET => RESET,
	TC 	=> TC
	);

	CLK <= not CLK after period/2;

init : process
begin
	wait for (period * 20);
	CE <= '0';
	wait for (period * 20);
	CE <= '1';
	wait;
end process init;

end Counter_arch;
