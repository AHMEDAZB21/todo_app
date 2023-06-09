import 'package:flutter/material.dart';
import 'package:todo_app/utils/app_colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primiaryColor,
    scaffoldBackgroundColor: AppColors.accentColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primiaryColor,
      titleTextStyle: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: AppColors.white,

      ),
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primiaryColor,
      unselectedItemColor: AppColors.darkGrey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppColors.primiaryColor,
      ), //todo: use this for item title
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: AppColors.darkGrey,
      ), //todo: use this for item description time
      titleSmall: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: AppColors.titlesColor,
      ), //todo: use this for Text
    ),

  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primiaryColorDark,
    scaffoldBackgroundColor: AppColors.accentColorDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primiaryColorDark,
      titleTextStyle: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: AppColors.textAppBar,

      ),
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.bgBottom,
      selectedItemColor: AppColors.primiaryColor,
      unselectedItemColor: AppColors.darkGreyDark,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppColors.primiaryColorDark,
      ), //todo: use this for item title
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: AppColors.darkGreyDark,
      ), //todo: use this for item description time
      titleSmall: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: AppColors.titlesColor,
      ), //todo: use this for Text
    ),

  );
}
