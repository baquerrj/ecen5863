--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 3 Module 1 Course 2                   --
--                                                                            --
--------------------------------------------------------------------------------
--
-- @file HW3P3.vht
-- @brief Application Assignment 2-001 Example code with errors to be found
-- @version: 1.0
-- Date of current revision:  @date 2019-09-29
-- Target FPGA: [Intel Altera MAX10]
-- Tools used: [Quartus Prime 16.1] for editing and synthesis
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation
--             [Quartus Prime 16.1]  for place and route if applied
--
--  Functional Description:  This file contains the VHDL which describes the
--               FPGA implementation of a 4-bit mux. The inputs are a, 4-bit
--               vector, and a fixed 4-bit number, with c as the select and b
--               as the output. The output is of type std_logic_vector, which
--               means a conversion function is required.
--  Hierarchy:  There is only one level in this simple design.
--

--  Designed by:  @author Roberto Baquerizo
--                [CU Boulder]
--                [roba8460@colorado.edu]
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

entity HW3P3_tb is
end entity HW3P3_tb;

architecture HW3P3_tb_arch of HW3P3_tb is
    signal a: bit_vector(0 to 3) := "0000";
    signal b: std_logic_vector(3 downto 0) := "0000";
    signal c: bit_vector(3 downto 0) := "0000";

    constant f: std_logic_vector(3 downto 0) := "0101";
    signal stim_done : boolean := false;
    component find_errors
        port (
        a : in  bit_vector(0 to 3);
        b : out std_logic_vector(3 downto 0);
        c : in  bit_vector(3 downto 0)
        );
    end component;

    begin -- architecture
    uut : entity work.HW3P3
    port map (
        a => a,
        b => b,
        c => c
    );

    data_check : process
    begin
        wait until stim_done;
        if c = x"F" then
            assert b = to_stdlogicvector(a)
	            report "b /= a but is " & to_hstring(b) & " c is " & to_hstring(c) severity note;
        else
            assert b = f
                report "b /= 0101 but is " & to_hstring(b) &  " c is " & to_hstring(c) severity note;
        end if;
    end process data_check;

    stim_process : process
        constant period : time := 20 ns;
        begin
            c <= x"0";
            -- loop over values with c set to 0 so that b always gets 0101 value
            for i in 0 to 15 loop
                a <= to_bitvector(std_logic_vector(to_unsigned(i, a'length)));
                stim_done <= true;
                wait for period;
                stim_done <= false;
            end loop;

            c <= x"F";
            -- loop over values with c set to F so that b always gets value from a
            for i in 0 to 15 loop
                stim_done <= false;
                a <= to_bitvector(std_logic_vector(to_unsigned(i, a'length)));
                wait for period;
		        stim_done <= true;
            end loop;

            -- loop over values but alternate between setting and unsetting select
            for i in 0 to 15 loop
                stim_done <= false;
                case c is
                    when x"0" =>
                        c <= x"F";
                    when x"F" =>
                        c <= x"0";
                    when others =>
                        c <= x"0";
                end case;
                a <= to_bitvector(std_logic_vector(to_unsigned(i, a'length)));
                wait for period;
                stim_done <= true;
            end loop;
            wait;
    end process stim_process;
end architecture HW3P3_tb_arch;
