class CalculadoraModel {

  double calcular(double a, double b, String operador) {

    switch(operador){
      case "+":
        return a + b;

      case "-":
        return a - b;

      case "*":
        return a * b;

      case "/":
        return b != 0 ? a / b : 0;

      default:
        return 0;
    }
  }

}