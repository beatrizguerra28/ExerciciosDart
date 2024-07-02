class Retangulo {  //classe
double largura; //atributos
double altura;

Retangulo({ // construtor
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
  var retangulo = Retangulo(largura: 10, altura: 5);

  double area = retangulo.calcularArea();
  double perimetro = retangulo.calcularPerimetro();
  print ("Área do Retângulo: ${area}");
  print ("Perimetro do Retângulo: ${perimetro}");	
}