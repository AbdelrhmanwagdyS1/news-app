import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xff1877F2),
      titleTextStyle: const TextStyle(
        color: Color(0xffFFFFFF),
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        color: Color(0xffB0B3B8),
        fontSize: 13,
        fontWeight: FontWeight(400),
      ),
      titleMedium: TextStyle(
        color: Color(0xffE4E6EB),
        fontSize: 17,
        fontWeight: FontWeight(400),
      ),
      titleLarge: TextStyle(
        color: Color(0xffE4E6EB),
        fontSize: 24,
        fontWeight: FontWeight(400),
      ),
    ),
    scaffoldBackgroundColor: Color(0xff202020),
  );
}
