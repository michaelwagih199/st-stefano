
import 'package:flutter/material.dart';
import 'package:st_stefano_quiz_game/utils/constants/strings.dart';

class AppTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const AppTextWidget({
    super.key,
    required this.text, required this.fontSize, required this.fontWeight, required this.color, required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style:  TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class AppCopticTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const AppCopticTextWidget({
    super.key,
    required this.text, required this.fontSize, required this.fontWeight, required this.color, required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style:  TextStyle(
        fontSize: fontSize,
        fontFamily: Coptic_FONT,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

