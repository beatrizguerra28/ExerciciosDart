import 'dart:math';

int solucao(){
  Random random = new Random();
  int valor = random.nextInt(41) + 10;
  int resultado = 0;

  while(valor != 25) {
    resultado ++;
    valor = random.nextInt(41) + 10;

  }
  return resultado;
}

void main(){
  print(solucao());
}
