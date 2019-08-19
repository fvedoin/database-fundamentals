/* Média geral de arrecadação considerando a arrecadação média de cada estúdio */
select avg(tab.arrecad) from (select estudio.nome, avg(filme.arrecadacao) as arrecad from estudio
join producao on (producao.estudio_id = estudio.id)
join filme on (filme.id = producao.filme_id)
group by estudio.nome) as tab