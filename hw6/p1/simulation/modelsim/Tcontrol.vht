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
-- Generated on "10/22/2019 20:23:12"

-- Vhdl Test Bench template for design  :  Tcontrol
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

library ieee;
use ieee.std_logic_1164.all;

entity Tcontrol_tb is
end Tcontrol_tb;
architecture Tcontrol_arch of Tcontrol_tb is
-- constants
constant T : time := 15 ns;
constant cycles : integer := 10;
-- signals
signal clock : std_logic := '0';
signal dirA : std_logic_vector(1 downto 0) := "00";
signal dirB : std_logic_vector(1 downto 0) := "00";
signal reset_n : std_logic := '1'; -- reset to rising_edge(clock) in ABout state
signal sensor1 : std_logic := '0';
signal sensor2 : std_logic := '0';
signal sensor3 : std_logic := '0';
signal sensor4 : std_logic := '0';
signal sensor5 : std_logic := '0';
signal switch1 : std_logic := '0';
signal switch2 : std_logic := '0';
signal switch3 : std_logic := '0';

-- boolean to trigger stimulus
signal ready : boolean := false;

-- internal state of SM entity
type state_type is ( ABout, Ain, Bin, Astop, Bstop );
signal state : state_type := ABout;
signal expected : state_type := ABout;

begin
	uut : entity work.Tcontrol
	port map (
-- list connections between master ports and signals
	clock => clock,
	dirA => dirA,
	dirB => dirB,
	reset_n => reset_n,
	sensor1 => sensor1,
	sensor2 => sensor2,
	sensor3 => sensor3,
	sensor4 => sensor4,
	sensor5 => sensor5,
	switch1 => switch1,
	switch2 => switch2,
	switch3 => switch3
	);

clock <= not clock after T/2;

-- continous assignment of internal Tcontrol state (needs VHDL 2008)
state <= << signal .Tcontrol_tb.uut.state : state_type >>;

main : process
begin
	reset_n <= '0';
	for i in 0 to cycles loop
		wait until rising_edge(clock);
		ready <= true;
		wait until rising_edge(clock);
		ready <= false;
	end loop;
	std.env.finish;
end process main;

-- just print out the state when it changes
state_print_process : process ( state )
begin
	case state is
		when ABout =>
			report "State is ABout";
		when Ain =>
			report "State is Ain";
		when Bin =>
			report "State is Bin";
		when Astop =>
			report "State is Astop";
		when Bstop =>
			report "State is Bstop";
		when others => report "UNDEFINED" severity failure;
	end case;
end process state_print_process;

-- check expected state against actual
state_check_process : process ( state )
begin
	assert (expected = state)
		report "Expected state does not match actual!" severity failure;
	if state = ABout then
		assert (dirA = "10")
			report "Unexpected direction for Train A" severity error;
		assert (dirB = "01")
			report "Unexepected direction for Train B" severity error;
	elsif state = Ain then
		assert (dirA = "10")
			report "Unexpected direction for Train A" severity error;
		assert (dirB = "01")
			report "Unexepected direction for Train B" severity error;
	elsif state = Bin then
		assert (dirA = "10")
			report "Unexpected direction for Train A" severity error;
		assert (dirB = "01")
			report "Unexepected direction for Train B" severity error;
		assert (switch1 = '1')
			report "SW1 should be closed!" severity error;
		assert (switch2 = '1')
			report "SW2 should be closed!" severity error;
	elsif state = Astop then
		assert (dirA = "00")
			report "Train A is not stopped in state Astop!" severity error;
		assert (dirB = "01")
			report "Unexepected direction for Train B" severity error;
		assert (switch1 = '1')
			report "SW1 should be closed!" severity error;
		assert (switch2 = '1')
			report "SW2 should be closed!" severity error;
	elsif state = Bstop then
		assert (dirA = "10")
			report "Unexepected direction for Train B" severity error;
		assert (dirB = "00")
			report "Train B is not stopped in state Bstop" severity error;
		assert (switch1 = '0')
			report "SW1 should be open!" severity error;
		assert (switch2 = '0')
			report "SW2 should be open!" severity error;
	end if;
end process state_check_process;

stimulus_process : process
begin
	wait until ready;
	-- transition to Ain
	sensor4 <= '1';
	expected <= Ain;
	wait until ready;
	sensor1 <= '1'; -- transition back to ABout
	sensor4 <= '0';
	expected <= ABout;
	wait until ready;
	sensor1 <= '0';
	sensor4 <= '1';
	expected <= Ain;
	wait until ready;

	sensor2 <= '1';
	expected <= Bstop;
	wait until ready;
	wait until ready;

	sensor1 <= '1';
	-- transition to Bin
	expected <= Bin;
	wait until ready;

	-- transition to Astop because sensor4 is still set
	expected <= Astop;
	wait until ready;

	sensor4 <= '0';
	wait until ready;

	sensor1 <= '0';
	sensor2 <= '0';
	sensor3 <= '1';
	expected <= Ain;
	wait until ready;

	sensor1 <= '1';
	expected <= ABout;
	wait until ready;

	sensor1 <= '0';
	sensor2 <= '1';
	sensor3 <= '0';
	sensor4 <= '0';
	expected <= Bin;
	wait until ready;
wait;
end process stimulus_process;

end Tcontrol_arch;
