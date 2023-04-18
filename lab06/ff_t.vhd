library ieee;
use ieee.std_logic_1164.all;

entity ff_t is
	port (
		clk, t, preset, clear: in std_logic;
		Q, Q_n: out std_logic
		);
end ff_t;

architecture behavioral  of ff_t is
signal state: std_logic;
begin
	process(clk)
	begin
		if clk'event and clk = '1' then
			if t = '0' then
				state <= state;
			else
				state <= not state;
			end if;

			if preset = '1' then
				state <= '1';
			end if;
			if clear = '1' then
				state <= '0';
				end if;
		end if;
		
		Q <= state;
		Q_n <= not state;
	
	end process;

end;
		