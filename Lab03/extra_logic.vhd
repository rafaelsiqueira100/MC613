LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY extra_logic IS
port(
     	w0, y0, w1, y1, w2, y2, w3, y3 : IN STD_LOGIC;
        f: OUT STD_LOGIC
);
END extra_logic;

ARCHITECTURE LogicFunction2 OF extra_logic IS
BEGIN
     	f <= (w0 AND y0) OR (w1 AND y1) OR (w2 AND y2) OR (w3 AND y3);
END;
