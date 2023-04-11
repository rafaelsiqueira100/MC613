-- brief : lab05 - question 1
--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira RA: 175154
library ieee;
use ieee.std_logic_1164.all;

entity barrel_shifter is
  port(
    w : in  std_logic_vector (3 downto 0);
    s : in  std_logic_vector (1 downto 0);
    y : out std_logic_vector (3 downto 0)
  );
end barrel_shifter;

architecture rtl of barrel_shifter is
--O barrel shifter realiza uma rotaçao
--de s unidades para a direita
-- Cada bit de saida tem 4 possibilidades diferentes dependendo
--das combinacoes de s(1) e s(0)
--As seguintes funçoes logicas foram feitas baseadas
--na tabela-verdade apresentada e foram sintetizadas
--em meu caderno.
begin
	y(3) <= (w(3) and not s(1) and not s(0))
	or (w(0) and not s(1) and s(0))
	or (w(1) and s(1) and not s(0))
	or (w(2) and s(1) and s(0)) ;
	
	y(2) <= (w(2) and not s(1) and not s(0))
	or (w(3) and not s(1) and s(0))
	or (w(0) and s(1) and not s(0)) 
	or (w(1) and s(1) and s(0)) ;
	
	y(1) <= (w(1) and not s(1) and not s(0))
	or (w(2) and not s(1) and s(0))
	or (w(3) and s(1) and not s(0))
	or (w(0) and s(1) and s(0));
	
	y(0) <= (w(0) and not s(1) and not s(0))
	or (w(1) and not s(1) and s(0))
	or (w(2) and s(1) and not s(0))
	or (w(3) and s(1) and s(0));
end rtl;

