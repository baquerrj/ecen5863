library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- entity--------------------------------

entity hello_world is
	port(
			MAX10_CLK1_50	: in std_logic;
			KEY				: in std_logic_vector(1 downto 0);
			LEDR				: out std_logic_vector (1 downto 0));
end;

-- architecture--------------------------

architecture behavioral of hello_world is

-- component nios CPU ///////////////////

component nios_setup_v2 is
		port (
			clk_clk                           : in  std_logic := 'X'; -- clk
			reset_reset_n                     : in  std_logic := 'X'; -- reset_n
			led_external_connection_export    : out std_logic;        -- export
			switch_external_connection_export : in  std_logic := 'X'  -- export
		);
	end component nios_setup_v2;

-- End component nios CPU /////////////
begin 
	
	LEDR(0) <= KEY(0);
	u0 : component nios_setup_v2
		port map (
			clk_clk                           => MAX10_CLK1_50,	-- clk.clk
			reset_reset_n                     => '1',          	-- reset.reset_n
			led_external_connection_export    => LEDR(1),   		-- led_external_connection.export
			switch_external_connection_export => NOT KEY(1)  		-- switch_external_connection.export
		);


end behavioral;
	