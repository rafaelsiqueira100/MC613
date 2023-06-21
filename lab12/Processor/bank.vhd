LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY Processor;
USE Processor.Processor_pack.reg;

ENTITY bank IS
	GENERIC (
		WORDSIZE : NATURAL := 32 -- Tamanho da palavra de dados
	);
	PORT (
		WR_EN : IN STD_LOGIC; -- Permissao de escrita (ativo em nivel alto)
		RD_EN : IN STD_LOGIC; -- Permissao de leitura (ativo em nivel alto)
		clear : IN STD_LOGIC; -- Limpar todos os registradores (ativo em nivel alto)
		clock : IN STD_LOGIC; -- Clock
		WR_ADDR : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Registrador para escrita
		RD_ADDR1 : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Registrador para leitura 1
		RD_ADDR2 : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Registrador para leitura 2
		DATA_IN : IN STD_LOGIC_VECTOR (WORDSIZE-1 DOWNTO 0); -- Entrada de dados
		DATA_OUT1 : OUT STD_LOGIC_VECTOR (WORDSIZE-1 DOWNTO 0); -- Saida de dados 1
		DATA_OUT2 : OUT STD_LOGIC_VECTOR (WORDSIZE-1 DOWNTO 0) -- Saida de dados 2
	);
END ENTITY;

ARCHITECTURE Behavior OF bank IS
	type t_reg_array is array (WORDSIZE-1 downto 0) of work.reg;
	signal reg_array : t_reg_array;
	
	signal address1_idx, address2_idx : integer;
BEGIN

	createRegs: for i in 0 to WORDSIZE-1 generate
		r_i: reg_array(i) <= work.reg port map(clock => clock, load => WR_EN, clear => clear, datain => DATA_IN, dataout => DATA_OUT);
	end generate;
	
	process(clock)
	begin
		if clock'event and clock = '1' then
			if RD_EN = '0' then
				DATA_OUT1 <= (OTHERS => 'Z');
				DATA_OUT2 <= (OTHERS => 'Z');
			end if;
		end if;
	end process;
END ARCHITECTURE;