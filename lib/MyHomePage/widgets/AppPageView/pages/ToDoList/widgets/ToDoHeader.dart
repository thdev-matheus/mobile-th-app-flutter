import 'package:flutter/material.dart';

class ToDoHeader extends StatelessWidget {
  const ToDoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "To Do List",
          style: TextStyle(
            color: Color.fromRGBO(7, 153, 146, 1.0),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: const Text(
            "Escreva a sua lista de coisas para fazer",
            style: TextStyle(
              color: Color.fromRGBO(7, 153, 146, 1.0),
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
