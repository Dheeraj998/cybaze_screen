import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FunText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? fontSize;
  const FunText(
      {super.key,
      required this.text,
      this.fontWeight,
      this.textColor,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor),
    );
  }
}
