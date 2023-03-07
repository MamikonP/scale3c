import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    required this.text,
    this.color,
    this.textAlign,
    this.isBold = false,
    this.fontSize,
    super.key,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final bool isBold;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          fontSize: fontSize
          ),
      textAlign: textAlign,
    );
  }
}
