<!DOCTYPE html>
<html>
<head>
    <title>Adicionar Receita</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h1>Nova Receita</h1>

<form action="salvar_receita.php" method="POST">
    <input type="text" name="titulo" placeholder="Título" required>
    <textarea name="descricao" placeholder="Descrição" required></textarea>
    <input type="text" name="imagem" placeholder="URL da imagem">
    <button type="submit">Salvar</button>
</form>

</body>
</html>

