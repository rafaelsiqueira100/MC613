-- Podemos utilizar uma m´aquina de estados para a avaliar a sa´ida depois de alimenta-la com toda
-- a sequencia. Para isto, pensei em uma alternativa que eh reutilizar a fsm_diag, pois
-- existe um unico estado cuja saida seja 1. Mas, consegui chegar no estado B apenas fazendo a seguinte
-- sequencia:

-- Chegar ao estado C e alimentar o sistema com o inverso da sequencia 0101
-- entao, chegar no estado C alimentado o sistema com 1 e depois 0
-- e alimentar com o inverso da sequencia. Isto fara a fsm chegar no estado B cuja saida eh
-- 1 e assim sera o input do da saida Z do fsm_seq