library ieee;
use ieee.std_logic_1164.all;

entity clk_div is
  port (
    clk : in std_logic;
    clk_hz : out std_logic
  );
end clk_div;

architecture behavioral of clk_div is
	signal counter : integer 0 to 49999999
	signal max_counter : integer := 49999999
begin
	process(clk)
	begin
		if clk'event and clk = '1' then
			counter <= counter + 1;
			if counter = max_counter then
				counter <= 0;
				clk_hz <= 1;
			else
				clk_hz <= 0;
			end if;
		else
			clk_hz <= 0;
		end if;
	end process;
end behavioral;
