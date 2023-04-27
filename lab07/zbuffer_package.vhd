library ieee;
use ieee.std_logic_1164.all;

package zbuffer_package is
	component zbuffer is
		generic (
		 N : integer := 4
	  );
	  port (
		 x : in std_logic_vector(N-1 downto 0);
		 e : in std_logic;
		 f : out std_logic_vector(N-1 downto 0)
	  );
	end component;
end zbuffer_package;