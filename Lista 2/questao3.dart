int somaNumeros(List<int> numeros){
  int soma = 0;
  for(int numero in numeros ){
    soma += numero;
  }
  return soma;
}

void main(){
List <int> listaNumeros =[10, 4, 3, 4, 50];
int resultado = somaNumeros(listaNumeros);

  print("A soma dos números é: $resultado");
}

