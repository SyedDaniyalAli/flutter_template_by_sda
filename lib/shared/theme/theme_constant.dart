import 'package:flutter/material.dart';

import '../constants/app_fonts.dart';

class TextTheme {
  static final TextTheme _instance = TextTheme._internal();
  factory TextTheme() {
    return _instance;
  }
  TextTheme._internal();
  TextStyle? bold22(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? bold21(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? bold20(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? bold19(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? bold18(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? bold16(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? bold14(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? bold12(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? bold10(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall?.copyWith(
      fontWeight: AppFontWeight().bold,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? medium32(BuildContext context) {
    return Theme.of(context).textTheme.displaySmall?.copyWith(
      fontWeight: AppFontWeight().medium,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? medium20(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
      fontWeight: AppFontWeight().medium,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? medium16(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge?.copyWith(
      fontWeight: AppFontWeight().medium,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? medium14(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium?.copyWith(
      fontWeight: AppFontWeight().medium,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? medium12(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall?.copyWith(
      fontWeight: AppFontWeight().medium,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? medium10(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall?.copyWith(
      fontWeight: AppFontWeight().medium,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? regular14(BuildContext context) {
    return Theme.of(context).textTheme.labelMedium?.copyWith(
      fontWeight: AppFontWeight().regular,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? regular12(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall?.copyWith(
      fontWeight: AppFontWeight().regular,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? regular10(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall?.copyWith(
      fontWeight: AppFontWeight().regular,
      fontFamily: AppFonts.appFontFamily,
    );
  }

  TextStyle? emojiStyle(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
      fontWeight: AppFontWeight().regular,
      fontFamily: AppFonts.appFontFamily,
    );
  }
}
