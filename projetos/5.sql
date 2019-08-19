select projeto.nomeProj from projeto 
join participacao on (projeto.codProj = participacao.codProj)
join pessoa on (pessoa.codPessoa = participacao.codPessoa) where
projeto.codProj not in(
select participacao.codProj from participacao
join pessoa on (pessoa.codPessoa = participacao.codPessoa)
where pessoa.salario < 1000)
group by projeto.nomeProj

