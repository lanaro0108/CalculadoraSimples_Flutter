import 'package:flutter/material.dart';
import '../controller/calculadora_controller.dart';

class CalculadoraView extends StatefulWidget {
  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculadoraView> {

  final controller = CalculadoraController();

  void buttonPressed(String value){

    setState(() {

      if(value == "Clear"){
        controller.limpar();

      } else if(value == "="){
        controller.calcularResultado();

      } else if(["+","-","*","/"].contains(value)){
        controller.operadorPressionado(value);

      } else {
        controller.numeroPressionado(value);
      }

    });

  }

  Widget buildButton(String text, {Color? color, int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.grey[300],
            foregroundColor: Colors.black,
            padding: EdgeInsets.all(20),
          ),
          onPressed: () => buttonPressed(text),
          child: Text(
            text,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Calculadora Básica")),

      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(20),
            child: Text(
              controller.display,
              style: TextStyle(fontSize: 40),
            ),
          ),

          Expanded(
            child: Column(
              children: [

                Row(
                  children: [
                    buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
                    buildButton("4"),
                  ],
                ),

                Row(
                  children: [
                    buildButton("5"),
                    buildButton("6"),
                    buildButton("7"),
                    buildButton("8"),
                  ],
                ),

                Row(
                  children: [
                    buildButton("9"),
                    buildButton("0"),
                    buildButton("x", color: Colors.blue),
                    buildButton("/", color: Colors.blue),
                  ],
                ),

                Row(
                  children: [
                    buildButton("=", color: Colors.blueAccent, flex: 2),
                    buildButton("+", color: Colors.blue),
                    buildButton("-", color: Colors.blue),
                  ],
                ),

                Row(
                  children: [
                    buildButton("Clear", color: Colors.blueAccent, flex: 4),
                    ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}