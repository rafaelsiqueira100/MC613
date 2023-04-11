--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira    RA: 175154

library ieee;
use ieee.std_logic_1164.all;

entity alu_board is
  port (
    SW : in std_logic_vector(9 downto 0);
    HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0);
    LEDR : out std_logic_vector(3 downto 0)
  );
end alu_board;

architecture behavioral of alu_board is
signal to_a: std_logic_vector(3 downto 0);
signal to_b: std_logic_vector(3 downto 0);
signal to_s1: std_logic;
signal s1_7bs:std_logic_vector(6 downto 0);
signal result: std_logic_vector(3 downto 0);
signal result_inverted: std_logic_vector(3 downto 0);
signal result_hex: std_logic_vector(6 downto 0);
signal result_dec: std_logic_vector(6 downto 0);
signal cout: std_logic;
signal result_neg_sign: std_logic;
signal result_neg_7bs: std_logic_vector(6 downto 0);
signal a2hex: std_logic_vector(6 downto 0);
signal a2dec: std_logic_vector(6 downto 0);
signal b2hex: std_logic_vector(6 downto 0);
signal b2dec: std_logic_vector(6 downto 0);
signal a_is_neg: std_logic;
signal a_neg_7bs: std_logic_vector(6 downto 0);
signal b_is_neg: std_logic;
signal b_neg_7bs: std_logic_vector(6 downto 0);
begin
  -- add your code
  to_a <= SW(7) & SW(6) & SW(5) & SW(4);
  to_b <= SW(3) & SW(2) & SW(1) & SW(0);
  to_s1 <= SW(8);
  my_alu: entity work.alu port map(
        a => to_a,
        b => to_b,
        s0 => SW(9),
        s1 => to_s1,
        F => result,
        Z => LEDR(3),
        C => LEDR(2),
        V => LEDR(1),
        N => LEDR(0)
  );
  a_to_hex: entity work.bin2hex port map(
        bin => to_a,
        hex => a2hex
  );
  a_to_dec: entity work.two_comp_to_7seg port map(
        bin => to_a,
        segs => a2dec,
        neg => a_is_neg
  );
  s1_7bs <= to_s1 & to_s1 & to_s1 & to_s1 & to_s1 & to_s1 & to_s1;
  HEX4 <= (a2hex and s1_7bs) or (a2dec and not s1_7bs);
  a_neg_7bs <= a_is_neg & a_is_neg & a_is_neg & a_is_neg & a_is_neg & a_is_neg & a_is_neg;
  HEX5 <= "0000001" and (a_neg_7bs and not s1_7bs);
  b_to_hex: entity work.bin2hex port map(
        bin => to_b,
        hex => b2hex
  );
  b_to_dec: entity work.two_comp_to_7seg port map(
        bin => to_b,
        segs => b2dec,
        neg => b_is_neg
  );

  HEX2 <= (b2hex and s1_7bs) or (b2dec and not s1_7bs);
  b_neg_7bs <= b_is_neg & b_is_neg & b_is_neg & b_is_neg & b_is_neg & b_is_neg & b_is_neg;

  HEX3 <= "0000001" and (b_neg_7bs and not s1_7bs);

  result2hex: entity work.bin2hex port map(
        bin => result,
        hex => result_hex
  );
  result2dec: entity work.two_comp_to_7seg port map(
        bin => result,
        segs => result_dec,
        neg => result_neg_sign
  );
  result_neg_7bs <= result_neg_sign & result_neg_sign & result_neg_sign &
  result_neg_sign & result_neg_sign & result_neg_sign & result_neg_sign;
  HEX1 <= "0000001" and (result_neg_7bs and not s1_7bs);

  HEX0 <= (result_dec and not s1_7bs) or (result_hex and s1_7bs);
end behavioral;

