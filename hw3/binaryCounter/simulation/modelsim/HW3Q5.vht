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

-- Vhdl Test Bench template for design  :  HW3Q5
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HW3Q5_tb is
end entity HW3Q5_tb;

architecture HW2Q5_arch_tb of HW3Q5_tb is
   signal CP: 	std_logic := '0'; -- clock
   signal SR:	std_logic := '1'; -- Active low, synchronous reset
   signal P:    std_logic_vector(3 downto 0) := "0000";   -- Parallel input
   signal PE:   std_logic := '1'; -- Parallel Enable (Load)
   signal CEP:  std_logic := '0'; -- Count enable parallel input
   signal CET:  std_logic := '0'; -- Count enable trickle input
   signal Q:    std_logic_vector(3 downto 0) := "0000";
   signal TC:   std_logic := '0';  -- Terminal Count

   signal stim_done  : boolean := false;
   signal first_time : boolean := true;
   signal data_check_done : boolean:= true;
   signal persistency : integer := 0;
   signal expected   : std_logic_vector(3 downto 0) := "0000";
   constant period : time := 20 ns;
   constant cycles : integer := 10;

begin -- arhitecture
   data_check_process : process
   begin
      wait until stim_done and rising_edge(CP);
         data_check_done <= false;
         if (persistency > 1) then
            if SR = '0' then
               assert Q = expected
               report "Reset expected but Q is " & to_hstring(Q) severity error;
            elsif PE = '0' then
               assert Q = expected
               report "Expected loaded " & to_hstring(expected) &
                      " but Q is " & to_hstring(Q) severity error;
            elsif (CET='1' and Q="1111") then
               assert TC = '1'
               report "Expected TC = 1 but is " & std_logic'image(TC) severity error;
            end if;
            persistency <= 0;
            data_check_done <= true;
         else
            persistency <= persistency + 1;
         end if;
   end process data_check_process;

   stimuli_process : process
   begin
      wait until rising_edge(CP);
      stim_done <= false;
      if (persistency = 0)  then
         if (first_time = true) then
            SR <= '0';
            expected <= "0000";
            first_time <= false;
            stim_done <= true;
         elsif SR = '0' then
            SR <= '1';  -- unset reset
            PE <= '0';  -- test parallel load
            P <= "1010";
            expected <= "1010";
         elsif PE <= '0' then
            -- enable the counter
            CEP <= '1';
            CET <= '1';
            PE  <= '1';
         elsif Q="0011" then
            PE <= '0'; -- load another value
            P <= "1100";
            expected <= "1100";
         end if;
      end if;
      stim_done <= true;
  end process stimuli_process;

   CP <= not CP after period/2;
   uut : entity work.HW3Q5
   port map (
      CP    => CP,
      SR    => SR,
      P     => P,
      PE    => PE,
      CEP   => CEP,
      CET   => CET,
      Q     => Q,
      TC    => TC
   );

end architecture HW2Q5_arch_tb; -- HW2Q5_arch_tb
