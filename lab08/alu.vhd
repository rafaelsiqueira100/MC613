--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira    RA: 175154

library ieee;
use ieee.std_logic_1164.all;

entity alu is
  port (
    a, b : in std_logic_vector(3 downto 0);
    F : out std_logic_vector(3 downto 0);
    s0, s1 : in std_logic;
    Z, C, V, N : out std_logic
  );
end alu;

architecture behavioral_alu of alu is
        signal result_carry_board : std_logic_vector(3 downto 0);
        signal condition: std_logic;
        signal result_carry_board_inverted : std_logic_vector(3 downto 0);
        signal cout :std_logic;
        signal overflow: std_logic;
        signal second_adder_inverted: std_logic_vector(3 downto 0);
        signal second_adder: std_logic_vector(3 downto 0);
        signal result_logic: std_logic_vector(3 downto 0);
        signal result: std_logic_vector(3 downto 0);
		  signal to_cin : std_logic;
begin
  -- add your code
  second_adder_inverted <= not b(3) & not b(2) & not b(1) & not b(0);
  second_adder <= (second_adder_inverted and s0 & s0 & s0 & s0) 
  or (b and (not s0 & not s0 & not s0 & not s0));
  to_cin <= (s0 and not s1);
  rc: entity work.ripple_carry port map(
                x => a,
                y => second_adder,
                r => result_carry_board,
                cin => to_cin,
                cout => cout,
                overflow => overflow
  );
  --condition <= (b(3)) and s0;
  --result_carry_board_inverted <= ((not result_carry_board(3) & not result_carry_board(2) & not result_carry_board(1) & not result_carry_board(0))
  --and (condition & condition & condition & condition)) or result_carry_board;
  result_logic <= ((a and b) and (not s0)&(not s0)&(not s0)&(not s0)) or ((a or b) and s0 & s0 &s0 & s0);
  result <= (result_logic and s1 & s1 & s1 & s1) or (result_carry_board and not s1 & not s1 & not s1 & not s1);
  Z <= not (result(0) or result(1) or result(2) or result(3));
  C <= cout and not s1;
  V <= overflow and not s1;
  N <= result(3) and not s1;
  F <= result;

end behavioral_alu;

