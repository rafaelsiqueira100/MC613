library ieee;
use ieee.std_logic_1164.all;

package dec3_to_8_package is
	component dec3_to_8 is
		port (
		 w : in std_logic_vector(2 downto 0);
		 y : out std_logic_vector(7 downto 0)
	  );
	end component;
end dec3_to_8_package;