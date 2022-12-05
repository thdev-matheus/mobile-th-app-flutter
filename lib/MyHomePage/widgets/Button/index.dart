import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.marginTop,
    required this.marginRigth,
    required this.marginBottom,
    required this.marginLeft,
    required this.height,
    required this.width,
    required this.radius,
    required this.bgColor,
    required this.text,
    required this.textColor,
    required this.action,
  });

  final double marginTop;
  final double marginRigth;
  final double marginBottom;
  final double marginLeft;

  final double height;
  final double width;

  final double radius;
  final Color bgColor;
  final String text;
  final Color textColor;

  final action;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
        right: marginRigth,
        bottom: marginBottom,
        left: marginLeft,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: TextButton(
        onPressed: action,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
