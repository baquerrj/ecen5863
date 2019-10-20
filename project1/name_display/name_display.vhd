library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- entity--------------------------------

entity name_display is
	port(
			MAX10_CLK1_50	: in std_logic;
			KEY				: in std_logic_vector(1 downto 0);
			LEDR				: out std_logic_vector (1 downto 0));
end;

-- architecture--------------------------

architecture struct of name_display is

-- component nios CPU ///////////////////

component nios_nameDisplay is
		port (
			clk_clk                           : in  std_logic        := 'X'				; -- clk
			reset_reset_n                     : in  std_logic        := 'X'				; -- reset_n
			led_external_connection_export    : out std_logic_vector       				; -- export
			switch_external_connection_export : in  std_logic_vector := (others => 'X')  --export
		);
	end component nios_nameDisplay;

-- End component nios CPU /////////////

-- component debouncer ////////////////

component debouncer is
	port (
		noisy : in std_logic;
		clk	: in std_logic;
		debounced : out std_logic
		);
	end component debouncer;

-- End component debouncer /////////
	
-- **************************************	
	signal db0_out, db1_out : std_logic;		-- debouncers output to NIOS
-- **************************************
begin 
	
	u0 : component nios_nameDisplay
		port map (
			clk_clk                              =>     MAX10_CLK1_50   ,	-- clk.clk
			reset_reset_n                        =>     '1'             ,  -- reset.reset_n
			led_external_connection_export       =>     LEDR(1 downto 0),  -- ledr0,1 connected to PB0,1 respectively
			switch_external_connection_export(0) =>     db0_out        	,  -- PB0 not inverted
			switch_external_connection_export(1) => NOT db1_out	     		-- PB1 inverted
		);

-- Implementing KEY0, KEY1 debouncers on their way to NIOS --
	
	u1: component debouncer 					
		port map (
			clk		 => MAX10_CLK1_50,
			noisy		 => KEY(0),
			debounced => db0_out
		);
		
	u2: component debouncer
		port map (
			clk	    => MAX10_CLK1_50,
			noisy     => KEY(1),
			debounced => db1_out
		);

end struct;
	
