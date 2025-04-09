class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'OpenWeather App';
  static const String appVersion = '1.0.0';

  // Default Values
  static const double defaultLatitude = 40.7128; // New York
  static const double defaultLongitude = -74.0060;
  static const String defaultCity = 'New York';

  // Cache Duration
  static const int cacheDurationInMinutes = 30;

  // Error Messages
  static const String noInternetError = 'No internet connection. Showing cached data.';
  static const String genericError = 'Something went wrong. Please try again.';
  static const String locationError = 'Unable to get current location.';
  static const String apiKeyMissing = 'API key is missing. Please add your API key in settings.';

  // Settings
  static const List<String> availableUnits = ['metric', 'imperial'];
  static const Map<String, String> unitLabels = {
    'metric': 'Celsius (°C)',
    'imperial': 'Fahrenheit (°F)',
  };

  // Units Symbols
  static const Map<String, String> temperatureUnits = {
    'metric': '°C',
    'imperial': '°F',
  };
  static const Map<String, String> speedUnits = {
    'metric': 'm/s',
    'imperial': 'mph',
  };
}