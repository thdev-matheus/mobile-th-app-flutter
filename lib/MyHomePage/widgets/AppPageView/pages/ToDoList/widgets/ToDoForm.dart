import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/Button/index.dart';

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
        SizedBox(
          width: 200,
          child: TextField(
            controller: textEditingController,
            cursorColor: const Color.fromRGBO(7, 153, 146, 1.0),
            style: const TextStyle(
              color: Color.fromRGBO(9, 85, 93, 1.0),
            ),
            decoration: const InputDecoration(
              hintText: "Digite uma tarefa",
              helperText: "Tarefa a ser exibida na lista",
              helperStyle: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(7, 153, 146, 1.0),
              ),
              label: Text("Tarefa"),
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(7, 153, 146, 1.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(7, 153, 146, 1.0),
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(7, 153, 146, 1.0),
                ),
              ),
            ),
          ),
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
