select projeto.nomeProj from projeto join participacao on (projeto.codProj = participacao.codProj),
(select count(*) as num from participacao join projeto on (projeto.codProj = participacao.codProj)) as tabela
where num >= all (select count(*) from participacao join projeto on (projeto.codProj <> participacao.codProj))