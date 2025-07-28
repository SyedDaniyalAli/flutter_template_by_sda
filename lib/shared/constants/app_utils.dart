import 'package:flutter/cupertino.dart';
import 'package:flutter_template_by_sda/shared/utils/extensions/context_extensions.dart';

import '../../core/responsive/responsive.dart';

enum BuildFlavor { staging, production }

/// Utility class for app-wide constants and helpers.
class AppUtils {
  // Date format used throughout the app.
  static const String dateFormatter = "yyyy-MM-dd";

  /// Current build flavor (staging or production).
  /// Consider managing this via environment or config for larger apps.
  static BuildFlavor currentBuildFlavor = BuildFlavor.staging;

  // Padding and sizing constants
  static const double paddingAllSides = 14;
  static const double paddingVertical = 10;
  static const double paddingHorizontal = 14;
  static const double paddingCard = 8;
  static const double appTextFieldPadding = 20;
  static const double appBorderWidth = 0.7;
  static final BorderRadius kBorderRadiusCircular = BorderRadius.circular(15);

  /// Returns a responsive button width based on screen size.
  static double kAppButtonWidth(BuildContext context) =>
      getResponsiveValue(context, context.screenWidth);

  /// Returns a responsive button height (default 50).
  static double kAppButtonHeight(BuildContext context) =>
      getResponsiveValue(context, 50);

  /// Returns a SizedBox with responsive height.
  static SizedBox sizedBoxHeight(
    BuildContext context, {
    double defaultValue = 20,
  }) => SizedBox(height: getResponsiveValue(context, defaultValue));

  /// Returns a SizedBox with responsive width.
  static SizedBox sizedBoxWidth(
    BuildContext context, {
    double defaultValue = 10,
  }) => SizedBox(width: getResponsiveValue(context, defaultValue));
}
