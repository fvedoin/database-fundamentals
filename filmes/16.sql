select diretor.nome from diretor 
join filme on (filme.diretor = diretor.id)
where filme.id not in(select `rank`.filme_id from `rank` where `rank`.`rank` <= 3)
group by diretor.nome