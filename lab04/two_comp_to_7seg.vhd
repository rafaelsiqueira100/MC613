  GNU nano 4.3                                             two_comp_to_7seg.vhd                                                       
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity two_comp_to_7seg is
  port (
    bin : in std_logic_vector(3 downto 0);
    segs : out std_logic_vector(6 downto 0);
    neg : out std_logic
  );
end two_comp_to_7seg;

architecture behavioral of two_comp_to_7seg is
begin
  -- add your code
  segs <= "0000110" when -1 = to_integer(signed(bin)) else
                        "1011011" when -2 = to_integer(signed(bin)) else
                        "1001111" when -3 = to_integer(signed(bin)) else
                        "1100110" when -4 = to_integer(signed(bin)) else
                        "1101101" when -5 = to_integer(signed(bin)) else
                        "1111101" when -6 = to_integer(signed(bin)) else
                        "0000111" when -7 = to_integer(signed(bin)) else
                        "1111111" when -8 = to_integer(signed(bin)) else
         "0000111" when 7 = to_integer(signed(bin)) else
         "1111101" when 6 = to_integer(signed(bin)) else
         "1101101" when 5 = to_integer(signed(bin)) else
         "1100110" when 4 = to_integer(signed(bin)) else
         "1001111" when 3 = to_integer(signed(bin)) else
         "1011011" when 2 = to_integer(signed(bin)) else
         "0000110" when 1 = to_integer(signed(bin)) else
                        "0000000";

        neg <=  bin(3) ;

end behavioral;













