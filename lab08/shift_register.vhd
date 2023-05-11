library ieee;
use ieee.std_logic_1164.all;

entity shift_register is
generic (N : integer := 6);
port(
    clk     : in  std_logic;
    mode    : in  std_logic_vector(1 downto 0);
    ser_in  : in  std_logic;
    par_in  : in  std_logic_vector((N - 1) downto 0);
    par_out : out std_logic_vector((N - 1) downto 0)
  );
end shift_register;

architecture rtl of shift_register is
  signal last_state: std_logic_vector((N-1) downto 0);
begin
     	process
        begin
             	wait until clk'event and clk = '1';
                if mode = "01" then
                        for i in 0 to N-2 loop
                                last_state(i) <= last_state(i+1);
                        end loop;
                        last_state(N-1) <= ser_in;
                elsif mode = "10" then
                        for i in N to 2 loop
										 last_state(i) <= last_state(i-1);
                        end loop;
                        last_state(0) <= ser_in;
                elsif mode = "11" then
                        last_state <= par_in;
                end if;
                       	par_out <= last_state;
        end process;
end rtl;





