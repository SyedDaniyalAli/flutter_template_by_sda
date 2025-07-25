import 'package:flutter/material.dart';

class SupportedLanguageLocales {
  static const String engLangCode = "en";

  /*id: as per the locale given by the flutter framework.*/
  static const String inuktitutLocale = "id";
  static const String engLangFullName = "English";
  static const String inuktitutLangFullName = "Inuktitut";
  static String currentLocale = engLangCode;
}

class AppColors {
  static final AppColors _instance = AppColors._internal();
  factory AppColors() {
    return _instance;
  }
  AppColors._internal();

  //Dictionary App Colors
  static Color primaryColor = const Color(0xFFFCF6E1);
  static Color lightBlack = const Color(0xFF707070);
  // static Color darkBlack = Color(0xFF2F2E2E);

  static Color darkBlack = const Color.fromRGBO(47, 46, 46, 1);

  static Color itemListColor = const Color(0xFFE7E1CC);
  static Color itemListColor2 = const Color(0xFFE7E1CC);
  static Color itemSeparator = const Color(0xFF444343);

  // TextColors
  static Color colorTextBlue = const Color.fromARGB(255, 43, 89, 110);
  static Color colorGrey = const Color.fromRGBO(245, 245, 245, 100);
  static Color colorTextBlack = Colors.black;
  static Color colorTextWhite = Colors.white;

  // Button Background Colors
  // static Color color_primary = Color.fromARGB(255, 59, 126, 158);
  static Color colorPrimaryBG = const Color(0xFFD4CEBB);

  //==================== Main Colors ===========================================
  static const Color appWhiteColor = Color(0xffFFFFFF);
  static const Color appWhiteColorWithOpacity = Color(0x99FFFFFF);
  static const Color secondary = bodyColor;
  static const Color primary = buttonColor;
  static const Color circularProgress = buttonColor;
  static const Color backgroundColor = Color(0xff191919);
  static const Color onBackground = Color(0xff262626);

  //============================================================================

  //==================== Text Colors ===========================================

  static const Color appTextGreyColor = Color(0xff797979);
  static const Color appBorderGreyColor = Color.fromARGB(255, 187, 200, 209);
  static const Color inputTextBorderColor = Color(
    0xffe1ddcf,
  ); // Color.fromARGB(255, 187, 200, 209);
  static const Color appDotsGreyColor = Color(0x2D2F2E2E); //Color(0xffbce0fd);
  static const Color disabledtextFiledColor = Color(0xffededed);

  //============================================================================

  //==================== Other Colors ==========================================

  static const Color appDarkBlue = Color(0xff0984FF);
  static const Color appRedColor = Color(0xffE3301D);
  static const Color appAlertBackGroundColor = Color(0xff191919);
  static const Color appShadowColor = Color(0xff313131);
  static const Color appBorderColor = Color(0xff474747);
  static const Color headerColor = Color(0xff2f2e2e); //Color(0xff37A1FB);
  static const Color iconColor = Color(0xff852b2b);
  static const Color iconColor2 = headerColor; //Color(0xff852b2b);
  static const Color bodyColor = Color(0xfffcf6e1); //Color(0xffDAEDFE);
  static const Color bodyframe = Color(0xffF5FAFF);
  static const Color inputlabel = headerColor; //Color(0xff0A7FEB);
  static const Color fieldColor = Color(0xffDAEDFE);
  static const Color greyColor = Colors.grey;

  static const Color emptyfieldColor = Color(0xffF5FAFF);
  static const Color buttonColor = headerColor; //Color(0xff2A99FB);
  static const Color textColor = headerColor; //Color(0xff37a1fb);
  static const Color scaffoldColor = Color(0xffdbedff);
  static const Color transparentColor = Colors.transparent;
  static const Color optionHeaderColor = Color(0xffF5FAFF);
  static const Color startHereCardBGColor = Color(
    0xffe7e1cc,
  ); //Color(0xffbce0fd);
  static const Color startHereCardFGColor = Color(0xfff0f9ff);
  static const Color iconBGColor = Color(0xfffbe4cc);

  //==============================================================================
}

class AppConstants {
  static final AppConstants _instance = AppConstants._internal();

  factory AppConstants() {
    return _instance;
  }

  AppConstants._internal();

  static const double defaultPaddingWeb = 65;
  static const double defaultPaddingApp = 15;
  static const double defaultMainPagePadding = 150;
  static const double defaultPaddingTab = 25;
  static const double defaultPaddingLoginScreen = 55;
  static const String appName = 'PIKHS User';
}
