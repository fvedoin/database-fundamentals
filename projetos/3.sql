select sum(participacao.comissao), projeto.nomeProj from participacao
join projeto on (projeto.codProj = participacao.codProj) group by projeto.nomeProj