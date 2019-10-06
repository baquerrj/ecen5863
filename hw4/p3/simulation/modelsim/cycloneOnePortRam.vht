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
-- Generated on "10/04/2019 22:07:37"

-- Vhdl Test Bench template for design  :  cycloneOnePortRam
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY cycloneOnePortRam_tb IS
end cycloneOnePortRam_tb;
architecture cycloneOnePortRam_arch_tb OF cycloneOnePortRam_tb IS
-- constants
-- signals
signal address : STD_LOGIC_VECTOR(6 DOWNTO 0) := "0000000";
signal clock : STD_LOGIC := '0';
signal data : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
signal q : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
signal wren : STD_LOGIC := '0';

-- signal to faciliate incrementing address
signal maddr : unsigned(6 downto 0) := "0000000";

constant T : time := 10 ns;
signal   i : integer := 0;
signal   w_done : boolean := false;

begin
	-- concurrent statements
	address <= std_logic_vector(maddr);
	data <= "0" & std_logic_vector(maddr);

	uut : entity work.cycloneOnePortRam
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	data => data,
	q => q,
	wren => wren
	);


	clock <= not clock after T/2;
main : process(clock)
begin
	if (i = 0) then
		w_done <= false;
		report "data = " & to_hstring(data) severity note;
		report "maddr = " & to_hstring(maddr) severity note;
		report "TESTBENCH INITIALIZED";
	elsif (i = 50) then
		w_done <= true;
	elsif (i = 100) then
		report "SIMULATION COMPLETED";
ls		std.env.finish;
	end if;
	i <= i + 1;
end process main;

write_process : process(i)
begin
	if (w_done = true) then
		wren  <= '0';
		if ((i mod 2) = 0) then
			maddr <= maddr - 1;
		end if;
	else
		wren <= '1';
		if ((i mod 2) = 0) then
			maddr <= maddr + 1;
		end if;
	end if;
end process write_process;

read_process : process(i)
begin
	if (w_done = true) then
		if (wren = '0') then
			assert data = q
			report "data = " & to_hstring(data) & " and q = " & to_hstring(q) severity error;
		end if;
	end if;
end process read_process;

end architecture cycloneOnePortRam_arch_tb;
