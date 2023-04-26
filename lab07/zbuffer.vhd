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
-- Funçao zbuffer e geralmente usada em arrays
-- para atribuir o mesmo valor para N bits
-- Permite configurar parametros (N bits)

architecture behavioral of zbuffer is
begin  
  f <= (others => '1') when e = '0' else x;
end behavioral;

