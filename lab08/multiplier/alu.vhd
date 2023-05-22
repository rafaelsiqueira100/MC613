--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira    RA: 175154

library ieee;
use ieee.std_logic_1164.all;

entity alu is
generic(
	N: integer = 8
);
  port (
    a, b : in std_logic_vector(N-1 downto 0);
    set: in std_logic;
    clk : in std_logic;
    result : out std_logic_vector(N-1 downto 0)
  );
end alu;

architecture behavioral_alu of alu is
        signal soma: std_logic_vector(N-1 downto 0);
begin
  -- add your code
  
  rc: entity work.ripple_carry generic map (N => N)
  process
  begin
		wait until clk'event and clk = '1';
			if set = '1' then
				result <= soma;
			else
				result <= a;
			end if;
		end process;

end behavioral_alu;

