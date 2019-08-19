select filme.nome, estudio.nome from filme join producao
on (producao.filme_id = filme.id)
join estudio 
on(estudio.id = producao.estudio_id)