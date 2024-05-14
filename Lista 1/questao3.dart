
void calculadoraSimples (int valorInicial, double juros, int tempo){
  double juros2 = (valorInicial * tempo * juros) / 100; 
  double montante = (valorInicial + juros2);
  print("$montante");
}

void main(){ 
  calculadoraSimples(1, 20.2, 2);
}