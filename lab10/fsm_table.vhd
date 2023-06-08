--Nome: Rafael Andre Alves de Siqueira RA:243360
--Nome: Natan Rodrigues de Oliveira RA:175154
library ieee;
use ieee.std_logic_1164.all;

entity fsm_table is
  port (
      clock : in  std_logic;
      reset : in  std_logic;
      w     : in  std_logic;
      z     : out std_logic
    );
end fsm_table;

-- A = 00
-- B = 01
-- C = 10
-- D = 11
architecture arch of fsm_table is
	signal state : std_logic_vector(1 downto 0) := "00";
begin
	process(clock)
	begin
		if clock'event and clock = '1' then
			if reset = '1' then
				state <= "00";
				z <= '0';
			elsif state = "00" and w = '0' then -- A -> C
				state <= "10";
				z <= '1';
			elsif state = "00" and w = '1' then -- A -> B
				state <= "01";
				z <= '1';
			elsif state = "01" and w = '0' then -- B -> D
				state <= "11";
				z <= '1';
			elsif state = "01" and w = '1' then -- B -> C
				state <= "10";
				z <= '0';
			elsif state = "10" and w = '0' then -- C -> B
				state <= "01";
				z <= '0';
			elsif state = "10" and w = '1' then -- C -> C
				z <= '0';
			elsif state = "11" and w = '0' then -- D -> A
				state <= "00";
				z <= '0';
			elsif state = "11" and w = '1' then -- D -> C
				state <= "10";
				z <= '1';
			end if;
		end if;
	end process;
end arch;