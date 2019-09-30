--------------------------------------------------------------------------------
--                                                                            --
--               Application Assignment 4 Module 1 Course 2                   --
--                                                                            --
--------------------------------------------------------------------------------
--
-- @file HW3P4.vhd
-- @brief Application Assignment 2-001 Example code with errors to be found
-- @version: 1.0
-- Date of current revision:  @date 2019-09-29
-- Target FPGA: [Intel Altera MAX10]
-- Tools used: [Quartus Prime 16.1] for editing and synthesis
--             [Modeltech ModelSIM 10.4a Student Edition] for simulation
--             [Quartus Prime 16.1]  for place and route if applied
--
--  Functional Description:  This file contains the VHDL which describes the
--               FPGA implementation of a Majority Vote Circuit. The inputs are
--               signals A, B, C with one output Y that is true only if at
--               least 2 of the inputs are true.

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

entity Majority is port (
    A, B, C: in std_logic;
    Y: out std_logic);
end Majority;

architecture majority_arch of Majority is
    signal temp1 : std_logic;
    signal temp2 : std_logic;
    signal temp3 : std_logic;

    begin
        temp1 <= A and B;
        temp2 <= B and C;
        temp3 <= A and C;
        Y <= temp1 or temp2 or temp3;
end architecture majority_arch;
