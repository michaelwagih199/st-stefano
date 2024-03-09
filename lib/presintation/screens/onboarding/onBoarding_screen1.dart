import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:st_stefano_quiz_game/presintation/components/app-widget.dart';
import 'package:st_stefano_quiz_game/presintation/screens/onboarding/onBoarding_screen2.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-color-scheme.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-enums.dart';

import '../../components/decoration-utils.dart';
import 'bloc/onBoarding_bloc.dart';

class OnboardingScreen extends StatefulWidget {
  final String title;
  const OnboardingScreen({super.key, required this.title});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(AppColorsEnum.offWhite.colorCode),
          width: screenWidth,
          child: BlocBuilder<OnboardingBloc, SplashState>(
            builder: (context, state) {
              return Column(
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
                            text: AppStrings.txtScreenOnboarding1Begin.text,
                          ),
                          Image.asset(
                            AppImagesEnums.onbarding1.img,
                            height: 300,
                            width: 300,
                          ),
                          AppTextWidget(
                            color: Color(AppColorsEnum.primaryAmber.colorCode),
                            fontSize: 25,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.normal,
                            text: AppStrings.txtScreenOnboarding1Last.text,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
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
                              color:
                                  Color(AppColorsEnum.primaryAmber.colorCode),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OnBoardingScreen2()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
