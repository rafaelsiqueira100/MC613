library ieee;
use ieee.std_logic_1164.all;

entity multiplier is
	generic (
		N: integer := 4
	);
	port (
		a, b : in std_logic_vector(N-1 downto 0);
		-- Operandos (multiplicador e multiplicando)
		r : out std_logic_vector(2*N-1 downto 0);
		-- Resultado (produto)
		clk : in std_logic;
		-- Clock
		set : in std_logic
		-- Operandos foram alterados
	);
end multiplier;

architecture arch of multiplier is
	signal zeros: std_logic_vector(N-1 downto 0);
	signal modo_fator1 : std_logic_vector(1 downto 0);
	signal modo_fator2: std_logic_vector(1 downto 0);
	signal fator1_aux: std_logic_vector(2*N-1 downto 0);
	signal fator2_aux: std_logic_vector(2*N-1 downto 0);
	signal alu_set: std_logic;
	signal produto: std_logic_vector(2*N-1 downto 0);
	signal dados_alu: std_logic_vector(2*N-1 downto 0);
	signal zeros_a, zeros_b: std_logic_vector(2*N-1 downto 0);
begin
	zeros <= (others => '0');
	zeros_a <= zeros & a;
	zeros_b <= zeros & b;
	fator1_reg: entity work.shift_register generic map (2*N) port map(clk => not clk, mode => modo_fator1, ser_in => '0', par_in => zeros_a, par_out => fator1_aux);
	fator2_reg: entity work.shift_register generic map (N) port map(clk => not clk, mode => modo_fator2, ser_in => '0', par_in => zeros_b, par_out => fator2_aux);
	alu		 : entity work.alu generic map (2*N) port map (a => produto, 
					b => fator2_aux, set => alu_set,	clk => not clk, result => dados_alu);
	process
	begin
		wait until clk'event and clk='1';
		if set = '1' then
			modo_fator1 <= "11";
			modo_fator2 <= "11";
			produto <= (others => '0');
			alu_set <= '0';
		else
			alu_set <= fator2_aux(0);
			produto <= dados_alu;
			modo_fator1 <= "10";
			modo_fator2 <= "01";
		end if;
	end process;
	r <= dados_alu;
end arch;