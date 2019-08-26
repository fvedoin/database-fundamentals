<?php
function getdb(){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db = "servidores";
    try {
        $conn = mysqli_connect($servername, $username, $password, $db);
        echo "Conectado com sucesso!"; 
    } catch(exception $e) {
        echo "Falha na conexão: " . $e->getMessage();
    }
    return $conn;
}
?>