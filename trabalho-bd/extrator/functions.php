<?php
include ('config.php');
$con = getdb();

//Converte datas para o formato "date"
function Date2Sql($date){  
	if(strstr($date, "/")){
		$var = explode('/', $date); //tira a barra
		$date = $var[2] . '-' . $var[1] . '-' . $var[0]; //separa as datas $d[2] = ano $d[1] = mes etc
		return $date;
	} else  {
		return $date;
	}
}

if(isset($_POST["Import"])){
	$filename=$_FILES["file"]["tmp_name"];    
	if($_FILES["file"]["size"] > 0){
		$file = fopen($filename, "r");
		$i=0;
		//percorre todas as linhas da planilha
		while (($getData = fgetcsv($file, 10000, ";")) !== FALSE) {
			$i++;
			if ($i != 1) { //pula a primeira linha com o nome das colunas
				//monta a query
				$sql = "INSERT into dados (matricula,nome,formacao,cargo,categoria,classe_funcional,jornada_trabalho,regime_juridico,situacao_funcional,referencia_nivel_padrao,unidade_lotacao_codigo_siapecad,unidade_lotacao_nome,unidade_lotacao_sigla,data_admissao) 
				values ('".$getData[0]."','".$getData[1]."','".$getData[2]."','".$getData[3]."','".$getData[4]."','".$getData[5]."','".$getData[6]."','".$getData[7]."','".$getData[8]."','".$getData[9]."','".$getData[10]."','".$getData[11]."','".$getData[12]."','".Date2Sql($getData[13])."'); ";
				//executa a query
				$result = mysqli_query($con, $sql);
				//mostra a query executada na tela   
				echo $sql . "<br>";
			}
		}
		fclose($file);  
	}
}   
?>