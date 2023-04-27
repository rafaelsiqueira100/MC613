library ieee;
use ieee.std_logic_1164.all;

entity reg is
  generic (
    N : integer := 4
  );
  port (
    clk : in std_logic;
    data_in : in std_logic_vector(N-1 downto 0);
    data_out : out std_logic_vector(N-1 downto 0);
    load : in std_logic; -- Write enable
    clear : in std_logic
  );
end reg;

-- Registrador de N bits com clear e load sincronos

-- Para codificar a arquitetura do registrador de N bits sincrono, consideramos a mudanca de valores na subida do clock,
-- logo nosso processo espera ate que haja uma mudanca no clock e que esta mudanca seja uma borda de subida.
-- O clear tem prioridade em cima do load, logo se o clear eh 1, o registrador eh zerado. Caso contrario e se o load for
-- 1, o registrador armazena o valor de entrada.

architecture rtl of reg is
	constant zero : std_logic_vector(N-1 downto 0) := (others => '0');
begin
  -- Your code here!
	process
	begin
		wait until clk'event and clk = '1';
		if clear = '1' then
			data_out <= zero;
		elsif load = '1' then
			data_out <= data_in;
		end if;
	end process;
end rtl;