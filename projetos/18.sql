select pessoa.nome from pessoa 
where pessoa.codPessoa in (select participacao.codPessoa from participacao where funcao = 'Lider') and
pessoa.codCateg <> (select categoria.codCateg from categoria where categoria.nomeCateg = 'Gerente')
