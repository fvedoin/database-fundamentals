select r.`rank`, f.nome, f.ano, f.arrecadacao, d.nome, d.email, a.nome from `rank` r 
join avaliador a on a.id = r.avaliador_id
join filme f on r.filme_id = f.id 
join diretor d on f.diretor = d.id order by r.`rank`