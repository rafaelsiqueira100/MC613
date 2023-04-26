library ieee;
use ieee.std_logic_1164.all;

entity dec3_to_8 is
  port (
    w : in std_logic_vector(2 downto 0);
    y : out std_logic_vector(7 downto 0)
  );
end dec3_to_8;
-- decodificador 3 entradas e 8 saidas
-- todas as saidas sao zero,
-- exceto a saida de indice dado por w(2) w(1) w(0)

architecture rtl of dec3_to_8 is
begin

  y(0) <= not w(0) and not w(1) and not w(2);
  y(1) <= w(0) and not w(1) and not w(2);
  y(2) <= not w(0) and w(1) and not w(2);
  y(3) <= w(0) and w(1) and not w(2);
  y(4) <= not w(0) and not w(1) and w(2);
  y(5) <= w(0) and not w(1) and w(2);
  y(6) <= not w(0) and w(1) and w(2);
  y(7) <= w(0) and w(1) and w(2);
end rtl;

