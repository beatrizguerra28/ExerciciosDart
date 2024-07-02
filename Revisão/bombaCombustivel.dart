class bombaCombustivel {
  String tipoCombustivel = "";
  double valorLitro = 0;
  double quantidadeCombustivel = 0;
  
  bombaCombustivel(this.tipoCombustivel, this.valorLitro, this.quantidadeCombustivel);

  void abastecerPorValor(double valor){  //método para abastecer por valor
    double litros = valor / this.valorLitro;
    if(litros <= quantidadeCombustivel) {
      quantidadeCombustivel -= litros;
      print("Foram abastecidos $litros litros de $tipoCombustivel.");
    } else {
      print("Quantidade insuficiente de combustível na bomba.");
    }
        }
    void abastecerPorLitro(double litros){  //método para abastecer por litro
      if (litros <= quantidadeCombustivel) {
        double valor = litros * this.valorLitro;
        quantidadeCombustivel -= litros;
        print("O valor a ser pago pelo cliente é de R\$ $valor.");
        } else {
        print("Quantidade insuficiente de combustível na bomba.");
        }
      }

      void alterarOValor(double novoValor){  //método para alterar o valor
      this.valorLitro = novoValor;
      print("O valor do litro de $tipoCombustivel foi alterado para R\$ $valorLitro");
    }

    void alterarCombustivel(String novoCombustivel){ //método para novo tipo de combustível
      this.tipoCombustivel = novoCombustivel;
      print("O tipo de combustível foi alterado para $tipoCombustivel.");
    }
  }
  void main(){
    var bomba = bombaCombustivel("Gasosa", 2.0, 100.0);
    var bomba2 = bombaCombustivel("Alcohol",1.5, 10.0);
    bomba.abastecerPorValor(100.0);
    bomba2.abastecerPorValor(100.0);
    bomba.abastecerPorLitro(10.0);
    bomba2.abastecerPorLitro(10.0);
    bomba.alterarOValor(25.0);
    bomba.alterarCombustivel("Diesel");
    bomba.quantidadeCombustivel = 1000.0;
  }