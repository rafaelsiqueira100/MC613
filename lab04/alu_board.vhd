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
signal result: std_logic_vector(3 downto 0);
signal result_inverted: std_logic_vector(3 downto 0);
signal result_hex: std_logic_vector(3 downto 0);
signal result_dec: std_logic_vector(3 downto 0);
signal cout: std_logic;
signal result_neg_sign: std_logic_vector(3 downto 0);
signal a2hex: std_logic_vector(3 downto 0);
signal a2dec: std_logic_vector(3 downto 0);
signal b2hex: std_logic_vector(3 downto 0);
signal b2dec: std_logic_vector(3 downto 0);
signal a_is_neg: std_logic;
signal b_is_neg: std_logic;
begin
  -- add your code
  alu: entity work.alu port map(
        a => SW(7) & SW(6) & SW(5) & SW(4),
        b => SW(3) & SW(2) & SW(1) & SW(0),
        s0 => SW(9),
        s1 => SW(8),
        F => result,
        Z => LEDR(3),
        C => LEDR(2),
        V => LEDR(1),
        N => LEDR(0)
  );
  a_to_hex: entity work.bin2hex(
        bin => a,
        hex => a2hex
  );
  a_to_dec: entity work.two_comp_to_7seg(
        bin => a,
        segs => a2dec,
        neg => a_is_neg
  );
  HEX4 <= (a2hex and s1) or (a2dec and not s1);
  HEX5 <= 0000001 and (a_is_neg and not s1);
  b_to_hex: entity work.bin2hex(
        bin => b,
        hex => b2hex
  );
  b_to_dec: entity work.two_comp_to_7seg(
        bin => b,
        segs => b2dec,
        neg => b_is_neg
  );

  HEX2 <= (b2hex and s1) or (b2dec and not s1);
  HEX3 <= 0000001 and (b_is_neg and not s1);

  inverter: entity work.invcomp2(
        bits_in => result,
        bits_out => result_inverted,
        cout => cout
  );

  result2hex: entity work.bin2hex(
        bin => result,
        hex => result_hex
  );
  result2dec: entity work.two_comp_to_7seg(
        bin => result,
        segs => result_dec,
        neg => result_neg_sign
  );
  HEX1 <= 0000001 and (result_neg_sign and not s1);
  HEX0 <= (result_dec and not s1) or (result_hex and s1);
end behavioral;
