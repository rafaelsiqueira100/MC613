library ieee;
use ieee.std_logic_1164.all;

entity fsm_diag is
  port (
      clock : in  std_logic;
      reset : in  std_logic;
      w     : in  std_logic;
      z     : out std_logic
    );
end fsm_diag;

-- A = 00
-- B = 01
-- C = 10
-- D = 11
architecture arch of fsm_diag is
	signal state : std_logic_vector(1 downto 0) := "00";
begin
	process(clock)
	begin
		if clock'event and clock = '1' then
			if reset = '1' then
				state <= "00";
				z <= '0';
			elsif state = "00" and w = '0' then -- A -> A
				state <= "00";
				z <= '0';
			elsif state = "00" and w = '1' then -- A -> B
				state <= "01";
				z <= '1';
			elsif state = "01" and w = '0' then -- B -> C
				state <= "10";
				z <= '0';
			elsif state = "01" and w = '1' then -- B -> B
				state <= "01";
				z <= '1';
			elsif state = "10" and w = '0' then -- C -> C
				state <= "10";
				z <= '0';
			elsif state = "10" and w = '1' then -- C -> D
				state <= "11";
				z <= '0';
			elsif state = "11" and w = '0' then -- D -> A
				state <= "00";
				z <= '0';
			elsif state = "11" and w = '1' then -- D -> D
				state <= "11";
				z <= '0';
			end if;
		end if;
	end process;
end arch;