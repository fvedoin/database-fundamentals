SELECT f.nome FROM filme f 
join producao p on p.filme_id = f.id 
join estudio e on p.estudio_id = e.id 
where e.nome = 'Disney';