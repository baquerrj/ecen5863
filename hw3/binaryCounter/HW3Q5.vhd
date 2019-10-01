--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 4 Module 1 Course 2                   --
--                                                                            --
--------------------------------------------------------------------------------
--
-- @file HW3Q5.vhd
-- @brief a VHDL model of the 74LS163 4-bit binary counter
-- @version: 1.0
-- Date of current revision:  @date 2019-09-29
-- Target FPGA: [Intel Altera MAX10]
-- Tools used: [Quartus Prime 16.1] for editing and synthesis
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation
--             [Quartus Prime 16.1]  for place and route if applied
--
--  Functional Description:  This file contains the VHDL which describes the
--               FPGA implementation of the 74LS163 4-bit binary counter. The
--               74LS163 counts modulo 16. It has a Synchronous Reset (Clear) input
--               that overrides all other control inputs, but is active only
--               during the rising clock edge.
--
--  Hierarchy:  There is only one level in this simple design.
--
--  Designed by:  @author Roberto Baquerizo
--                CU Boulder
--                roba8460@colorado.edu
--
--      Copyright (c) 2018 by Tim Scherr
--
-- Redistribution, modification or use of this software in source or binary
-- forms is permitted as long as the files maintain this copyright. Users are
-- permitted to modify this and use it to learn about the field of HDl code.
-- Tim Scherr and the University of Colorado are not liable for any misuse
-- of this material.
------------------------------------------------------------------------------
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HW3Q5 is port (
   CP: 	in std_logic; 	-- clock
   SR:	in std_logic;  -- Active low, synchronous reset
   P:    in std_logic_vector(3 downto 0);  -- Parallel input
   PE:   in std_logic;  -- Parallel Enable (Load)
   CEP:  in std_logic;  -- Count enable parallel input
   CET:  in std_logic; -- Count enable trickle input
   Q:    out std_logic_vector(3 downto 0);
   TC:   out std_logic  -- Terminal Count
);
end entity HW3Q5;

architecture HW5Q5_arch of HW3Q5 is
   -- CE (Count Enable) is true when (CEP and CET and PE)
   signal CE : std_logic := '0';
	-- interal signal to hold value of Q
	signal counter : unsigned(3 downto 0) := "0000";

begin
	-- concurrent statments
	Q <= std_logic_vector(counter);
	CE <= '1' when ((CEP='1') and (CET='1') and
						(PE='1')) else '0';
   TC <= '1' when ((CET='1') and (counter="1111")) else '0';

	-- main process checks input signals on rising clock edge
	main : process(CP)
   begin
      if rising_edge(CP) then
         if SR = '0' then
				-- synchronous reset
            counter <= "0000";
         elsif PE = '0' then
				-- parallel load inputs to counter value
            for i in counter'range loop
               counter(i) <= P(i);
            end loop;
         elsif CE = '1' then
				-- normal operation (increment counter)
				counter <= counter + 1;
			end if;
      end if;
	end process main;
end architecture HW5Q5_arch;
