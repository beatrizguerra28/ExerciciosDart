int calculaFatorial(int numero){
  if (numero == 0 || numero == 1){
    return 1;
  } else {
    return numero * calculaFatorial(numero - 1);
  }
  }

  void main(){
    calculaFatorial(13);
    print(calculaFatorial(13));
  }