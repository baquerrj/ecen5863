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
-- Generated on "09/29/2019 17:04:56"

-- Vhdl Test Bench template for design  :  Majority
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

library ieee;
use ieee.std_logic_1164.all;

entity Majority_tb is
end Majority_tb;

architecture Majority_arch of Majority_tb is
	signal A : std_logic := '0';
	signal B : std_logic := '0';
	signal C : std_logic := '0';
	signal Y : std_logic := '0';

	signal stim_done : boolean := false;
	signal expected  : std_logic := '0';

	constant period : time := 20 ns;

	component Majority
		port (
		A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		Y : out std_logic
		);
	end component;

	procedure post_and_wait (signal stim_done : inout boolean) is
	begin
		wait for period;
		stim_done <= true;
		wait for period;
	end procedure post_and_wait;

	begin -- architecture
	uut : entity work.Majority
	port map (
		A => A,
		B => B,
		C => C,
		Y => Y
	);

	data_check : process
	begin
		wait until stim_done;
		assert Y = expected
			report "Expected " & std_logic'image(expected) &
				   " but got " & std_logic'image(Y) severity error;
	end process data_check;

	stim_process : process
		begin
			stim_done <= false;
			-- 000
			A <= '0';
			B <= '0';
			C <= '0';
			expected <= '0';
			post_and_wait(stim_done);

			-- 001
			stim_done <= false;
			A <= '0';
			B <= '0';
			C <= '1';
			expected <= '0';
			post_and_wait(stim_done);

			-- 010
			stim_done <= false;
			A <= '0';
			B <= '1';
			C <= '0';
			expected <= '0';
			post_and_wait(stim_done);

			-- 011
			stim_done <= false;
			A <= '0';
			B <= '1';
			C <= '1';
			expected <= '1';
			post_and_wait(stim_done);

			-- 100
			stim_done <= false;
			A <= '1';
			B <= '0';
			C <= '0';
			expected <= '0';
			post_and_wait(stim_done);

			-- 101
			stim_done <= false;
			A <= '1';
			B <= '0';
			C <= '1';
			expected <= '1';
			post_and_wait(stim_done);

			-- 110
			stim_done <= false;
			A <= '1';
			B <= '1';
			C <= '0';
			expected <= '1';
			post_and_wait(stim_done);

			-- 111
			stim_done <= false;
			A <= '1';
			B <= '1';
			C <= '1';
			expected <= '1';
			post_and_wait(stim_done);
			wait;
	end process stim_process;

end architecture Majority_arch;
