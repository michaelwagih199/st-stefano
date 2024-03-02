import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:st_stefano_quiz_game/presintation/components/app-widget.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-color-scheme.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-enums.dart';
import 'package:st_stefano_quiz_game/utils/constants/strings.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Image.asset(
                          AppImagesEnums.begoryLogo.img,
                          height: 100,
                          width: 100,
                        )),
                        Expanded(
                          child: Image.asset(
                            AppImagesEnums.shamamsaLogo.img,
                            height: 100,
                            width: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextWidget(
                      color: Color(AppColorsEnum.primaryBlue.colorCode),
                      fontSize: 22,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.normal,
                      text: AppStrings.txtScreenOnboarding3BeginA.text,
                    ),
                    AppTextWidget(
                      color: Color(AppColorsEnum.primaryAmber.colorCode),
                      fontSize: 35,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.normal,
                      text: AppStrings.txtScreenOnboarding3BeginB.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      AppImagesEnums.onbarding3.img,
                      height: 300,
                      width: 300,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextWidget(
                      color: Color(AppColorsEnum.primaryAmber.colorCode),
                      fontSize: 22,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.normal,
                      text: AppStrings.txtScreenOnboarding1Last.text,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                  color: Color(AppColorsEnum.primaryAmber.colorCode),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(AppColorsEnum.silver.colorCode),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(AppColorsEnum.silver.colorCode),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(AppColorsEnum.slateGray.colorCode),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Transform.rotate(
                  angle: 180 * pi / 180,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Color(AppColorsEnum.primaryAmber.colorCode),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, HOME_ROUTE);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
