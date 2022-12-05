import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberDoubleInput extends StatelessWidget {
  const NumberDoubleInput({
    super.key,
    required this.textEditingController,
    required this.labelText,
  });

  final TextEditingController textEditingController;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: TextField(
        cursorColor: const Color.fromRGBO(7, 153, 146, 1.0),
        style: const TextStyle(
          color: Color.fromRGBO(9, 85, 93, 1.0),
        ),
        controller: textEditingController,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]|[.]')),
        ],
        decoration: InputDecoration(
          label: Text(labelText),
          labelStyle: const TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(7, 153, 146, 1.0),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(7, 153, 146, 1.0),
            ),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(7, 153, 146, 1.0),
            ),
          ),
        ),
      ),
    );
  }
}
