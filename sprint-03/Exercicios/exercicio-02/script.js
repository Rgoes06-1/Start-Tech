let input = document.querySelector("input");
let button = document.querySelector("button");
let div = document.querySelector("div");

let codigoCliente = 0;

function pulaLinha() {
    document.createElement("br");
}

function divisor() {
    div.appendChild(document.createElement("hr"));
}

function adicionarCategoria() {
    let criarP = document.createElement("p");
    codigoCliente += 1;
    let texto = `<p> Código: ${codigoCliente} <br> Nome: ${input.value}`
    criarP.innerHTML = texto;
    div.appendChild(criarP);
    divisor();
}

button.onclick = adicionarCategoria;