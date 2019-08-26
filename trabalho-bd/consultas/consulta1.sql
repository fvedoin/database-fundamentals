/*Docentes com mestrado admitidos de 2015 em diante*/
SELECT * FROM pessoa p JOIN cargo c on (c.nome = p.cargo)
where c.categoria like "%docente%" /*é usado like, pois o registro da tabela csv possui muitos espaços*/
and p.formacao = "mestrado"
and p.data_admissao > "2015-01-01" 