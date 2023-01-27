import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/util/theme/widget_theme.dart';

class KAppTheme {
  KAppTheme._();

  static ThemeData lightTheme = ThemeData(
    textTheme: KTextTheme.lightTextTheme,
    primarySwatch: MaterialColor(
      0xFF037B73,
      <int, Color>{
        50: Color(0x1B037B73),
        100: Color(0x2F037B73),
        200: Color(0x50037B73),
        300: Color(0x82037B73),
        400: Color(0x92037B73),
        500: Color(0xB8037B73),
        600: Color(0xC6037B73),
        700: Color(0xE2037B73),
        800: Color(0xFB037B73),
      },
    ),
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark, textTheme: KTextTheme.darkTextTheme);
}
