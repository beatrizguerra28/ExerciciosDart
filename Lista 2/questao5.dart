int contarVogais(String texto) {
  int contador = 0;
  
  for (int i = 0; i < texto.length; i++) {
    String letra = texto[i].toLowerCase();
    if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') { //nao conta acentos
      contador++;
    }
  }
  
  return contador;
}

void main() {
  String texto = "Olá Mundo";
  int vogais = contarVogais(texto);
  
  print("O texto tem $vogais vogais.");
}