import 'package:flutter/material.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-color-scheme.dart';
import 'package:st_stefano_quiz_game/utils/constants/strings.dart';

import '../../utils/constants/app-enums.dart';

class AppTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const AppTextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
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
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: Coptic_FONT,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class AppCardWidget extends StatelessWidget {
  final String text;
  final String imagePath;
  final BoxFit boxFit;
  final VoidCallback callback;
  const AppCardWidget({
    super.key,
    required this.text,
    required this.imagePath,
    required this.callback,
    required this.boxFit,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: callback,
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: boxFit,
            ),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 0.0,
        right: 0,
        left: 0,
        child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Color(AppColorsEnum.paleGray.colorCode),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
          ),
          child: AppTextWidget(
            color: Color(AppColorsEnum.slateGray.colorCode),
            fontSize: 20,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.normal,
            text: text,
          ),
        ),
      ),
    ]);
  }
}
