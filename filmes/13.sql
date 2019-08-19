select min(filme.arrecadacao), max(filme.arrecadacao), diretor.nome from filme
join diretor on filme.diretor = diretor.id group by diretor