--Nome: Rafael Andre Alves de Siqueira RA: 243360

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY light IS
PORT(
	a, b, c, d, e: IN STD_LOGIC;
	f: OUT STD_LOGIC
);
END light;

ARCHITECTURE LogicFunction OF light IS
BEGIN
	f <= (b and c and e)
	or (b and (not c) and (not d) and (not e))
	or((not b) and c and (not d) and e) 
	or ((not a) and (not b) and (not c) and (not e))
	or ((not b) and (not c) and d and (not e));
END LogicFunction;
	