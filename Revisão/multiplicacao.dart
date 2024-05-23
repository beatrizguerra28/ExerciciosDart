
int multiplicacaoNumero (List<int> numeros){
    if (numeros.isEmpty){
      throw ArgumentError("A lista é vazia, corrija e tente novamente");
    }
    int result = 1;
    for (int numero in numeros){
      result *= numero;
    }
    return result;
}

void main(){
  List<int> numeros = [10, 2, 3, 4];
  int resultado = multiplicacaoNumero(numeros);
  print("A multiplicação dos números é: $resultado");
}