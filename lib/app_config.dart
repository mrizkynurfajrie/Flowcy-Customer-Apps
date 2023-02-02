enum Flavor { DEVELOPMENT, STAGING, PRODUCTION }

class AppConfig {
  static late Flavor flavor;

  static bool isProduction() => flavor == Flavor.PRODUCTION;
  static bool isStaging() => flavor == Flavor.STAGING;
  static bool isDevelopment() => flavor == Flavor.DEVELOPMENT;

  static String baseUrl() {
    switch (flavor) {
      case Flavor.DEVELOPMENT:
        return "https://reqres.in/";
      case Flavor.STAGING:
        return "https://reqres.in/";
      case Flavor.PRODUCTION:
        return "https://reqres.in/";
      default:
        return "https://reqres.in/";
    }
  }

  static bool showDebugBanner() {
    if (flavor == Flavor.PRODUCTION) {
      return false;
    }
    return true;
  }
}
