class Ingresso {
  double valor;
  int quantidadeVendas;

  Ingresso(this.valor, this.quantidadeVendas);

  void imprimeValor() {
    print('Valor do ingresso: R\$${valor.toStringAsFixed(2)}');
  }
}

class VIP extends Ingresso {
  double valorAdicional;

  VIP(double valor, int quantidadeVendas, this.valorAdicional) : super(valor, quantidadeVendas);

  double valorVIP() {
    return valor + valorAdicional;
  }
}

class Normal extends Ingresso {
  Normal(double valor, int quantidadeVendas) : super(valor, quantidadeVendas);

  void imprimeTipo() {
    print('Ingresso Normal');
  }
}

class CamaroteInferior extends VIP {
  String localizacao;

  CamaroteInferior(double valor, int quantidadeVendas, double valorAdicional, this.localizacao)
      : super(valor, quantidadeVendas, valorAdicional);

  String getLocalizacao() {
    return localizacao;
  }

  void imprimeLocalizacao() {
    print('Localização do ingresso: $localizacao');
  }
}

class CamaroteSuperior extends VIP {
  double valorAdicionalSuperior;

  CamaroteSuperior(double valor, int quantidadeVendas, double valorAdicional, this.valorAdicionalSuperior)
      : super(valor, quantidadeVendas, valorAdicional);

  double valorCamaroteSuperior() {
    return valor + valorAdicional + valorAdicionalSuperior;
  }
}

void main() {
  // Testando Normal
  Normal ingressoNormal = Normal(100.0, 10);
  ingressoNormal.imprimeValor();
  ingressoNormal.imprimeTipo();

  // Testando VIP
  VIP ingressoVIP = VIP(100.0, 5, 50.0);
  ingressoVIP.imprimeValor();
  print('Valor do ingresso VIP: R\$${ingressoVIP.valorVIP().toStringAsFixed(2)}');

  // Testando CamaroteInferior
  CamaroteInferior ingressoCamaroteInferior = CamaroteInferior(100.0, 2, 50.0, 'Setor A');
  ingressoCamaroteInferior.imprimeValor();
  ingressoCamaroteInferior.imprimeLocalizacao();
  print('Valor do ingresso Camarote Inferior: R\$${ingressoCamaroteInferior.valorVIP().toStringAsFixed(2)}');

  // Testando CamaroteSuperior
  CamaroteSuperior ingressoCamaroteSuperior = CamaroteSuperior(100.0, 1, 50.0, 100.0);
  ingressoCamaroteSuperior.imprimeValor();
  print('Valor do ingresso Camarote Superior: R\$${ingressoCamaroteSuperior.valorCamaroteSuperior().toStringAsFixed(2)}');
}