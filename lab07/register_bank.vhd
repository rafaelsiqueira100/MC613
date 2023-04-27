library ieee;
use ieee.std_logic_1164.all;
use work.zbuffer_package.all;
use work.dec3_to_8_package.all;
use work.reg_package.all;

entity register_bank is
  port (
    clk : in std_logic;
    data_in : in std_logic_vector(3 downto 0);
    data_out : out std_logic_vector(3 downto 0);
    reg_rd : in std_logic_vector(2 downto 0);
    reg_wr : in std_logic_vector(2 downto 0);
    we : in std_logic;
    clear : in std_logic
  );
end register_bank;

architecture structural of register_bank is
	signal d2r, r2d : std_logic_vector(7 downto 0);
	signal data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7 : std_logic_vector(3 downto 0);
begin
  -- Your code here!
	dec3x8D2R: dec3_to_8 port map (reg_wr, d2r);
	dec3x8R2D: dec3_to_8 port map (reg_rd, r2d);
	
	r0: reg port map (clk, data_in, data_out0, d2r(0), clear);
	zbuff0: zbuffer port map (data_out0, r2d(0), data_out);
	
	r1: reg port map (clk, data_in, data_out1, d2r(1), clear);
	zbuff1: zbuffer port map (data_out1, r2d(1), data_out);
	
	r2: reg port map (clk, data_in, data_out2, d2r(2), clear);
	zbuff2: zbuffer port map (data_out2, r2d(2), data_out);
	
	r3: reg port map (clk, data_in, data_out3, d2r(3), clear);
	zbuff3: zbuffer port map (data_out3, r2d(3), data_out);
	
	r4: reg port map (clk, data_in, data_out4, d2r(4), clear);
	zbuff4: zbuffer port map (data_out4, r2d(4), data_out);
	
	r5: reg port map (clk, data_in, data_out5, d2r(5), clear);
	zbuff5: zbuffer port map (data_out5, r2d(5), data_out);
	
	r6: reg port map (clk, data_in, data_out6, d2r(6), clear);
	zbuff6: zbuffer port map (data_out6, r2d(6), data_out);
	
	r7: reg port map (clk, data_in, data_out7, d2r(7), clear);
	zbuff7: zbuffer port map (data_out7, r2d(7), data_out);
end structural;