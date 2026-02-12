<?php
include("conexao.php");

$id = $_POST['id'];
$nota = $_POST['nota'];

$conn->query("UPDATE receitas 
              SET votos = votos + 1,
                  soma_estrelas = soma_estrelas + $nota
              WHERE id = $id");
?>
