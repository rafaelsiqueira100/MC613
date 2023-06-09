library ieee;
use ieee.std_logic_1164.all;

entity mux4_to_1 is
port(d3, d2, d1, d0 : in std_logic;
       sel : in std_logic_vector(1 downto 0);
       output : out std_logic);
end mux4_to_1;

--O objetivo desta funçao logica e construir um multiplexador de
-- 4 entradas e 1 saida a partir de componentes mais simples 
-- Neste caso, usamos um elemento dec2_to_4 e um extra_logic
-- Primeiro conectamos o sel em w0 e w1 do decoder
-- e setamos enable para 1
-- as 4 saidas sao armazenadas num sinal y
-- Para extra_logic, conectamos cada di em wi, para i inteiro 
-- entre 0 e 3. Eh colocado o signal y em cada uma das 4 entradas yi
-- a saida f sera o output

architecture rtl of mux4_to_1 is
signal y: std_logic_vector(0 to 3);
begin
     	decoder: entity work.dec2_to_4
                port map(
                        en => '1',
                        w0 => sel(0),
                        w1 => sel(1),
                        y0 => y(0),
                        y1 => y(1),
                        y2 => y(2),
                        y3 => y(3)
                );
        extra_logic: entity work.extra_logic
                port map(
                        w0 => d0,
                        w1 => d1,
                        w2 => d2,
                        w3 => d3,
                        y0 => y(0),
                        y1 => y(1),
                        y2 => y(2),
                        y3 => y(3),
                        f => output
                );
end rtl;

