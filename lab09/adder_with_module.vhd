library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity adder_with_module is
  port (
    binOut : out std_logic_vector(3 downto 0);
    seg : in std_logic_vector(6 downto 0);
	 module : in std_logic_vector(3 downto 0);
	 overflow : out std_logic
  );
end adder_with_module;

architecture arch of adder_with_module is
	component seg_to_bin is
	  port (
		 bin : out std_logic_vector(3 downto 0);
		 segs : in std_logic_vector(6 downto 0)
	  );
	end component;
	
	signal seg2bin : std_logic_vector(3 downto 0);
begin
	stb : seg_to_bin port map (bin => seg2bin, segs => seg);
	res <= to_integer(unsigned(seg2bin)) + 1;
	moduleInt <= to_integer(unsigned(seg2bin));
	
	if moduleInt > res then
		binOut <= std_logic_vector(to_unsigned(res, binOut'length));
		overflow <= '0';
	else
		binOut <= "0000";
		overflow <= '1';
	end if;
	
end arch;