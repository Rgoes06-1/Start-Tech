export function pularLinha() {
    document.write("<br>");
}

export function alinhamento() {
    document.write("<hr>");
}

export function cabecalho() {
    document.write("<h1><header>>> COMEX <<</header><h1>")
}

export function titulo(title, codigo = 0) {
    document.write(title);
    pularLinha();
}

export function conteudo() {

    document.write("O projeto")
    document.write("<b> Comex </b>")
    document.write(" é um sistema de e-commerce marketplace.")
    document.write(
        " Seu objetivo é permitir que a  sua base de clientes tenha acesso a vários vendedores e," +
        " assim, consolidar - se como o shopping eletrônico mais popular da internet.<br>")

}

export function rodape() {
    document.write("<br><footer>.::Alura LEVEL UP::.</footer>");
}

export function registrarClientes(nome, mesNascimento, anoNascimento) {
    document.write("Nome: " + nome + "<br>");
    document.write("Mês de nascimento:" + mesNascimento + "<br>");
    document.write("Ano de nascimento: " + anoNascimento + "<br>");
    alinhamento();
    idadesAcumuladas = idadesAcumuladas + formatarIdade(anoNascimento);
    pularLinha();
}

export function mostrarEstatisticas() {
    document.write("***Estatística***");
    pularLinha();
    somaIdade();
    calcularMedia();

}
export function somaIdade() {
    document.write("Soma das idades: " + idadesAcumuladas + "<br>")
};

export function calcularMedia() {
    let resultado;

    resultado = Math.round(idadesAcumuladas / 3);
    document.write("Média das idades: " + resultado);
}

export function formatarIdade(anoNascimento) {
    let resultado;
    resultado = anoAtual.getFullYear() - anoNascimento;
    return resultado;
}
