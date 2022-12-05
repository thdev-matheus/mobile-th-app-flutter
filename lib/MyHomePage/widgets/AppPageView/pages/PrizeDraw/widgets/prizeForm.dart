import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/Button/index.dart';
import 'package:th_app/MyHomePage/widgets/NumberIntInput/index.dart';

class PrizeForm extends StatelessWidget {
  const PrizeForm({
    super.key,
    required this.textEditingController,
    required this.action,
  });

  final TextEditingController textEditingController;
  final action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NumberIntInput(textEditingController: textEditingController),
        Button(
          marginTop: 0,
          marginRigth: 0,
          marginBottom: 0,
          marginLeft: 20,
          height: 50,
          width: 120,
          radius: 32,
          bgColor: const Color.fromRGBO(7, 153, 146, 1.0),
          text: "SORTEAR",
          textColor: Colors.white,
          action: action,
        ),
      ],
    );
  }
}
