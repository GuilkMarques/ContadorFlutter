import 'package:flutter/material.dart';
import 'package:flutterando_1/shared/app_colors.dart';

class AppThemes {
  static ThemeData mainTheme = ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: AppColors.white,
          fontSize: 25,
        ),
        iconTheme: IconThemeData(color: AppColors.white, size: 30),
      ),
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      iconTheme: IconThemeData(
        color: AppColors.primary,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: AppColors.primary,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            return AppColors.primary;
          }),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            return AppColors.primary;
          }),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
        filled: true,
        fillColor: AppColors.background,
        focusColor: AppColors.primary,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondDegrade, width: 2.0),
        ),
        floatingLabelStyle: TextStyle(
          color: AppColors.primary,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 22,
          horizontal: 26,
        ),
        labelStyle: TextStyle(
          fontSize: 20,
          decorationColor: AppColors.primary,
        ),
        iconColor: AppColors.primary,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.secondDegrade,
        selectionHandleColor: AppColors.primary,
      ),
      cardColor: AppColors.cardColor,
      dialogTheme: DialogTheme(
        surfaceTintColor: Colors.transparent,
        titleTextStyle: TextStyle(color: AppColors.background),
        contentTextStyle: TextStyle(color: AppColors.background),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
      ));
}
