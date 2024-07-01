void primo(int numero){
  int primo = 1;

  for (int i = 2; i < numero; i++) {

    if (numero % 1 == 0){
      primo = 0;

    }
  }
  if (primo == 1){
    print("O número $numero é primo");
  } else {
    print("O número $numero não é primo");
  }
}

void main(){
  primo(2);
  primo(5);
  

}