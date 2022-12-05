import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(105, 240, 174, 0.4),
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            "Bem-vindo(a)!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(7, 153, 146, 1.0),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const Text(
              "O TH App é uma plataforma 4 em 1 de nível básico feito em Dart utilizando o framework Flutter.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(7, 153, 146, 1.0),
                fontSize: 16,
              ),
            ),
          ),
          const Text(
            "Você pode conferir os apps pelo menu logo acima ou arrastar para o lado.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(7, 153, 146, 1.0),
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const Text(
              "Espero que goste e não esquece de me passar o feedback e de me seguir no Linkedin e no github.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(7, 153, 146, 1.0),
                fontSize: 16,
              ),
            ),
          ),
          const Text(
            "Ah, e se quiser pode dar uma conferida no meu portfólio.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(7, 153, 146, 1.0),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
