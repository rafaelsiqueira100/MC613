library ieee;
use ieee.std_logic_1164.all;

entity xbar_gen is
  generic(N: integer := 5);
  port(s: in std_logic_vector (N-1 downto 0);
       o1, o2: out std_logic);
end xbar_gen;

-- Solucao para o xbar_gen com o padrao GENERIC 5
-- Foi criado um vetor intermediario para as entradas in1 e in2 com objetivo de 
-- fazer a "ponte" entre o i-esimo e o (i+1)-esimo xbar, em que a i-esima saida
-- sera a (i+1)-esima entrada
architecture rtl of xbar_gen is
  signal vcc : std_logic := '1';
  signal gnd : std_logic := '0';
  signal out1, out2 : std_logic_vector(N downto 0);
  signal in1, in2 : std_logic_vector(N downto 0);
begin
  -- add your code
  in1(0) <= vcc;
  in2(0) <= gnd;
  G: for i in 0 to N-1 generate
		t: entity work.xbar_v1 port map (x1 => in1(i), x2 => in2(i), s => s(i), y1 => out1(i), y2 => out2(i));
		in1(i+1) <= out1(i);
		in2(i+1) <= out2(i);
	end generate;
	
	o1 <= out1(N-1);
	o2 <= out2(N-1);
end rtl;

