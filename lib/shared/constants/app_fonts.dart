import 'dart:ui';

class AppFonts {
  static final AppFonts _instance = AppFonts._internal();
  factory AppFonts() {
    return _instance;
  }
  static const String appFontFamily = "Raleway";
  AppFonts._internal();
}

class AppFontWeight {
  static final AppFontWeight _instance = AppFontWeight._internal();

  factory AppFontWeight() {
    return _instance;
  }

  AppFontWeight._internal();

  FontWeight boldFontWeight = FontWeight.w700;
  FontWeight semiBoldFontWeight = FontWeight.w600;
  FontWeight lightFontWeight = FontWeight.w500;
  FontWeight thinFontWeight = FontWeight.w400;
  FontWeight black = FontWeight.w900;
  FontWeight bold = FontWeight.w700;
  FontWeight medium = FontWeight.w500;
  FontWeight regular = FontWeight.w400;
  FontWeight light = FontWeight.w300;
}
