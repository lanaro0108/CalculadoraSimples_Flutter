import '../model/calculadora_model.dart';

class CalculadoraController { // Classe de controle para a calculadora

  final CalculadoraModel model = CalculadoraModel(); // Instância do modelo para realizar os cálculos

  // Variáveis para armazenar o estado da calculadora
  String display = "0";
  double firstNumber = 0;
  String operator = "";

  // Métodos para manipular a lógica da calculadora
  void numeroPressionado(String number) {
    if (display == "0") {
      display = number;
    } else {
      display += number;
    }
  }
  void operadorPressionado(String op) {
    firstNumber = double.parse(display);
    operator = op;
    display = "0";
  }

  void calcularResultado() {
    double secondNumber = double.parse(display);

    double result = model.calcular(
      firstNumber,
      secondNumber,
      operator
    );
    // Atualiza o display com o resultado do cálculo
    display = result.toString();
  }
  // Método para limpar a calculadora e resetar o estado
  void limpar() {
    display = "0";
    firstNumber = 0;
    operator = "";
  }
}