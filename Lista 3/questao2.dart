class Retangulo{
  double largura;
  double altura;

  Retangulo({
  required this.largura,
  required this.altura,
});

double calcularArea(){
  return largura * altura;
}

double calcularPerimetro(){
  return 2 * (largura + altura);
}
}
void main(){
  var retangulo = Retangulo(largura: 10.0, altura: 5.0);

  double area = retangulo.calcularArea();
  double perimetro = retangulo.calcularPerimetro();
  print ("Área do Retângulo: ${area}");
  print ("Perimetro do Retângulo: ${perimetro}");	
}