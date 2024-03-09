import 'dart:math';

import 'package:flutter/material.dart';
import 'package:st_stefano_quiz_game/presintation/components/app-widget.dart';
import 'package:st_stefano_quiz_game/presintation/screens/onboarding/onBoarding_screen3.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-color-scheme.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-enums.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(AppColorsEnum.offWhite.colorCode),
          child: Column(
            children: [
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  padding: const EdgeInsets.only(top: 20),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      AppTextWidget(
                        color: Color(AppColorsEnum.primaryBlue.colorCode),
                        fontSize: 22,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.normal,
                        text: AppStrings.txtScreenOnboarding2Begin.text,
                      ),
                      Image.asset(
                        AppImagesEnums.onbarding2.img,
                        height: 300,
                        width: 300,
                      ),
                      AppTextWidget(
                        color: Color(AppColorsEnum.primaryAmber.colorCode),
                        fontSize: 25,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.normal,
                        text: AppStrings.txtScreenOnboarding2Last.text,
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
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
                            color: Color(AppColorsEnum.slateGray.colorCode),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OnBoardingScreen3()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
