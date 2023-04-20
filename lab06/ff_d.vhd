library ieee;
use ieee.std_logic_1164.all;

entity ff_d is
  port (
    Clk : in std_logic;
    D : in std_logic;
    Q : out std_logic;
    Q_n : out std_logic;
    Preset : in std_logic;
    Clear : in std_logic
  );
end ff_d;

-- Implementaçao do flip flop do tipo D, com sinais Preset e Clear.
-- O sinal clear serve para zerar a saida Q e quando estiver ativo sempre sera aplicado.
-- Ja o sinal Preset, quando clear nao estiver ativo, servira para setar 1 no sinal de saida Q.
-- Caso ambos estejam desativados, sera mantido o dado ja armazenado no flip-flop.

-- COmo estamos tratando de um circuito sequencial, fooi usado PROCESS para a execucao sequencial 
-- da arquitetura definida. O process tera o gatilho definido pela mudanca de clock.
architecture rtl of ff_d is
begin
  -- Your code here!
	process(Clk)
	begin
		if Clk'event and Clk = '1' then
			if Clear = '1' then
				Q <= '0';
				Q_n <= '1';
			else
				if Preset = '1' then
					Q <= '1';
					Q_n <= '0';
				else
					Q <= D;
					Q_n <= not D;
				end if;
			end if;
		end if;
	end process;
		
end rtl;
