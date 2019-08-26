/*Docentes com doutorado que atuam há 10 anos ou mais*/
SELECT * FROM pessoa p JOIN cargo c on (c.nome = p.cargo) WHERE c.categoria like "%docente%" 
AND p.formacao like "%doutorado%" AND DATEDIFF(CURRENT_DATE, p.data_admissao) >= 10*365