/*Professores substitutos no Instituto de Ciências Humanas*/
SELECT * FROM pessoa p JOIN lotacao l on (l.codSiapecadLotacao = p.codLotacao)
WHERE l.nome = "INSTITUTO DE CIENCIAS HUMANAS" 
AND p.situacao_funcional = "professor substituto"