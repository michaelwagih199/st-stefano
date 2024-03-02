import 'package:flutter/material.dart';
import 'package:st_stefano_quiz_game/utils/constants/app-color-scheme.dart';

import '../utils/constants/strings.dart';

ThemeData appTheme() {
  return ThemeData(
    fontFamily: APP_FONT,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(AppColorsEnum.primaryBlue.colorCode),
      // This will be applied to the "back" icon
      iconTheme: IconThemeData(color: Color.fromRGBO(246, 246, 246, 1)),
      // This will be applied to the action icon buttons that locates on the right side
      actionsIconTheme: IconThemeData(color: Colors.amber),
      centerTitle: false,
      titleTextStyle:
          TextStyle(color: Color.fromRGBO(246, 246, 246, 1), fontSize: 22.0),
    ),
  );
}
