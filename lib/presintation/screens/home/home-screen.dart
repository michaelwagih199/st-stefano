import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:st_stefano_quiz_game/presintation/components/app-widget.dart';
import 'package:st_stefano_quiz_game/presintation/screens/home/bloc/home_bloc.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-color-scheme.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-enums.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          child: Container(
            width: screenWidth,
            color: Color(AppColorsEnum.offWhite.colorCode),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImagesEnums.homeHero.img),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.grey,
                            ), //BoxDecoration
                          ),
                          Positioned(
                            bottom: 0.0,
                            right: 0,
                            left: 0,
                            child: Container(
                              color: Color(AppColorsEnum.slateGray.colorCode)
                                  .withOpacity(0.4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 8.0),
                                      child: AppCopticTextWidget(
                                        color: Colors.white,
                                        fontSize: 25,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.normal,
                                        text: AppStrings
                                            .homeScreenCopticText.text,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 8.0),
                                      child: AppTextWidget(
                                        color: Colors.white,
                                        fontSize: 22,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.normal,
                                        text: AppStrings
                                            .homeScreenArabicText.text,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ), //Container
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                        child: Column(
                          children: [
                            AppCopticTextWidget(
                              color: Color(AppColorsEnum.primaryAmber.colorCode),
                              fontSize: 40,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.bold,
                              text: AppStrings.homeScreenCopticText.text,
                            ),
                          ],
                        ),
                      ), //Container
                    ), //Flexib//Flexible
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
