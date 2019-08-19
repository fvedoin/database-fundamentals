select count(distinct projeto.codProj) from projeto
join participacao on (participacao.codProj = projeto.codProj) 
join pessoa on (participacao.codPessoa = pessoa.codPessoa)
join categoria on (pessoa.codCateg = categoria.codCateg)
where categoria.nomeCateg = 'Revisor'