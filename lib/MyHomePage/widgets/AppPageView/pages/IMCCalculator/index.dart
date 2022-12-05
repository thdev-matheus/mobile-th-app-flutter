import 'dart:math';

import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/IMCCalculator/widgets/IMCForm.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/IMCCalculator/widgets/IMCHeader.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/IMCCalculator/widgets/ResultContainer.dart';

class IMCCalculator extends StatefulWidget {
  const IMCCalculator({super.key});

  @override
  State<IMCCalculator> createState() => _IMCCalculatorState();
}

class _IMCCalculatorState extends State<IMCCalculator> {
  TextEditingController textEditingControllerWeight = TextEditingController();
  TextEditingController textEditingControllerHeight = TextEditingController();

  String imc = "0.0";

  void calculateIMC() {
    if (textEditingControllerHeight.text.isNotEmpty &&
        textEditingControllerWeight.text.isNotEmpty) {
      double weight = double.parse(textEditingControllerWeight.text);
      double height = double.parse(textEditingControllerHeight.text);

      double result = weight / pow(height, 2);
      setState(() {
        imc = result.toStringAsFixed(1);
      });

      textEditingControllerHeight.clear();
      textEditingControllerWeight.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const IMCHeader(),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: IMCForm(
                textEditingControllerHeight: textEditingControllerHeight,
                textEditingControllerWeight: textEditingControllerWeight,
                action: () {
                  calculateIMC();
                },
              ),
            ),
            ResultContainer(
              imc: imc,
            ),
          ],
        ),
      ),
    );
  }
}
