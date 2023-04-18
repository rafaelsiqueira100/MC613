library ieee;
use ieee.std_logic_1164.all;

entity ff_jk is
	port (
		clk, j, k, preset, clear: in std_logic;
		Q, Q_n: out std_logic
		);
end ff_jk;

architecture behavioral  of ff_jk is
signal state: std_logic;
begin
	process(clk)
	begin
		if clk'event and clk = '1' then
			if j = '1' then
				if k ='1'then
					state <= not state;
				else
					state <= '1';
				end if;
			else 
				if k = '1' then
					state <= '0';
				else
					state <= state;
				end if;
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
		