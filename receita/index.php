<?php include("conexao.php"); ?>
<!DOCTYPE html>
<html>
<head>
    <title>Receitas de Salgados</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <h1>Receitas de Salgados</h1>
    <input type="text" id="pesquisa" placeholder="Pesquisar receita...">
</header>

<div class="container">

<?php
$sql = "SELECT *, 
        IF(votos=0,0,(soma_estrelas/votos)) as media 
        FROM receitas 
        ORDER BY media DESC";
$result = $conn->query($sql);

while($row = $result->fetch_assoc()):
?>

<div class="card">
    <img src="<?= $row['imagem'] ?>" alt="">
    <h2><?= $row['titulo'] ?></h2>
    <p><?= $row['descricao'] ?></p>

    <div class="estrelas" data-id="<?= $row['id'] ?>">
        <?php for($i=1;$i<=5;$i++): ?>
            <span onclick="avaliar(<?= $row['id'] ?>, <?= $i ?>)">★</span>
        <?php endfor; ?>
    </div>

    <p>Média: <?= number_format($row['media'],1) ?> ⭐</p>
</div>

<?php endwhile; ?>

</div>

<a class="btn" href="adicionar.php">+ Adicionar Receita</a>

<script src="script.js"></script>
</body>
</html>
