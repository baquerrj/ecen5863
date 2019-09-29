--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 3 Module 1 Course 2                   --
--                                                                            --
--------------------------------------------------------------------------------
--
-- @file find_errors.vhd
-- @brief Application Assignment 2-001 Example code with errors to be found
-- @version: 1.0
-- Date of current revision:  @date YYYY-MM-DD
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
--  Designed for: [Customer]
--                [Address]
--                [City, ST ZIP]
--                [www.customer, phone number]
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

entity find_errors is port (
    a: bit_vector(0 to 3);
    b: out std_logic_vector(3 downto 0);
    c: in bit_vector(3 downto 0));
end find_errors;

architecture not_good of find_errors is
  constant f : std_logic_vector(3 downto 0) := "0101";
  begin
  my_label: process(c,a)
    begin
    if c = x"F" then
      b <= to_stdlogicvector(a);
    else
     b <= f;
    end if;
  end process;
end not_good;

