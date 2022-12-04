import 'package:flutter/material.dart';

class CounterContainer extends StatelessWidget {
  const CounterContainer({super.key, required this.count, required this.vh});

  final int count;
  final double vh;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vh - 200,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: const Text(
              "Contador Turbinado",
              style: TextStyle(
                color: Color.fromRGBO(7, 153, 146, 1.0),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: const Text(
              "O flutter já cria um contador como app padrão, mas este tem algumas funcionalidades a mais...",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(7, 153, 146, 1.0),
                fontSize: 16,
              ),
            ),
          ),
          Text(
            "$count",
            style: const TextStyle(
                color: Color.fromRGBO(7, 153, 146, 1.0),
                fontSize: 80,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
