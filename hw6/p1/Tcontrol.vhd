library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Tcontrol is
port( reset_n	: in 	std_logic;		-- asynchronous active low reset
		clock		: in 	std_logic;
		sensor1	: in 	std_logic;
		sensor2 	: in 	std_logic;
		sensor3 	: in 	std_logic;
		sensor4 	: in 	std_logic;
		sensor5	: in	std_logic;
		switch1	: out std_logic;
		switch2	: out std_logic;
		switch3	: out std_logic;
		-- dirA and dirB are 2-bit logic vectors (2-bit arrays)
		dirA	: out	std_logic_vector( 1 downto 0 );
		dirB	: out std_logic_vector( 1 downto 0 )
		);
end entity Tcontrol;

architecture Tcontrol_arch of Tcontrol is
	type state_type is ( ABout, Ain, Bin, Astop, Bstop );
	signal state 		: state_type;
	signal sensor24	: std_logic_vector( 1 downto 0 );
	signal sensor12	: std_logic_vector( 1 downto 0 );
	signal sensor34	: std_logic_vector( 1 downto 0 );
begin

	process ( reset_n, clock )
	begin
	
	if reset_n = '1' then
		state <= About;
	elsif rising_edge( clock ) then
		case state is
			when ABout =>
				-- check both sensor2 and sensor4
				case sensor24 is
					when "00" => state <= ABout;
					when "01" => state <= Ain;
					when "10" => state <= Bin;
					when "11" => state <= Ain;
					when others => state <= ABout;
				end case;
				
			when Ain =>
				case sensor12 is
					when "00" => state <= Ain;	-- no change
					when "01" => state <= Bstop;
					when "10" => state <= ABout;
					when "11" => state <= ABout;
					when others => state <= ABout;
				end case;
			
			when Bin =>
				case sensor34 is
					when "00" => state <= Bin;	-- no change
					when "01" => state <= Astop;
					when "10" => state <= ABout;
					when "11" => state <= ABout;
					when others => state <= ABout;
				end case;
			
			when Astop =>
				if sensor3 = '1' then
					state <= Ain;
				else
					state <= Astop;
				end if;
			
			when Bstop =>
				if sensor1 = '1' then
					state <= Bin;
				else
					state <= Bstop;
				end if;
			
			end case;	
		end if;
	end process;

	sensor24 <= sensor2 & sensor4;
	sensor12 <= sensor1 & sensor2;
	sensor34 <= sensor3 & sensor4;
	
	switch3 <= '0';	-- always 0
	
	with state select
		switch1	<=	'0' when ABout,
						'0' when Ain,
						'1' when Bin,
						'1' when Astop,
						'0' when Bstop;
	
	with state select
		switch2	<=	'0' when ABout,
						'0' when Ain,
						'1' when Bin,
						'1' when Astop,
						'0' when Bstop;
						
	with state select
		dirA		<=	"10" when ABout,
						"10" when Ain,
						"10" when Bin,
						"00" when Astop,
						"10" when Bstop;
	
	with state select
		dirB		<=	"01" when ABout,
						"01" when Ain,
						"01" when Bin,
						"01" when Astop,
						"00" when Bstop;

end architecture Tcontrol_arch;









