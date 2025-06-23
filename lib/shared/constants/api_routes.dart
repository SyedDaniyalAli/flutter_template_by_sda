class ApiRoutes {
  static final ApiRoutes _instance = ApiRoutes._internal();

  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory ApiRoutes() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  ApiRoutes._internal();

  static String kBaseUrl =
      "https://innuinactun-dictionary-backend.pinnguaq.com/api";
  static const String allARoots = "/user/a-roots";
  static const String rootADetails = "/user/a-roots";
  static const String allAffixes = "/user/affixes";
  static const String affixDetails = "/user/affixes";
  static const String partOfSpeechs = "/user/part-of-speeches";
  static const String allAffixTypes = "/user/affix-types";
  static const String allDialects = "/user/dialects";
  static const String allWords = "/user/words";
  static const String search = "/user/search";
  static const String allRoots = "/user/roots";
  static const String rootDetails = "/user/roots";
  static const String allSettings = "/user/settings";
  static const String settingsDetails = "/user/settings";
  static const String allSounds = "/user/sounds";
  static const String soundDetails = "/user/sounds";
  static const String allSyllabaries = "/user/syllabaries";
  static const String syllabaryDetails = "/user/syllabaries";
}
