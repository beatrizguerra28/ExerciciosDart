class Livro {
  String titulo;
  String autor;
  int numeroPaginas;
  bool disponibilidade;

  Livro(this.titulo, this.autor, this.numeroPaginas) : disponibilidade = true;
  
  bool emprestar() { //método emprestar livro
    if (disponibilidade) {
      disponibilidade = false;
      print("Este livro $titulo foi emprestado. Volte em um prazo de 7 dias");


    return true;
     } else {
    print("O livro $titulo não está disponível para emprestimo");
    return false;
    }
  }
  bool devolver(){ //método de devolução do livro
  if (!disponibilidade){
    disponibilidade = true;
    print("O livro $titulo foi devolvido");
    return true;
  } else {
    print("O livro $titulo não foi devolvido");
    return false;

  }
  }
  bool estaDisponivel() => disponibilidade; // método para verificar se o livro está disponível
}

void main(){
  Livro livro1 = Livro("Suicidas", "Raphael Montes", 432);
  // Livro livro2 = Livro("A paciente silente", "Alexandre Michaelides", 350);
  // print("Disponibilidade Inicial: ${livro1.estaDisponivel()}");
// print("Disponibilidade Inicial: ${livro2.estaDisponivel()}");
  livro1.emprestar();
  livro1.devolver();
  print("Disponibilidade Inicial: ${livro1.estaDisponivel()}");
}