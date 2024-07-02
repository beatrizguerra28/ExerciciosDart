class contaCorrente { 
  String numeroConta; //Atributos
  String nome;
  double saldo;
contaCorrente({  //construtor
   required this.numeroConta,
   required this.nome,
   this.saldo = 0.0

});
// Método para depositar dinheiro
void deposito(double valor){
  if (valor > 0){
    saldo += valor;
    print("Depósito de \$${valor.toStringAsFixed(2)} realizado com sucesso");
  } else {
    print("Valor deve ser positivo.");

  }
}
  // Metodo para sacar dinheiro
  void saque(double valor){
    if (valor > 0){
      if (valor <= saldo){
        saldo -= valor;
        print("Saque de \$${valor.toStringAsFixed(2)} realizado.");
      } else {
        print("Saldo insuficiente para saque.");
      }
      } else {
       print("Valor deve ser positivo.");
      }
    }
    void exibirSaldo(){
      print("Seu saldo é de \$${saldo.toStringAsFixed(2)}");
    }

  }
  void main(){
    var conta  = contaCorrente(nome: "Beatriz Guerra", numeroConta: "2875-6");
    conta.exibirSaldo();
    conta.deposito(-1000);
    conta.exibirSaldo();
    conta.saque(2);
    conta.exibirSaldo();
  }


