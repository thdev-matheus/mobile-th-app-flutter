import 'package:flutter/material.dart';
import "dart:math";

import 'package:th_app/MyHomePage/widgets/AppPageView/pages/PrizeDraw/widgets/header.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/PrizeDraw/widgets/prizeForm.dart';
import 'package:th_app/MyHomePage/widgets/Button/index.dart';
import 'package:th_app/MyHomePage/widgets/NumberInput/index.dart';

class PrizeDraw extends StatefulWidget {
  const PrizeDraw({super.key});

  @override
  State<PrizeDraw> createState() => _PrizeDrawState();
}

class _PrizeDrawState extends State<PrizeDraw> {
  TextEditingController textEditingController = TextEditingController();
  int range = 11;
  int number = 0;

  final random = Random();

  void getRandomNumber() {
    if (textEditingController.text != "") {
      range = int.parse(textEditingController.text) + 1;
    }
    int randomNumber = random.nextInt(range);

    setState(() {
      number = randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(155, 191, 249, 0.8),
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Header(),
            PrizeForm(
                textEditingController: textEditingController,
                action: () {
                  getRandomNumber();
                }),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
              child: const Text(
                "E o número sorteado é...",
                style: TextStyle(
                  color: Color.fromRGBO(7, 153, 146, 1.0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "$number",
                style: const TextStyle(
                  color: Color.fromRGBO(7, 153, 146, 1.0),
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
