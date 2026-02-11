<?php
include("conexao.php");

$titulo = $_POST['titulo'];
$descricao = $_POST['descricao'];
$imagem = $_POST['imagem'];

$sql = "INSERT INTO receitas (titulo, descricao, imagem) 
        VALUES ('$titulo','$descricao','$imagem')";

$conn->query($sql);

header("Location: index.php");
?>
