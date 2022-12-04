// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CounterRow extends StatelessWidget {
  const CounterRow({
    super.key,
    required this.resetCount,
    required this.incrementCount,
    required this.decrementCount,
  });

  final resetCount;
  final incrementCount;
  final decrementCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.remove),
          onPressed: () {
            decrementCount();
          },
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(165, 193, 242, 0.8),
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              resetCount();
            },
          ),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromRGBO(7, 153, 146, 1.0),
          child: const Icon(Icons.add),
          onPressed: () {
            incrementCount();
          },
        ),
      ],
    );
  }
}
