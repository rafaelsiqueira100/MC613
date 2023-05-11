library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control is
	generic (
		N: integer := 4
	);
	port (
		multiplier : in std_logic_vector(N-1 downto 0);
		shiftMiltiplier, shiftMultiplicand, addAlu, saveProduct: out std_logic
	);
end control;

architecture arch of control is
begin
	addAlu <= multiplier(N-1);
	saveProduct <= multiplier(N-1);
	shiftMiltiplier <= 1
	shiftMultiplicand <= 1
end arch;