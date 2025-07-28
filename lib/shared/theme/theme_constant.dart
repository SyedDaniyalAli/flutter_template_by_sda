import 'package:flutter/material.dart';

import '../constants/app_font_sizes.dart';
import '../constants/app_fonts.dart';

class AppTextStyles {
  static TextStyle displayLarge(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.displayLarge,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle displayMedium(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.displayMedium,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle displaySmall(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.displaySmall,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle headlineLarge(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.headlineLarge,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle headlineMedium(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.headlineMedium,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle headlineSmall(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.headlineSmall,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle titleLarge(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.titleLarge,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle titleMedium(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.titleMedium,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle titleSmall(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.titleSmall,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle labelLarge(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.labelLarge,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle labelMedium(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.labelMedium,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle labelSmall(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.labelSmall,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
    height: color == Colors.white ? 2 : null,
  );
  static TextStyle bodyLarge(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.bodyLarge,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle bodyMedium(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: AppFontSizes.bodyMedium,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
  static TextStyle bodySmall(Color color) => TextStyle(
    fontFamily: AppFonts.appFontFamily,
    fontSize: color == Colors.white ? 10 : AppFontSizes.bodySmall,
    fontStyle: FontStyle.normal,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: color,
  );
}
