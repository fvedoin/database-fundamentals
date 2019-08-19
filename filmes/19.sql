 /* Filmes produzidos pela LionsGate ou que tenham ficado pelo menos em terceiro lugar em alguma avaliação */
select filme.nome from filme
join producao on (producao.filme_id = filme.id)
join estudio on (estudio.id = producao.estudio_id)
where (filme.id = some (select `rank`.filme_id from `rank` where `rank`.`rank` <= 3))
or estudio.nome = 'LionsGate'
group by filme.nome