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
  
  const AppCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImagesEnums.homeHero.img),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(4),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(
                2.0,
                2.0,
              ),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 0.0,
        right: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Color(AppColorsEnum.silver.colorCode),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
          ),
          child: AppTextWidget(
            color: Colors.white,
            fontSize: 22,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.normal,
            text: AppStrings.homeScreenArabicText.text,
          ),
        ),
      ),
    ]);
  }
}
