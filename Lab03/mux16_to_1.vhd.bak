ibrary ieee;
use ieee.std_logic_1164.all;

entity mux16_to_1 is
port(data: IN STD_LOGIC_VECTOR(15 downto 0);
        sel : IN STD_LOGIC_VECTOR(3 downto 0);
        output: OUT STD_LOGIC);
end mux16_to_1;

architecture rtl of mux16_to_1 is
signal y: std_logic_vector(0 to 3);
begin
     	mux1: entity work.mux4_to_1
                port map(
                        sel(0) => sel(2),
                        sel(1) => sel(3),
                        d0 => data(0),
                        d1 => data(1),
                        d2 => data(2),
                        d3 => data(3),
                        output => y(0)
                );
        mux2: entity work.mux4_to_1
                port map(
                        sel(0) => sel(2),
                        sel(1) => sel(3),
                        d0 => data(4),
                        d1 => data(5),
                        d2 => data(6),
                        d3 => data(7),
                        output => y(1)
                );
        mux3: entity work.mux4_to_1
                port map(
                        sel(0) => sel(2),
                        sel(1) => sel(3),
                        d0 => data(8),
                        d1 => data(9),
                        d2 => data(10),
                        d3 => data(11),
                        output => y(2)
                );
        mux4: entity work.mux4_to_1
                port map(
                        sel(0) => sel(2),
                        sel(1) => sel(3),
                        d0 => data(12),
                        d1 => data(13),
                        d2 => data(14),
                        d3 => data(15),
                        output => y(3)
                );
        mux5: entity work.mux4_to_1
                port map(
			sel(0) => sel(0),
                        sel(1) => sel(1),
                        d0 => y(0),
                        d1 => y(1),
                        d2 => y(2),
                        d3 => y(3),
                        output => output
                );
end rtl;

