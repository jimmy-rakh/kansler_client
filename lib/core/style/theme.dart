import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.bgDark,
    primaryColor: AppColors.primary,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: AppColors.bgDark),
    cardColor: AppColors.cardBgDark,
    focusColor: Colors.white,
    appBarTheme: const AppBarTheme(elevation: 0, color: AppColors.bgDark),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primary,
    ),
    iconTheme: const IconThemeData(color: AppColors.bgLight),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.cardBgDark,
      hintStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
    ),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: AppColors.textDark,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: AppColors.textDark,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: AppColors.textDark,
      ),
      titleLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w800,
        color: AppColors.textDark,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: AppColors.textDark,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColors.textDark,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textDark,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.textDark,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textDark,
      ),
      labelLarge: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppColors.textDark,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.textDark,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppColors.textDark,
      ),
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      background: AppColors.bgDark,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      surfaceTint: Colors.transparent,
    ),
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.bgLight,
    primaryColor: AppColors.primary,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    colorScheme: const ColorScheme.light().copyWith(
      background: AppColors.bgLight,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      surfaceTint: Colors.transparent,
    ),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: AppColors.bgLight),
    cardColor: AppColors.white,
    focusColor: AppColors.grey,
    iconTheme: const IconThemeData(color: AppColors.bgDark),
    appBarTheme: const AppBarTheme(elevation: 0, color: AppColors.bgLight),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primary,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Colors.white,
      hintStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
    ),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: AppColors.textLight,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: AppColors.textLight,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: AppColors.textLight,
      ),
      titleLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w800,
        color: AppColors.textLight,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: AppColors.textLight,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColors.textLight,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textLight,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.textLight,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textLight,
      ),
      labelLarge: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppColors.textLight,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.textLight,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppColors.textLight,
      ),
    ),
  );
}
