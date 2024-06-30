import 'package:flutter/material.dart';

class Mytheme {
  static const Color lightPrimaryColor = Color(0xff5D9CEC);
  static const Color darkPrimaryColor = Color(0xff141922);
  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: const Color(0xffDFECDB),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: lightPrimaryColor,
      unselectedItemColor: Color(0xffC8C9CB),
      selectedIconTheme: IconThemeData(size: 33),
      unselectedIconTheme: IconThemeData(size: 28),
    ),
    hintColor: Colors.black,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 22,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 18,
      ),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 22,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: const Color(0xff060E1E),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141922),
      selectedItemColor: lightPrimaryColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 33),
      unselectedIconTheme: IconThemeData(size: 28),
    ),
    hintColor: Colors.white,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xff060E1E),
        fontSize: 22,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 18,
      ),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 22,
        color: Color(0xff060E1E),
      ),
      iconTheme: IconThemeData(
        color: Color(0xff060E1E),
      ),
    ),
  );
}
