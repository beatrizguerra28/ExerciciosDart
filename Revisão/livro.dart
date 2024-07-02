class Livro {
  String titulo;
  String autor;
  int numeroPaginas;
  bool _disponivel;

  Livro(this.titulo, this.autor, this.numeroPaginas) : _disponivel = true;
  
  bool emprestar() { //método emprestar livro
    if (_disponivel) {
      _disponivel = false;
      print("Este $titulo foi emprestado. Volte depois");
    return true;
     } else {
    print("O livro $titulo não está disponível para emprestimo");
    return false;
    }
  }
  }