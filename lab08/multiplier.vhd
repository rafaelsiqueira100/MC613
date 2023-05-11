library ieee;
use ieee.std_logic_1164.all;
use work.control_package.all;

entity multiplier is
	generic (
		N: integer := 4
	);
	port (
		a, b : in std_logic_vector(N-1 downto 0);
		-- Operandos (multiplicador e multiplicando)
		r : out std_logic_vector(2*N-1 downto 0);
		-- Resultado (produto)
		clk : in std_logic;
		-- Clock
		set : in std_logic
		-- Operandos foram alterados
	);
end multiplier;

architecture arch of multiplier is
begin
	
end arch;