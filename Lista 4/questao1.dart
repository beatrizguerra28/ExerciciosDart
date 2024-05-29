
class contaCorrente {
  String numeroConta;
  String nomeCorrentista;
  double saldo;
  //Construtor
  contaCorrente({
    required this.numeroConta, //obrigatório
    required this.nomeCorrentista, //obrigatório
    this.saldo = 0.0, //opcional
    });

    //Métodos
    void deposito(double valor){
      if (valor > 0){ //se o valor for maior que zero 
        saldo += valor; //somar valor ao saldo
        print("Depósito de \$${valor.toStringAsFixed(2)} realizado com sucesso"); //imprimindo o valor do saldo e dizendo que tenha apenas duas casa decimais pós a vírgula
      } else {
        print("Valor deve ser positivo.");
      }
    }
    //método para saque
    void saque(double valor) { 
      if (valor > 0) {
        if (valor <= saldo) {
         saldo -= valor;
         print("Saque de \$${valor.toStringAsFixed(2)} realizado com sucesso");
        } else {
          print("Saldo insuficiente para saque");
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
  var conta = contaCorrente(numeroConta: "1234-5", nomeCorrentista: "Ana Silva");
  conta.exibirSaldo();
  conta.deposito(1000);
  conta.exibirSaldo();
  conta.saque(500);
  conta.exibirSaldo();
}