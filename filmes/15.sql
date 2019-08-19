select min(`rank`.`rank`), max(`rank`.`rank`), 
min(filme.arrecadacao), max(filme.arrecadacao), 
diretor.nome from `rank`
join filme on filme.id= `rank`.filme_id
join diretor on diretor.id = filme.diretor
group by diretor.nome