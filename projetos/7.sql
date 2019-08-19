select projeto.nomeProj from projeto 
where projeto.codProj not in(
select participacao.codProj from participacao
join pessoa on (pessoa.codPessoa = participacao.codPessoa)
join categoria on (categoria.codCateg = pessoa.codCateg)
where categoria.nomeCateg = 'Auditor')

