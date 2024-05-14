void salario (int horas){
  double salarioHora = 10.00;
  double horasExtras = 20.00;
  double salario;
  double salarioExcedente = 0.00;
  if (horas <= 50){
    salario = horas * salarioHora;
  }
  else {
    salario = 50 * salarioHora + (horas - 50) * horasExtras;
    salarioExcedente = (horas - 50) * horasExtras;
  }
  print("Salario Excedente: $salarioExcedente");
  print("Salario Total: $salario");
}

void main(){
  salario(90);
}

