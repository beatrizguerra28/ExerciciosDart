
int subtracaoNumeros(List<int> numeros){
  if (numeros.isEmpty){
    throw ArgumentError("Lista vazia, não pode!");
  }
  int result = numeros[0];
  for (int i = 1; i < numeros.length; i++){
    result -= numeros[i];
  }
  return result;
}

void main(){
  List<int> listaNumeros = [100, 40, 28];
  int resultado = subtracaoNumeros(listaNumeros);
  print("A subtração dos números é: $resultado"); 
}