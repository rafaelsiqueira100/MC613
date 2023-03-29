library ieee;
use ieee.std_logic_1164.all;

entity xbar_stage_5 is
  port(SW  : in std_logic_vector (4 downto 0);
       LEDR: out std_logic_vector(0 downto 0));
end xbar_stage_5;

architecture rtl of xbar_stage_5 is
	signal out1, out2 : std_logic;
begin
  -- add your code
	xbar_5: entity work.xbar_gen port map(s => SW, o1 => out1, o2 => out2);
	LEDR(0) <= out1;
end rtl;

