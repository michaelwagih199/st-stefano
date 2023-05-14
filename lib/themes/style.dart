import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/app-color-scheme.dart';

ThemeData appTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(47, 114, 145, 1),
      // This will be applied to the "back" icon
      iconTheme: IconThemeData(color: Color.fromRGBO(246, 246, 246, 1)),
      // This will be applied to the action icon buttons that locates on the right side
      actionsIconTheme: IconThemeData(color: Colors.amber),
      centerTitle: false,
      titleTextStyle: TextStyle(color: Color.fromRGBO(246, 246, 246, 1),fontSize:22.0),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: GoogleFonts.tajawal(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          foregroundColor: Color.fromRGBO(246, 246, 246, 1),
          backgroundColor: Color.fromRGBO(47, 114, 145, 1)),
    ),
  );
}