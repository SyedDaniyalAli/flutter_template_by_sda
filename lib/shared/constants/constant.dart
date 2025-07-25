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
  static const String appName = 'App by SDA';
}
