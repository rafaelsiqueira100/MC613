library ieee;
use ieee.std_logic_1164.all;

package reg_package is
	component reg is
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
	end component;
end reg_package;