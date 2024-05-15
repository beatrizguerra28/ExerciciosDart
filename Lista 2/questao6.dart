void numeroPrimo(int numero){
  int numeroPrimo = 1;
  for (int i = 2; i < numero; i++) { //2?
    if (numero % i == 0) {
      numeroPrimo = 0;
    }
  }
  if (numeroPrimo == 1) {
    print("O número $numero é primo");
  } else {
    print("O número $numero não é primo");

    
  }
}

void main(){
  numeroPrimo(4);

}