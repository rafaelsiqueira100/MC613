library ieee;
use ieee.std_logic_1164.all;

package alu_package is
	component alu is
		port (
			 a, b : in std_logic_vector(3 downto 0);
			 F : out std_logic_vector(3 downto 0);
			 s0, s1 : in std_logic;
			 Z, C, V, N : out std_logic
		);
	end component;
end alu_package;