--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira RA: 175154
library ieee;
use ieee.std_logic_1164.all;
-- Esta entidade representa a memoria como um todo
--representada por 8 blocos de memoria menores, cada um com 128 bytes
-- totalizando 1024 bytes
entity ram is
  port (
    Clock : in std_logic;
    Address : in std_logic_vector(9 downto 0);
    DataIn : in std_logic_vector(31 downto 0);
    DataOut : out std_logic_vector(31 downto 0);
    WrEn : in std_logic
  );
end ram;

architecture rtl of ram is
        signal first_q: std_logic_vector(7 downto 0);
        signal second_q: std_logic_vector(7 downto 0);
        signal third_q: std_logic_vector(7 downto 0);
        signal fourth_q: std_logic_vector(7 downto 0);
        signal fifth_q: std_logic_vector(7 downto 0);
        signal sixth_q: std_logic_vector(7 downto 0);
        signal seventh_q: std_logic_vector(7 downto 0);
        signal eighth_q: std_logic_vector(7 downto 0);
        signal wr_enable: std_logic_vector (7 downto 0);
        signal address_out: std_logic_vector(6 downto 0);
        signal line_to_read: std_logic;
        signal valid_address : std_logic;
		  signal address_in: std_logic_vector(9 downto 0);
		  signal wr_first_block: std_logic;
		  signal wr_second_block: std_logic;
		  signal firstDataOut, secondDataOut: std_logic_vector(31 downto 0);

        component ram_map is
      port (
               AddressIn : in std_logic_vector(9 downto 0);
               LineToRead : out std_logic;
               AddressOut : out std_logic_vector(6 downto 0);
               IsValid: out std_logic
              );
      end component;

      component ram_block is
      port (
               Clock : in std_logic;
               Address : in std_logic_vector(6 downto 0);
                 --address : 2^7-1 a 0 = 127 a 0
               Data : in std_logic_vector(7 downto 0);
               Q : out std_logic_vector(7 downto 0);
               WrEn : in std_logic
              );
      end component;
begin       
wr_first_block <= (not address_in(9)) and (not address_in(8)) and (not address_in(7)) and WrEn;
wr_second_block <= address_in(9) and (not address_in(8)) and (not address_in(7)) and WrEn;
ramMap: ram_map port map (address_in, line_to_read, address_out, valid_address);
ram_block1 : ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(31 downto 24), Q => first_q, WrEn => wr_first_block);
ram_block2 : ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(23 downto 16), Q => second_q, WrEn => wr_first_block);    
ram_block3 : ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(15 downto 8), Q => third_q, WrEn => wr_first_block);    
ram_block4 : ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(7 downto 0), Q => fourth_q, WrEn => wr_first_block);    
ram_block5 : ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(31 downto 24), Q => fifth_q, WrEn => wr_second_block);       
ram_block6 : ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(23 downto 16), Q => sixth_q, WrEn => wr_second_block);        
ram_block7 : ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(15 downto 8), Q => seventh_q, WrEn => wr_second_block);       
ram_block8 : ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(7 downto 0), Q => eighth_q, WrEn => wr_second_block); 
firstDataOut <= first_q & second_q & third_q & fourth_q;
secondDataOut <= fifth_q & sixth_q & seventh_q & eighth_q;
process(Address, firstDataOut, secondDataOut)--n~ao coloco clock em process pq j´a esta em ram_block
        begin
		  address_in <= Address;
			 
                 if(valid_address = '0') then
								wr_enable <= "00000000";
                        DataOut <= (others => 'Z');
                 else
                        case line_to_read is
                          when '0' =>
                                 --wr_enable <= WrEn & WrEn & WrEn & WrEn & "0000";
                                 DataOut <= firstDataOut;
                          when '1' =>
                                 --wr_enable <= "0000" & WrEn & WrEn & WrEn & WrEn;
                                 DataOut <= secondDataOut;
                          when others =>
                                DataOut <= (others => 'Z');
                        end case;
          end if;
end process;

end rtl;
