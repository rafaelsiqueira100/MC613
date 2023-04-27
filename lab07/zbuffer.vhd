library ieee;
use ieee.std_logic_1164.all;

entity zbuffer is
  generic (
    N : integer := 4
  );
  port (
    x : in std_logic_vector(N-1 downto 0);
    e : in std_logic;
    f : out std_logic_vector(N-1 downto 0)
  );
end zbuffer;


-- Buffer tri-state

-- Implementacao do buffer tri-state que gera uma saida ZZZZ caso o enabler seja 0 ou a entrada X
-- caso o enabler seja 1.
architecture behavioral of zbuffer is
begin
  -- Your code here
	f <= (others => 'Z') when e = '0' else x;
end behavioral;