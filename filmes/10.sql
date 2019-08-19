select r.`rank`, f.nome, f.arrecadacao, d.nome, d.email from `rank` r 
join filme f on r.filme_id = f.id 
join diretor d on f.diretor = d.id order by r.`rank`