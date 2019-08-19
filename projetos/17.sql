select pessoa.nome from pessoa join participacao on (participacao.codPessoa = pessoa.codPessoa)
where participacao.comissao > some(select pessoa.salario from pessoa) group by pessoa.nome