import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.width,
    required this.textEditingController,
    required this.cursorColor,
    required this.textColor,
    required this.placeholder,
    required this.helperText,
    required this.helperColor,
    required this.label,
    required this.labelSize,
    required this.labelColor,
    required this.focusBorderColor,
  });

  final double width;
  final TextEditingController textEditingController;
  final Color cursorColor;
  final Color textColor;
  final String placeholder;
  final String helperText;
  final Color helperColor;
  final String label;
  final double labelSize;
  final Color labelColor;
  final Color focusBorderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        controller: textEditingController,
        cursorColor: cursorColor,
        style: TextStyle(
          color: textColor,
        ),
        decoration: InputDecoration(
          hintText: placeholder,
          helperText: helperText,
          helperStyle: TextStyle(
            fontSize: 12,
            color: helperColor,
          ),
          label: Text(label),
          labelStyle: TextStyle(
            fontSize: labelSize,
            fontWeight: FontWeight.bold,
            color: labelColor,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: focusBorderColor,
            ),
          ),
        ),
      ),
    );
  }
}
