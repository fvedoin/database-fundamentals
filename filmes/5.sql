select filme.arrecadacao, estudio.nome from estudio
join producao on producao.estudio_id = estudio.id 
join filme on producao.filme_id = filme.id
order by filme.arrecadacao