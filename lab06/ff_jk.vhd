--Nome: Rafael Andre Alves de Siqueira RA:243360
--Nome: Natan Rodrigues de Oliveira RA: 175154
library ieee;
use ieee.std_logic_1164.all;

entity ff_jk is
	port (
		clk, j, k, preset, clear: in std_logic;
		Q, Q_n: out std_logic
		);
end ff_jk;
-- Arquitetura do flip-flop tipo JK - com 2 entradas j e k, com sinais de preset e clear
-- Entre o preset e o clear, o clear tem prioridade.
-- Lembrando que o clear seta o estado Q para 0 e o preset seta para 1.
-- Usamos process pois se trata de um circuito sequencial, não combinacional.
-- A cada mudança de clock de subida, fazemos as verificações das entradas e saída anterior
-- e com base nisso mudamos as novas saídas

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
		