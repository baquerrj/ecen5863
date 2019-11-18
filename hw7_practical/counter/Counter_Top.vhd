library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Counter_Top is port (
   CLK   : in  std_logic;  -- clock
   RESET : in  std_logic;
   Q     : out std_logic_vector(15 downto 0);
   TC    : out std_logic
);
end entity Counter_Top;


architecture gen of Counter_Top is
   constant N : integer := 2092; -- N+1 instances of 16-bit counters
   signal CTC : std_logic_vector(0 to N);
   component Counter
   port
   (
      CLK   : in  std_logic;
      RESET : in  std_logic;
      CE    : in  std_logic;
      Q     : out std_logic_vector(15 DOWNTO 0);
      TC    : out std_logic
   );
   end component;
begin
   GEN_COUNTER: for i in 0 to N generate
      first: if i = 0 generate
         u0: Counter port map
            (CLK     => CLK,
             RESET   => RESET,
             CE      => '1',
             TC      => CTC(i),
             Q       => open
            );
         end generate first;
      chain: if (i > 0) and (i < N) generate
         ui: Counter port map
            (CLK     => CLK,
             RESET   => RESET,
             CE      => CTC(i-1),
             TC      => CTC(i),
             Q       => open
             );
         end generate chain;
      last: if (i > 0) and (i = N) generate
         ul: Counter port map
            (CLK     => CLK,
             RESET   => RESET,
             CE      => CTC(i-1),
             TC      => CTC(i),
             Q       => Q
            );
         end generate last;
   end generate GEN_COUNTER;

      TC <= CTC(N);

end architecture gen;