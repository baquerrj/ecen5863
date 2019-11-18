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
-- Generated on "09/29/2019 12:41:48"

-- Vhdl Test Bench template for design  :  comparator2
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

library ieee;
use ieee.std_logic_1164.all;

entity comparator2_vhd_tb is
end comparator2_vhd_tb;
architecture comparator2_arch of comparator2_vhd_tb is
-- constants
-- signals
signal A : std_logic_vector(1 downto 0);
signal B : std_logic_vector(1 downto 0);
signal Equals : std_logic;
component comparator2
	port (
	A : in std_logic_vector(1 downto 0);
	B : in std_logic_vector(1 downto 0);
	Equals : out std_logic
	);

end	component;
	begin
	i1 : comparator2
	port map (
-- list connections between master ports and signals
	A => A,
	B => B,
	Equals => Equals
	);
init : process
-- variable declarations
begin
        -- code that executes only once
wait;
end process init;
always : process
-- optional sensitivity list
-- (        )
-- variable declarations
begin
        -- code executes for every event on sensitivity list
wait;
end process always;
end comparator2_arch;
