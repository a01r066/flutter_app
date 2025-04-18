class ApiConstants {
  ApiConstants._();

  // Base URL is now managed by EnvConfig
  // static const String baseUrl = 'https://api.openweathermap.org/data/3.0';

  // Endpoints
  static const String onecall = '/onecall';

  // Params
  static const String latitude = 'lat';
  static const String longitude = 'lon';
  static const String apiKey = 'appid';
  static const String units = 'units';
  static const String exclude = 'exclude';
  static const String language = 'lang';

  // Values
  static const String metric = 'metric';
  static const String imperial = 'imperial';
  static const String excludeMinutely = 'minutely';

  // Storage Keys
  static const String apiKeyStorage = 'e680c6a11dc1aa8e57065bac6dfc6837';
  static const String lastWeatherData = 'last_weather_data';
  static const String lastForecastData = 'last_forecast_data';
  static const String lastLocationLat = 'last_location_lat';
  static const String lastLocationLon = 'last_location_lon';
  static const String lastUpdateTime = 'last_update_time';
  static const String unitPreference = 'unit_preference';
}
