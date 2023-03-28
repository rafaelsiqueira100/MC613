LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec2to4 IS
port(
     	w0, w1, en : IN STD_LOGIC;
        y0, y1, y2, y3: OUT STD_LOGIC
);
END dec2to4;

ARCHITECTURE LogicFunction OF dec2to4 IS
BEGIN
     	y0 <= NOT w0 AND NOT w1 AND NOT en;
        y1 <= NOT w0 AND w1 AND en;
        y2 <= w0 AND NOT w1 AND en;
        y3 <= w0 AND w1 AND en;
END;
