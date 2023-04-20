--Nome: Rafael Andre Alves de Siqueira RA:243360
--Nome: Natan Rodrigues de Oliveira RA: 175154

library ieee;
use ieee.std_logic_1164.all;

entity ff_t is
	port (
		clk, t, preset, clear: in std_logic;
		Q, Q_n: out std_logic
		);
end ff_t;

-- Arquitetura do flip-flop tipo T - toggle, com sinais de preset e clear
-- Entre o preset e o clear, o clear tem prioridade.
-- Lembrando que o clear seta o estado Q para 0 e o preset seta para 1.
-- Usamos process pois se trata de um circuito sequencial, não combinacional.
-- A cada mudança de clock de subida, fazemos as verificações das entradas e saída anterior
-- e com base nisso mudamos as novas saídas
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
		