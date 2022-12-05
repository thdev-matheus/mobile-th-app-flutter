import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/Button/index.dart';
import 'package:th_app/MyHomePage/widgets/NumberDoubleInput/index.dart';

class IMCForm extends StatelessWidget {
  const IMCForm(
      {super.key,
      required this.textEditingControllerWeight,
      required this.textEditingControllerHeight,
      required this.action});

  final TextEditingController textEditingControllerWeight;
  final TextEditingController textEditingControllerHeight;
  final dynamic action;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NumberDoubleInput(
              textEditingController: textEditingControllerHeight,
              labelText: "Altura",
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: NumberDoubleInput(
                textEditingController: textEditingControllerWeight,
                labelText: "Peso",
              ),
            ),
          ],
        ),
        Button(
          marginTop: 20,
          marginRigth: 0,
          marginBottom: 0,
          marginLeft: 0,
          height: 50,
          width: 150,
          radius: 32,
          bgColor: const Color.fromRGBO(7, 153, 146, 1.0),
          text: "CALCULAR",
          textColor: Colors.white,
          action: action,
        )
      ],
    );
  }
}
