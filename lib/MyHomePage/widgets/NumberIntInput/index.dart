import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberIntInput extends StatelessWidget {
  const NumberIntInput({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextField(
        cursorColor: const Color.fromRGBO(7, 153, 146, 1.0),
        style: const TextStyle(
          color: Color.fromRGBO(9, 85, 93, 1.0),
        ),
        controller: textEditingController,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: const InputDecoration(
          label: Text("Máx"),
          labelStyle: TextStyle(
            fontSize: 18,
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
    );
  }
}
