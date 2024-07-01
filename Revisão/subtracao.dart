
int Subtracao(List<int> numeros){
  if (numeros.isEmpty){ 
    return 0;
  }
int resultado = numeros[0];
  for(int i = 1; i < numeros.length; i++){
    resultado -= numeros[i];
  }
  return resultado;
}
void main(){
List<int> numero = [10, 8];
int resultado = Subtracao(numero);
  print("A subtração dos números é: $resultado");
}