select estudio.nome, avg(filme.arrecadacao) as arrecad from estudio
join producao on (producao.estudio_id = estudio.id)
join filme on (producao.filme_id = filme.id)
group by estudio.nome
having arrecad > (select avg(filme.arrecadacao) from filme)
