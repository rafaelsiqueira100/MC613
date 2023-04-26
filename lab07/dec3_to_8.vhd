library ieee;
use ieee.std_logic_1164.all;

entity dec3_to_8 is
  port (
    w : in std_logic_vector(2 downto 0);
    y : out std_logic_vector(7 downto 0)
  );
end dec3_to_8;


-- Decodificador 3x8

-- Implementacao do decodificador 3x8 que recebe uma entrada de 3 bits e gera uma saida com 8 bits
-- indicando a representacao da entrada como posicao no vetor de saida.
architecture rtl of dec3_to_8 is
begin
  -- Your code here
	y(0) <= not w(2) and not w(1) and not w(0);
	y(1) <= not w(2) and not w(1) and w(0);
	y(2) <= not w(2) and w(1) and not w(0);
	y(3) <= not w(2) and w(1) and w(0);
	y(4) <= w(2) and not w(1) and not w(0);
	y(5) <= w(2) and not w(1) and w(0);
	y(6) <= w(2) and w(1) and not w(0);
	y(7) <= w(2) and w(1) and w(0);
end rtl;
