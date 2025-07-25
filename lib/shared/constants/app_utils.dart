import 'package:flutter/cupertino.dart';
import 'package:flutter_template_by_sda/shared/utils/extensions/context_extensions.dart';

import '../../core/responsive/responsive.dart';

enum BuildFlavor { staging, production }

class AppUtils {
  static final AppUtils _instance = AppUtils._internal();

  factory AppUtils() {
    return _instance;
  }

  AppUtils._internal();

  static const String dateFormatter = "yyyy-MM-dd";

  BuildFlavor currentBuildFlavor = BuildFlavor.staging;

  static const double paddingAllSides = 14;
  static const double paddingVertical = 10;
  static const double paddingHorizontal = 14;
  static const double paddingCard = 8;
  static const double appTextFieldPadding = 20;
  static const double appBorderWidth = 0.7;
  static BorderRadius kBorderRadiusCircular = BorderRadius.circular(15);

  static double kAppButtonWidth(BuildContext context) =>
      getResponsiveValue(context, context.screenWidth);

  static double kAppButtonHeight(BuildContext context) =>
      getResponsiveValue(context, 50);

  static SizedBox sizedBoxHeight(
    BuildContext context, {
    double defaultValue = 20,
  }) => SizedBox(height: getResponsiveValue(context, defaultValue));

  static SizedBox sizedBoxWidth(
    BuildContext context, {
    double defaultValue = 10,
  }) => SizedBox(width: getResponsiveValue(context, defaultValue));
}
