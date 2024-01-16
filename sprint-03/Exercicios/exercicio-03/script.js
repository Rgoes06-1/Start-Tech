let input = document.querySelector("input");
let button = document.querySelector("button");
let buttonListar = document.getElementById("botaoMostrarLista");
let div = document.querySelector("div");
div.style.display = "none";

let codigoCliente = 0;

function pulaLinha() {
    document.write("<br>");
}

function divisor() {
    div.appendChild(document.createElement("hr"));
}

button.addEventListener("click", function() {
    adicionarCategoria();
});

buttonListar.addEventListener("click", function() {
    if (buttonListar.innerHTML === "Exibir lista") {
        div.style.display = "block";
        buttonListar.innerHTML = "Esconder lista";

    } else {
        div.style.display = "none";
        buttonListar.innerHTML = "Exibir lista";
    }
})

function adicionarCategoria() {
    let criarP = document.createElement("p");
    codigoCliente += 1;
    let texto = `<p> Código: ${codigoCliente} <br> Nome: ${input.value}`
    criarP.innerHTML = texto;
    div.appendChild(criarP);
    divisor();
}


