enum Flavor {
  weather_app_gse_dev,
  weather_app_gse,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.weather_app_gse_dev:
        return 'weather_app_gse_dev';
      case Flavor.weather_app_gse:
        return 'weather_app_gse_prod';
      default:
        return 'title';
    }
  }

}
