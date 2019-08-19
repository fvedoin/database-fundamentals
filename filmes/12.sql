select diretor.nome, count(filme.id) from diretor
join filme on diretor.id = filme.diretor
join `rank` on `rank`.filme_id = filme.id
where `rank`.`rank` <= 3 group by diretor.nome