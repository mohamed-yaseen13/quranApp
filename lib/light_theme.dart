import 'package:flutter/material.dart';
import 'package:quran_app/app_colors.dart';

class LightTheme {
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.bottomNavigationColor,
    canvasColor: AppColors.bottomNavigationColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
      backgroundColor: AppColors.bottomNavigationColor,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
