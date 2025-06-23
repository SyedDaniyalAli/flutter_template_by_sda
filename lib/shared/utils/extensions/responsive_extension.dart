import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension ResponsiveContext on BuildContext {
  // Size Checks
  bool get isLargerThanTablet =>
      ResponsiveBreakpoints.of(this).largerThan(TABLET);
  bool get isLargerThanMobile =>
      ResponsiveBreakpoints.of(this).largerThan(MOBILE);
  bool get isLargerThanDesktop =>
      ResponsiveBreakpoints.of(this).largerThan(DESKTOP);

  bool get isSmallerThanTablet =>
      ResponsiveBreakpoints.of(this).smallerThan(TABLET);
  bool get isSmallerThanMobile =>
      ResponsiveBreakpoints.of(this).smallerThan(MOBILE);
  bool get isSmallerThanDesktop =>
      ResponsiveBreakpoints.of(this).smallerThan(DESKTOP);

  bool get isEqualToTablet => ResponsiveBreakpoints.of(this).equals(TABLET);
  bool get isEqualToMobile => ResponsiveBreakpoints.of(this).equals(MOBILE);
  bool get isEqualToDesktop => ResponsiveBreakpoints.of(this).equals(DESKTOP);

  bool get isTabletOrLarger =>
      ResponsiveBreakpoints.of(this).largerOrEqualTo(TABLET);
  bool get isMobileOrSmaller =>
      ResponsiveBreakpoints.of(this).smallerOrEqualTo(MOBILE);
  bool get isTabletOrSmaller =>
      ResponsiveBreakpoints.of(this).smallerOrEqualTo(TABLET);
  bool get isDesktopOrLarger =>
      ResponsiveBreakpoints.of(this).largerOrEqualTo(DESKTOP);
  bool get isDesktopOrSmaller =>
      ResponsiveBreakpoints.of(this).smallerOrEqualTo(DESKTOP);

  bool get is4K => screenWidth > 1200;
  bool get isDesktop => screenWidth <= 1200;
  bool get isTablet => screenWidth <= 800;
  bool get isMobile => screenWidth <= 450;

  // Screen Dimensions
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  // Aspect Ratio
  double get screenAspectRatio => MediaQuery.of(this).size.aspectRatio;

  // Orientation
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  // Scale Factors
  double get titleScaleFactor => isLargerThanTablet ? 1.2 : 0.9;
  double get textScaleFactor => MediaQuery.textScalerOf(this).scale(1.0);

  // Padding Helpers
  EdgeInsets get defaultPadding => isLargerThanDesktop
      ? EdgeInsets.symmetric(horizontal: 64.0)
      : isLargerThanTablet
          ? EdgeInsets.symmetric(horizontal: 32.0)
          : EdgeInsets.symmetric(horizontal: 16.0);

  double get defaultMainPagePadding => isSmallerThanTablet ? 16.0 : 32.0;
}
