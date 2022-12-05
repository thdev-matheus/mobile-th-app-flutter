import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({
    super.key,
    required this.imc,
  });

  final String imc;

  @override
  Widget build(BuildContext context) {
    late String resultText;
    late Color resultColor;

    double nIMC = double.parse(imc);
    if (nIMC < 18.5) {
      resultText = "Abaixo do peso.";
      resultColor = Color.fromARGB(255, 192, 148, 16);
    } else if (nIMC >= 18.5 && nIMC <= 24.9) {
      resultText = "Peso Normal";
      resultColor = const Color.fromRGBO(7, 153, 146, 1.0);
    } else if (nIMC >= 25.0 && nIMC <= 29.9) {
      resultText = "Sobrepeso";
      resultColor = Color.fromARGB(255, 192, 148, 16);
    } else if (nIMC >= 30.0 && nIMC <= 34.9) {
      resultText = "Obesidade grau 1";
      resultColor = Colors.orange;
    } else if (nIMC >= 35.0 && nIMC <= 39.9) {
      resultText = "Obesidade grau 2";
      resultColor = Colors.deepOrange;
    } else {
      resultText = "Obesidade grau 3 ou mórbida";
      resultColor = Colors.red;
    }

    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          const Text(
            "Seu IMC é...",
            style: TextStyle(
              color: Color.fromRGBO(7, 153, 146, 1.0),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              imc,
              style: TextStyle(
                color: resultColor,
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            resultText,
            style: TextStyle(
              color: resultColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
