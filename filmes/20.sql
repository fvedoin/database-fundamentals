/* Filmes que tenham ficado com a melhor e com a pior colocação. */
select filme.nome from filme
join `rank` on (`rank`.filme_id = filme.id)
where `rank`.`rank` = (select max(`rank`.`rank`) from `rank`)
or `rank`.`rank` = (select min(`rank`.`rank`) from `rank`)