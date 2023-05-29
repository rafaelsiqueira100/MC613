library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity seg_to_bin is
  port (
    bin : out std_logic_vector(3 downto 0);
    segs : in std_logic_vector(6 downto 0)
  );
end seg_to_bin;

architecture arch of seg_to_bin is
begin
	bin <= "1001" when segs = "0010000" else
		"1000" when segs = "0000000" else
		"0111" when segs = "1111000" else
		"0110" when segs = "0000010" else
		"0101" when segs = "0010010" else
		"0100" when segs = "0011001" else
		"0011" when segs = "0110000" else
		"0010" when segs = "0100100" else
		"0001" when segs = "1111001" else
							"0000";
end arch;