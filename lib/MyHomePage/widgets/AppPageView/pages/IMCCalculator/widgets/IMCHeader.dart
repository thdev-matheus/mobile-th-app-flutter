import 'package:flutter/material.dart';

class IMCHeader extends StatelessWidget {
  const IMCHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "IMC Calculator",
          style: TextStyle(
            color: Color.fromRGBO(7, 153, 146, 1.0),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: const Text(
            "Uma calculadora básica de índice de massa corpórea",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(7, 153, 146, 1.0),
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
