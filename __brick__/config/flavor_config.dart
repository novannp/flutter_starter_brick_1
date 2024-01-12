enum FlavorType {
  dev,
  prod,
}

class FlavorValue {
  final String appName;
  final String apiBaseUrl;
  // TODO: INSER HERE YOUR APPNAME AND BASEURL
  const FlavorValue(
      {this.appName = '[Dev] YOUR_APP_NAME',
      this.apiBaseUrl = 'YOUR_BASE_URL_API'});
}

class FlavorConfig {
  final FlavorType flavorType;
  final FlavorValue flavorValue;

  FlavorConfig({
    this.flavorType = FlavorType.dev,
    this.flavorValue = const FlavorValue(),
  }) {
    _instance = this;
  }

  static FlavorConfig? _instance;
  static FlavorConfig get instance => _instance ?? FlavorConfig();
}
