class Pais {
  String codigoISO;
  String nome;
  int populacao;
  double dimensao;

  // Construtor da classe
  Pais(this.codigoISO, this.nome, {this.populacao = 0, this.dimensao = -1});

  // Método para verificar se dois países são iguais
  bool ehIgual(Pais outro) {
    return this.codigoISO == outro.codigoISO;
  }

  // Método para calcular a densidade populacional
  double densidadePopulacional() {
    if (dimensao > 0) {
      return populacao / dimensao;
    } else {
      return -1; // Indicando que a densidade não pode ser calculada
    }
  }
}

void main() {
  // Criando instâncias da classe Pais
  Pais brasil = Pais('BRA', 'Brasil', populacao: 193946886, dimensao: 8515767.049);
  Pais argentina = Pais('ARG', 'Argentina', populacao: 45195777, dimensao: 2780400);
  Pais semDimensao = Pais('XYZ', 'Pais Sem Dimensao', populacao: 1000000);

  // Verificando a igualdade semântica
  print('Brasil é igual a Argentina? ${brasil.ehIgual(argentina)}');
  print('Brasil é igual a Brasil? ${brasil.ehIgual(brasil)}');

  // Calculando a densidade populacional
  print('Densidade populacional do Brasil: ${brasil.densidadePopulacional()} habitantes/Km²');
  print('Densidade populacional da Argentina: ${argentina.densidadePopulacional()} habitantes/Km²');
  print('Densidade populacional do País sem dimensão: ${semDimensao.densidadePopulacional()}');
}