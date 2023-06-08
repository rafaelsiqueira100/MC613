-- Podemos utilizar uma m´aquina de estados para a avaliar a sa´ida depois de alimenta-la com toda
-- a sequencia. Para isto, pensei em uma alternativa que eh reutilizar a fsm_diag, pois
-- existe um unico estado cuja saida seja 1. Mas, consegui chegar no estado B apenas fazendo a seguinte
-- sequencia:

-- Chegar ao estado C e alimentar o sistema com o inverso da sequencia 0101
-- entao, chegar no estado C alimentado o sistema com 1 e depois 0
-- e alimentar com o inverso da sequencia. Isto fara a fsm chegar no estado B cuja saida eh
-- 1 e assim sera o input do da saida Z do fsm_seq
--Nome: Rafael Andre Alves de Siqueira RA:243360
--Nome: Natan Rodrigues de Oliveira RA:175154
library ieee;
use ieee.std_logic_1164.all;

entity fsm_seq is
  port (
      clock : in  std_logic;
      reset : in  std_logic;
      w     : in  std_logic;
      z     : out std_logic
    );
end fsm_seq;
architecture arch of fsm_seq is
	type type_state is (a, b, c, d, e);
	signal current_state: type_state;
begin
	process(clock)
	begin
		if(clock'event and clock = '1') then
			if (reset = '1') then
				current_state <= a;
			else
				if current_state = a then
					if w = '0' then
						current_state <= b;--0
					else
						current_state <= a;--1
					end if;
				elsif current_state = b then
					if w = '1' then
							current_state <= c;--01
					else
							current_state <= b;--0
					end if;
				elsif current_state = c then
					if w = '0' then
							current_state <= d;--010
					else
							current_state <= a;--1
					end if;
				elsif current_state = d then
					if w = '1' then
							current_state <= e;--0101
					else
							current_state <= b;--0
					end if;
				elsif current_state = e then
					if w = '0' then
							current_state <= d;--01010
					else
							current_state <= a;--01011
					end if;
				end if;
			end if;
		end if;
	end process;
		z <= '1' when E = current_state else '0';
end arch;