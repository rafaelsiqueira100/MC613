library ieee;
use ieee.std_logic_1164.all;

entity xbar_stage_8 is
  port(SW  : in std_logic_vector (7 downto 0);
       LEDR: out std_logic_vector(0 downto 0));
end xbar_stage_8;

-- Stage com 8 componentes XBAR, o GENERIC da entidade xbar_gen 
-- foi usado pois o valor padrao eh 5. Saida conectada ao LED no LEDR(0)
architecture rtl of xbar_stage_8 is
	signal out1, out2 : std_logic;
begin
  -- add your code
	xbar_8: entity work.xbar_gen generic map(N => 8) port map(s => SW, o1 => out1, o2 => out2);
	LEDR(0) <= out1;
end rtl;

