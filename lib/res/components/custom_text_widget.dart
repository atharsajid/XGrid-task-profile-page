

import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? weight;
  const CustomTextWidget({super.key, required this.text, this.fontSize, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        fontSize: fontSize,
        fontWeight: weight,
      ),
    );
  }
}
