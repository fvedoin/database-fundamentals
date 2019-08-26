insert into cargo(nome, categoria) SELECT DISTINCT cargo, categoria FROM dados;

insert into lotacao(codSiapecadLotacao, nome, sigla) SELECT DISTINCT unidade_lotacao_codigo_siapecad, unidade_lotacao_nome, unidade_lotacao_sigla FROM dados;

insert into pessoa(matricula, nome, formacao, classe_funcional, jornada_trabalho, regime_juridico,
situacao_funcional, referencia_nivel_padrao, data_admissao, cargo, codLotacao) 
SELECT DISTINCT matricula, nome, formacao, classe_funcional, jornada_trabalho, regime_juridico,
situacao_funcional,	referencia_nivel_padrao, data_admissao, cargo, unidade_lotacao_codigo_siapecad 
FROM dados
