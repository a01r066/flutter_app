import 'package:package_info_plus/package_info_plus.dart';

/// Enum representing different environment flavors
enum Flavor { dev, prod }

/// Environment configuration
class EnvConfig {
  /// Singleton instance of EnvConfig
  static final EnvConfig _instance = EnvConfig._internal();

  /// Factory constructor
  factory EnvConfig() => _instance;

  /// Private constructor
  EnvConfig._internal();

  /// Current flavor
  late Flavor _flavor;

  /// Package info
  late PackageInfo _packageInfo;

  /// Initialize the environment configuration
  Future<void> initialize(Flavor flavor) async {
    _flavor = flavor;
    _packageInfo = await PackageInfo.fromPlatform();
  }

  /// Get the current flavor
  Flavor get flavor => _flavor;

  /// Check if the app is running in development mode
  bool get isDev => _flavor == Flavor.dev;

  /// Check if the app is running in production mode
  bool get isProd => _flavor == Flavor.prod;

  /// Get the base URL for the OpenWeather API
  String get baseUrl {
    switch (_flavor) {
      case Flavor.dev:
      case Flavor.prod:
        return 'https://api.openweathermap.org/data/3.0';
    }
  }

  /// Get the app name based on the current flavor
  String get appName {
    switch (_flavor) {
      case Flavor.dev:
        return 'OpenWeather Dev';
      case Flavor.prod:
        return 'OpenWeather';
    }
  }

  /// Get app version with build number
  String get versionWithBuild =>
      '${_packageInfo.version}+${_packageInfo.buildNumber}';

  /// Get app version
  String get version => _packageInfo.version;

  /// Get app build number
  String get buildNumber => _packageInfo.buildNumber;

  /// Get app package name
  String get packageName => _packageInfo.packageName;
}
