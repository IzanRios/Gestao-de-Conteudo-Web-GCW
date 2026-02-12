function avaliar(id, nota) {
    fetch("avaliar.php", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: "id=" + id + "&nota=" + nota
    }).then(() => {
        alert("Avaliação enviada!");
        location.reload();
    });
}

document.getElementById("pesquisa").addEventListener("keyup", function() {
    let filtro = this.value.toLowerCase();
    let cards = document.querySelectorAll(".card");

    cards.forEach(card => {
        let titulo = card.querySelector("h2").innerText.toLowerCase();
        card.style.display = titulo.includes(filtro) ? "block" : "none";
    });
});
