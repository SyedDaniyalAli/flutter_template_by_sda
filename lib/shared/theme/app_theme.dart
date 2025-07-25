import 'package:flutter/material.dart';
import 'package:flutter_template_by_sda/shared/constants/app_fonts.dart';

import '../constants/constant.dart';

class AppTheme {
  static final AppTheme _instance = AppTheme._internal();
  factory AppTheme() => _instance;
  AppTheme._internal();

  static const String fontFamily = AppFonts.appFontFamily;

  // Shared ButtonStyle
  static final ButtonStyle _buttonStyle = ButtonStyle(
    mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
  );

  // Shared TextTheme for light and dark, with color as parameter
  static TextTheme _textTheme(Color color) => TextTheme(
    displayLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 40,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    displayMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 36,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    displaySmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 32,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    headlineLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 28,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 24,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 20,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    titleLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    titleMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    titleSmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    labelMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    labelSmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
      height: color == Colors.white ? 2 : null,
    ),
    bodyLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
    bodySmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: color == Colors.white ? 10 : 12,
      fontStyle: FontStyle.normal,
      textBaseline: TextBaseline.alphabetic,
      leadingDistribution: TextLeadingDistribution.proportional,
      color: color,
    ),
  );

  // Shared PopupMenuThemeData
  static final PopupMenuThemeData _popupMenuTheme = PopupMenuThemeData(
    color: AppColors.appWhiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    textStyle: const TextStyle(color: Colors.black, fontSize: 16),
  );

  // Shared DropdownMenuThemeData
  static final DropdownMenuThemeData _dropdownMenuTheme = DropdownMenuThemeData(
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(Colors.white),
      surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),
  );

  // Shared MenuThemeData
  static final MenuThemeData _menuTheme = MenuThemeData(
    style: MenuStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.appWhiteColor),
    ),
  );

  ThemeData kLightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.bodyColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.headerColor),
    dividerTheme: const DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: AppColors.appTextGreyColor,
    ),
    textButtonTheme: TextButtonThemeData(style: _buttonStyle),
    elevatedButtonTheme: ElevatedButtonThemeData(style: _buttonStyle),
    outlinedButtonTheme: OutlinedButtonThemeData(style: _buttonStyle),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.appWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    popupMenuTheme: _popupMenuTheme,
    dropdownMenuTheme: _dropdownMenuTheme,
    menuTheme: _menuTheme,
    fontFamily: fontFamily,
    textTheme: _textTheme(AppColors.textColor),
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
    textButtonTheme: TextButtonThemeData(style: _buttonStyle),
    outlinedButtonTheme: OutlinedButtonThemeData(style: _buttonStyle),
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
        mouseCursor: WidgetStateProperty.all(SystemMouseCursors.click),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 44)),
        maximumSize: WidgetStatePropertyAll(Size(double.infinity, 44)),
        padding: WidgetStatePropertyAll(EdgeInsets.only(bottom: 8)),
        backgroundColor: WidgetStatePropertyAll(AppColors.onBackground),
        shadowColor: WidgetStatePropertyAll(Colors.transparent),
        surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      color: AppColors.onBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    popupMenuTheme: _popupMenuTheme,
    dropdownMenuTheme: _dropdownMenuTheme,
    menuTheme: _menuTheme,
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
    textTheme: _textTheme(Colors.white),
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
