SELECT e.nome, avg(f.arrecadacao) FROM estudio e join filme f join producao p 
on (p.estudio_id = e.id and p.filme_id = f.id) group by e.nome order by avg(arrecadacao);