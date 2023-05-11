library ieee;
use ieee.std_logic_1164.all;

package control_package is
	component control is
		generic (
			N: integer := 4
		);
		port (
			 multiplier : in std_logic_vector(N-1 downto 0);
			 shiftMiltiplier, shiftMultiplicand, addAlu, saveProduct: out std_logic
		);
	end component;
end control_package;