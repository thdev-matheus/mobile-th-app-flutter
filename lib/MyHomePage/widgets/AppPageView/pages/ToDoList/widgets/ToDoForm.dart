import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/Button/index.dart';
import 'package:th_app/MyHomePage/widgets/TextInput/index.dart';

class ToDoForm extends StatelessWidget {
  const ToDoForm({
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
      children: [
        TextInput(
          width: 200,
          textEditingController: textEditingController,
          cursorColor: const Color.fromRGBO(7, 153, 146, 1.0),
          textColor: const Color.fromRGBO(9, 85, 93, 1.0),
          placeholder: "Digite uma tarefa",
          helperText: "Tarefa a ser exibida na lista",
          helperColor: Color.fromRGBO(7, 153, 146, 1.0),
          label: "Tarefa",
          labelSize: 20,
          labelColor: Color.fromRGBO(7, 153, 146, 1.0),
          focusBorderColor: Color.fromRGBO(7, 153, 146, 1.0),
        ),
        Button(
          marginTop: 0,
          marginRigth: 0,
          marginBottom: 0,
          marginLeft: 15,
          height: 50,
          width: 100,
          radius: 32,
          bgColor: const Color.fromRGBO(7, 153, 146, 1.0),
          text: "ADICIONAR",
          textColor: Colors.white,
          action: action,
        )
      ],
    );
  }
}
