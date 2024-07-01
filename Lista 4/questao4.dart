class Livro{
  String titulo;
  String autor;
  int numeroPaginas;
  bool estaDisponivel;
  Livro(this.titulo,this.autor,this.numeroPaginas,){ 
   estaDisponivel = true;
}
  //método emprestar o livro
  void emprestar(){
    if(estaDisponivel){
      estaDisponivel = false;
      print("O livro '$titulo' foi emprestado.");
    } else {
      print("O livro '$titulo' já foi emprestado.");
  }
}
//método devolver o livro
void devolver(){
  if(!estaDisponivel){
    estaDisponivel = true;
    print("O livro '$titulo' foi devolvido.");
  } else {
    print("O livro '$titulo' não foi devolvido.");

    //Método para verificar se o livro está disponível
    bool estaDisponivel(){
      return estaDisponivel();
    }
  }

  void main(){
    Livro livro1 = Livro("Harry Potter", "J.K. Rowling", 400);
    Livro livro2 = Livro("O Senhor dos Aneis", "J.R.R. Tolkien", 700);
    Livro livro3 = Livro("A arte da Guerra", "Sun Tzu", 200);
    print("O livro '${livro1.titulo}' está disponível? ${livro1.estaDisponivel}");
    livro1.emprestar();
    print("O livro '${livro1.titulo}' está disponível? ${livro1.estaDisponivel}");
    livro1.emprestar();
    livro1.devolver();
    print('O livro "${livro1.titulo}" está disponível? ${livro1.estaDisponivel}');

  }


}