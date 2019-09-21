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
-- Generated on "09/14/2019 22:00:07"

-- Vhdl Test Bench template for design  :  SimpleStateMachine
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library vunit_lib;
context vunit_lib.vunit_context;

library osvvm;
use osvvm.RandomPkg.all;


entity SimpleStateMachine_vhd_tb is
	generic (runner_cfg : string := runner_cfg_default);
end SimpleStateMachine_vhd_tb;

architecture SimpleStateMachine_arch of SimpleStateMachine_vhd_tb is
	-- constants
	constant T : time := 10 ns;
	constant num_cycles : integer := 1000;
	-- persistency
	signal PERSISTENCY : integer := 0;
	-- signals
	signal CLK : std_logic := '0';
	signal X   : std_logic := '0';
	signal Y   : std_logic := '0';

	-- booleans
	signal start, data_check_done, stimuli_done : boolean := false;
	signal state : std_logic := '0';
	signal current_state : std_logic := '0';

begin
	set_stop_level(failure);
	main : process

	procedure run_test is
	begin
		for i in 0 to num_cycles loop
			wait until rising_edge(CLK);
			start <= true;

			--wait until (stimuli_done and
			--			data_check_done and
			--			rising_edge(CLK));

			wait until rising_edge(CLK);
			start <= false;
		end loop;
	end procedure run_test;

	begin
		test_runner_setup(runner, runner_cfg);
		run_test;
		test_runner_cleanup(runner);
		wait;
	end process main;

	data_check_process : process
	begin
		wait until start and rising_edge(CLK);
		data_check_done <= false;
		if (PERSISTENCY > 1) then
			PERSISTENCY <= 0;
			state <= not X;
			check( state = current_state, "Inconsistent states!");
		else
			PERSISTENCY <= PERSISTENCY + 1;
		end if;
		data_check_done <= true;
	end process data_check_process;

	stimuli_process : process
	variable rnd : RandomPType;
	variable DataSlv : std_logic_vector(0 downto 0) := rnd.RandSlv(0, 1, 1);
	begin
		wait until start and rising_edge(CLK);
		DataSlv := rnd.RandSlv(0, 1, 1);
		stimuli_done <= false;
		if (PERSISTENCY = 0) then
			case X is
				when '0' =>
					current_state <= '1';
					Y <= DataSlv(0);
					report "DataSlv(0) = " & std_logic'image(DataSlv(0));
				when '1' =>
					current_state <= '0';
					Y <= DataSlv(0);
					report "DataSlv(0) = " & std_logic'image(DataSlv(0));
				when others =>
					current_state <= '0';
					Y <= DataSlv(0);
					report "DataSlv(0) = " & std_logic'image(DataSlv(0));
			end case;
		end if;
		stimuli_done <= true;
	end process stimuli_process;

CLK <= not CLK after T/2;
UUT : entity work.SimpleStateMachine
	port map (
		-- list connections between master ports and signals
		CLK => CLK,
		X   => X,
		Y   => Y
	);
end architecture SimpleStateMachine_arch;