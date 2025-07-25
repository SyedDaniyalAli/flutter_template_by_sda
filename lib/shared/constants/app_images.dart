const String _iconsDirectory = "assets/icons";
const String _imageDirectory = "assets/images";

class AppImages {
  static final AppImages _instance = AppImages._internal();

  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory AppImages() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  AppImages._internal();

  // Images~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  static const String logo = "$_imageDirectory/logo.png";

  // Icons~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  static const String icon = "$_iconsDirectory/logo.png";
}
