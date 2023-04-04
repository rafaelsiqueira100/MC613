library ieee;
use ieee.std_logic_1164.all;

entity ripple_carry_board is
        generic (
    N : integer := 4
  );
  port (
    SW : in std_logic_vector(7 downto 0);
    HEX4 : out std_logic_vector(6 downto 0);
    HEX2 : out std_logic_vector(6 downto 0);
    HEX0 : out std_logic_vector(6 downto 0);
    LEDR : out std_logic_vector(0 downto 0)
    );
end ripple_carry_board;

architecture rtl of ripple_carry_board is
signal R : std_logic_vector(N-1 downto 0);
signal to_x: std_logic_vector(3 downto 0);
signal to_y: std_logic_vector(3 downto 0);
begin
  -- add your code
  to_x <= SW(7) & SW(6) & SW(5) & SW(4);
  to_y <= SW(3) & SW(2) & SW(1) & SW(0);
  adder: entity work.ripple_carry port map(
          x => to_x,
          y => to_y,
          r => R,
          cin => '0',
          overflow => LEDR(0)
  );
  hex4creator: entity work.bin2hex port map(
                bin => to_x,
                hex => HEX4
  );
  hex2creator: entity work.bin2hex port map(
                bin => to_y,
                hex => HEX2
  );
  hex0creator: entity work.bin2hex port map(
                bin => R,
                hex => HEX0
  );
end rtl;


