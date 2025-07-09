import 'package:flutter/material.dart';

import '../constants/constant.dart';

class AppTheme {
  static final AppTheme _instance = AppTheme._internal();

  factory AppTheme() {
    return _instance;
  }

  AppTheme._internal();

  ///===== Fonts Notes ========
  ///displayLarge : font size : 40,
  ///displayMedium : font size : 36,
  ///displaySmall : font size : 32,
  ///headlineLarge : font size : 28,
  ///headlineMedium : font size 24,
  ///headlineSmall : font size 20,
  ///titleLarge : font size 18,
  ///titleMedium : font size 16,
  ///titleSmall : font size 14,
  ///labelLarge : font size : 16,
  ///labelMedium : font size 14,
  ///labelSmall : font size 12,
  ///bodyLarge : font size 16,
  ///bodyMedium : font size 14,
  ///bodySmall : font size 10,
  static const String fontFamily = 'Satoshi';

  ThemeData kLightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.bodyColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.headerColor),
    dividerTheme: const DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: AppColors.appTextGreyColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.appWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.appWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      textStyle: const TextStyle(
        color: Colors.black, // Text color
        fontSize: 16,
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(
          Colors.white,
        ), // Set the dropdown menu background color
        surfaceTintColor: WidgetStateProperty.all(
          Colors.transparent,
        ), // To avoid overlay tint on surfaces
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    ),
    menuTheme: MenuThemeData(
      style: MenuStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.appWhiteColor),
      ),
    ),
    fontFamily: fontFamily,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 40,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      displayMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 36,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      displaySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 32,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 28,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      headlineMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 24,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      titleLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      titleMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      titleSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      labelLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      labelMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      labelSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
      bodySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: AppColors.textColor,
      ),
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppColors.appWhiteColor),
      trackOutlineColor: WidgetStatePropertyAll(AppColors.primary),
      overlayColor: WidgetStatePropertyAll(AppColors.transparentColor),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.appWhiteColor,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      error: AppColors.appRedColor,
      onError: AppColors.appRedColor,
      surface: AppColors.primary,
      onSurface: AppColors.primary,
      surfaceTint: AppColors.primary,
    ),
  );

  // Dark theme~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ThemeData kDarkTheme = ThemeData(
    fontFamily: fontFamily,
    useMaterial3: true,
    primaryColor: AppColors.primary,
    splashColor: Colors.transparent,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    dividerColor: AppColors.appBorderColor,
    splashFactory: NoSplash.splashFactory,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
      ),
    ),
    datePickerTheme: const DatePickerThemeData(
      todayBackgroundColor: WidgetStatePropertyAll(Colors.transparent),
      todayForegroundColor: WidgetStatePropertyAll(AppColors.primary),
      backgroundColor: AppColors.appAlertBackGroundColor,
      rangePickerBackgroundColor: AppColors.appAlertBackGroundColor,
      rangePickerHeaderForegroundColor: AppColors.primary,
      rangePickerElevation: 0,
      rangePickerHeaderBackgroundColor: AppColors.primary,
      shadowColor: Colors.transparent,
      elevation: 0,
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppColors.appWhiteColor),
      trackOutlineColor: WidgetStatePropertyAll(AppColors.appBorderColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        // elevation: MaterialStatePropertyAll(0),
        mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 44)),
        maximumSize: WidgetStatePropertyAll(Size(double.infinity, 44)),
        padding: WidgetStatePropertyAll(EdgeInsets.only(bottom: 8)),
        backgroundColor: WidgetStatePropertyAll(AppColors.onBackground),
        shadowColor: WidgetStatePropertyAll(Colors.transparent),
        surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
        // foregroundColor: MaterialStatePropertyAll(AppColors.onBackground),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      color: AppColors.onBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.appWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      textStyle: const TextStyle(
        color: Colors.black, // Text color
        fontSize: 16,
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(
          Colors.white,
        ), // Set the dropdown menu background color
        surfaceTintColor: WidgetStateProperty.all(
          Colors.transparent,
        ), // To avoid overlay tint on surfaces
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    ),
    menuTheme: MenuThemeData(
      style: MenuStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.appWhiteColor),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.appWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.onBackground,
      selectedItemColor: AppColors.secondary,
      unselectedItemColor: AppColors.appWhiteColor,
      type: BottomNavigationBarType.fixed,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(AppColors.primary),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(AppColors.backgroundColor),
      checkColor: WidgetStateProperty.all(AppColors.primary),
      side: const BorderSide(color: AppColors.appWhiteColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusColor: AppColors.primary,
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1, color: AppColors.primary),
      ),
      outlineBorder: const BorderSide(width: 0.7, color: AppColors.primary),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 0.7, color: AppColors.primary),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 0.7, color: AppColors.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          width: 0.7,
          color: AppColors.appWhiteColor.withValues(alpha: 0.2),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          width: 0.7,
          color: AppColors.primary.withValues(alpha: 0.2),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(width: 1, color: AppColors.primary),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 40,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 36,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 32,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      headlineLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 28,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 24,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      labelSmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
        height: 2,
      ),
      bodyLarge: TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: fontFamily,
        fontSize: 10,
        fontStyle: FontStyle.normal,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.proportional,
        color: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.headerColor),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primary,
      onPrimary: AppColors.appWhiteColor,
      secondary: AppColors.secondary,
      onSecondary: AppColors.appWhiteColor,
      error: AppColors.appRedColor,
      onError: AppColors.appWhiteColor,
      surface: Colors.transparent,
      onSurface: AppColors.appWhiteColor,
      surfaceTint: Colors.transparent,
    ),
  );
}
