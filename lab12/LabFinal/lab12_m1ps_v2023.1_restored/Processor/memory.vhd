LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memory IS
	GENERIC (
		WORDSIZE : NATURAL := 32; -- Tamanho da palavra de dados
		BITS_OF_ADDR : NATURAL := 10; -- Tamanho da palavra de endereços
		MIF_FILE : STRING := "memory.mif" -- Arquivo com a imagem (conteudo) da memoria
	);
	PORT (
		clock   : IN	STD_LOGIC; -- Clock
		we      : IN	STD_LOGIC; -- Permissao de escrita
		address : IN	STD_LOGIC_VECTOR(BITS_OF_ADDR-1 DOWNTO 0); -- Endereço
		datain  : IN	STD_LOGIC_VECTOR(WORDSIZE-1 DOWNTO 0); -- Dado de entrada
		dataout : OUT	STD_LOGIC_VECTOR(WORDSIZE-1 DOWNTO 0) -- Dado de saida
	);
END ENTITY;
--
--1) Uma porta de dados de escrita e uma porta de dados de leitura independentes;
--2) Escrita síncrona quando o sinal de permissão de escrita (we) está em nível
--lógico alto;
--3) Leitura síncrona a cada ciclo de clock (sem sinal de permissão de leitura);
--4) Inicializável com um arquivo .mif.
--5) Note os parâmetros de configuração definidos na seção Generic da declaração
--da entidade.
ARCHITECTURE RTL OF memory IS
-- Me complete e descomente!

TYPE ram_type IS array(0 TO (2** BITS_OF_ADDR) -1) of std_logic_vector(WORDSIZE -1 DOWNTO 0); -- Aqui!
SIGNAL ram			: ram_type;
ATTRIBUTE ram_init_file			: STRING;
ATTRIBUTE ram_init_file OF ram	: SIGNAL IS MIF_FILE;	
signal first_q: std_logic_vector(7 downto 0);
signal second_q: std_logic_vector(7 downto 0);
signal third_q: std_logic_vector(7 downto 0);
signal fourth_q: std_logic_vector(7 downto 0);
signal fifth_q: std_logic_vector(7 downto 0);
signal sixth_q: std_logic_vector(7 downto 0);
signal seventh_q: std_logic_vector(7 downto 0);
signal eighth_q: std_logic_vector(7 downto 0);
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
		line_to_read : out std_logic;
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
BEGIN 
-- Leitura e Escrita independentes!
-- Agora, inves de trabalharmos com 

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
process(clock, we)
begin
	if (we = '1') then
		if (valid_address = '0') then
			wr_first_block <= '0';
			wr_second_block <= '0';
			DataOut <= (others => 'Z');
		else
			wr_first_block <= not line_to_read;
			wr_second_block <= line_to_read;
		end if;
	end if;
	
	if(clock'event and clock='1') then
		wr_first_block <= '0';
		wr_second_block <= '0';
		address_in <= Address;
		if (valid_address = '0') then
			DataOut <= (others => 'Z');
		else
			  address_in <= Address;
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
				 --if clock'event and clock = '1' then
					--if we = '1' then
						--ram(to_integer(unsigned(address))) <= datain;
					--end if;
					--dataout <= ram(to_integer(unsigned(address)));
	end if;
end process;
end architecture RTL;