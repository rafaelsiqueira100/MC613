library ieee;
use ieee.std_logic_1164.all;

entity xbar_gen is
  generic(N: integer := 5);
  port(s: in std_logic_vector (N-1 downto 0);
       o1, o2: out std_logic);
end xbar_gen;

architecture rtl of xbar_gen is
  signal vcc : std_logic := '1';
  signal gnd : std_logic := '0';
  signal out1, out2 : std_logic_vector(N-1 downto 0);
begin
  -- add your code
  G: for i in 0 to N-1 generate
		t: entity work.xbar_v1 port map (x1 => vcc, x2 => gnd, s => s(i), y1 => out1(i), y2 => out2(i));
	end generate;
	
	o1 <= out1(N-1);
	o2 <= out2(N-1);
end rtl;

