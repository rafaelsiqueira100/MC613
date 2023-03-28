library ieee;
use ieee.std_logic_1164.all;

entity dec2_to_4 is
  port(en, w1, w0: in std_logic;
       y3, y2, y1, y0: out std_logic);
end dec2_to_4;

architecture rtl of dec2_to_4 is
begin
     	y0 <= NOT w0 AND NOT w1 AND en;
        y1 <= NOT w0 AND w1 AND en;
        y2 <= w0 AND NOT w1 AND en;
        y3 <= w0 AND w1 AND en;
end rtl;
