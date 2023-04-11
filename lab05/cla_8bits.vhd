library ieee;
use ieee.std_logic_1164.all;

entity cla_8bits is
  port(
    x    : in  std_logic_vector(7 downto 0);
    y    : in  std_logic_vector(7 downto 0);
    cin  : in  std_logic;
    sum  : out std_logic_vector(7 downto 0);
    cout : out std_logic
  );
end cla_8bits;
-- Para resolver o lab05 CLA, usamos a relaçao dos carries calculados a priori de acordo com
-- a seguinte expressao c(i) = g(i-1) + p(i-1)c(i-1), ou seja, o i-esimo carry eh obtido por meio
-- do AND dos operandos anteriores e do OR com AND do carry anterior. Mas, o carry anterior eh obtido
-- em relaçao ao carryIn de entrada do circuito e isto permite que o calculo dos carries sejam feitos
-- sem dependencia nenhuma.

-- Abaixo, usamos o vetor g e p como representacao do AND e OR dos operandos x(i) e y(i). O vetor de carry
-- eh encarregado por armazenar os carries produzidos a cada iteracao exibida acima.

-- A unica diferenca entre o CLA de 4 e 8bits eh o tamanho dos vetores e a quantidade de iteracoes, naturalmente.
architecture rtl of cla_8bits is
	signal carry : std_logic_vector(8 downto 0);
	signal g, p : std_logic_vector(7 downto 0);
begin
  -- add your code!
	g_p_loop: for i in 0 to 7 generate
		g(i) <= x(i) AND y(i);
		p(i) <= x(i) OR y(i);
	end generate g_p_loop;
	
	carry(0) <= cin;
	carry(1) <= g(0) OR (p(0) AND cin);
	carry(2) <= g(1) OR (p(1) AND (g(0) OR (p(0) AND cin)));
	carry(3) <= g(2) OR (p(2) AND (g(1) OR (p(1) AND (g(0) OR (p(0) AND cin)))));
	carry(4) <= g(3) OR (p(3) AND (g(2) OR (p(2) AND (g(1) OR (p(1) AND (g(0) OR (p(0) AND cin)))))));
	carry(5) <= g(4) OR (p(4) AND (g(3) OR (p(3) AND (g(2) OR (p(2) AND (g(1) OR (p(1) AND (g(0) OR (p(0) AND cin)))))))));
	carry(6) <= g(5) OR 
		(p(5) AND (g(4) OR (p(4) AND (g(3) OR (p(3) AND (g(2) OR (p(2) AND (g(1) OR (p(1) AND (g(0) OR (p(0) AND cin)))))))))));
	carry(7) <= g(6) OR 
		(p(6) AND (g(5) OR (p(5) AND (g(4) OR (p(4) AND (g(3) OR (p(3) AND (g(2) OR (p(2) AND (g(1) OR (p(1) AND (g(0) OR (p(0) AND cin)))))))))))));
	carry(8) <= g(7) OR 
		(p(7) AND (g(6) OR (p(6) AND (g(5) OR (p(5) AND (g(4) OR (p(4) AND (g(3) OR (p(3) AND (g(2) OR (p(2) AND (g(1) OR (p(1) AND (g(0) OR (p(0) AND cin)))))))))))))));
	cout <= carry(8);
	
	sum_loop: for j in 0 to 7 generate
		sum(j) <= x(j) XOR y(j) XOR carry(j);
	end generate sum_loop;
end rtl;
