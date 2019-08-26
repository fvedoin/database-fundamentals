/*Unidade com maior número de servidores de classe A*/
select max(quant) from (select count(*) as quant from pessoa WHERE classe_funcional like "%classe a%" 
group by codLotacao) as tab