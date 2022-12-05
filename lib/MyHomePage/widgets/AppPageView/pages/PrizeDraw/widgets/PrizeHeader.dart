import 'package:flutter/material.dart';

class PrizeHeader extends StatelessWidget {
  const PrizeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Sorteador",
          style: TextStyle(
            color: Color.fromRGBO(7, 153, 146, 1.0),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: const Text(
            "Digite um número máximo que seja inteiro e sorteie um número aleatório entre 0 (inclusive) e o número que digitou (inclusive).",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(7, 153, 146, 1.0),
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
