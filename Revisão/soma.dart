
int somaNumeros(List<int> numeros){
  int soma = 0;
  for (int numero in numeros){
    soma += numero;
  }
  return soma;
}

void main(){
  List <int> listaNumeros = [10,10,8];
  int resultado = somaNumeros(listaNumeros);

  print("A soma dos numeros é: $resultado");
}



