
void calculadora (int precoOriginal, int desconto){
  double descontoPercentual = precoOriginal * (desconto / 100);
  double precoFinal = precoOriginal - descontoPercentual;
  print( "O preço original é $precoOriginal, o desconto é $descontoPercentual e o preço final é $precoFinal");
  
}


void main(){ 
  calculadora(1000, 20);
}