select min(`rank`.`rank`), max(`rank`.`rank`), diretor.nome from `rank`
join filme on filme.id= `rank`.filme_id
join diretor on diretor.id = filme.diretor
group by diretor.nome