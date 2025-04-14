// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(version) => "OpenWeather App ${version}";

  static String m1(duration) =>
      "Weather data is cached for ${duration} minutes";

  static String m2(latitude, longitude) =>
      "Lat: ${latitude}, Lon: ${longitude}";

  static String m3(unit) => "Current: ${unit}";

  static String m4(count) =>
      "${Intl.plural(count, one: '1 day ago', other: '${count} days ago')}";

  static String m5(temperature) => "Feels like ${temperature}";

  static String m6(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m7(time) => "Last updated: ${time}";

  static String m8(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("About"),
    "apiInfo": MessageLookupByLibrary.simpleMessage(
      "This app uses the OpenWeather One Call API 3.0",
    ),
    "apiKeyDescription": MessageLookupByLibrary.simpleMessage(
      "Required for weather data. Get your free API key at openweathermap.org",
    ),
    "apiKeyHint": MessageLookupByLibrary.simpleMessage(
      "Enter your OpenWeather API Key",
    ),
    "apiKeyMissing": MessageLookupByLibrary.simpleMessage(
      "API key is missing. Please add your API key in settings.",
    ),
    "apiKeyTitle": MessageLookupByLibrary.simpleMessage("OpenWeather API Key"),
    "appTitle": MessageLookupByLibrary.simpleMessage("Weather App"),
    "appVersion": m0,
    "appearance": MessageLookupByLibrary.simpleMessage("Appearance"),
    "approximateLabel": MessageLookupByLibrary.simpleMessage("Approximate"),
    "cacheCleared": MessageLookupByLibrary.simpleMessage(
      "Cache cleared successfully",
    ),
    "cacheDuration": m1,
    "cacheSettings": MessageLookupByLibrary.simpleMessage("Cache Settings"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "celsius": MessageLookupByLibrary.simpleMessage("Celsius (°C)"),
    "clear": MessageLookupByLibrary.simpleMessage("Clear"),
    "clearCache": MessageLookupByLibrary.simpleMessage("Clear Cache"),
    "clearCacheConfirmMessage": MessageLookupByLibrary.simpleMessage(
      "This will clear all cached weather data. You will need to fetch new data.",
    ),
    "clearCacheConfirmTitle": MessageLookupByLibrary.simpleMessage(
      "Clear Cache",
    ),
    "cloudinessDetail": MessageLookupByLibrary.simpleMessage("Cloudiness"),
    "coordinates": m2,
    "coverageLabel": MessageLookupByLibrary.simpleMessage("Coverage"),
    "currentLabel": MessageLookupByLibrary.simpleMessage("Current"),
    "currentLocalTime": MessageLookupByLibrary.simpleMessage(
      "Current local time:",
    ),
    "currentUnit": m3,
    "customizeAppearance": MessageLookupByLibrary.simpleMessage(
      "Customize app theme and appearance",
    ),
    "customizeTheme": MessageLookupByLibrary.simpleMessage("Customize Theme"),
    "dailyForecast": MessageLookupByLibrary.simpleMessage("7-Day Forecast"),
    "darkMode": MessageLookupByLibrary.simpleMessage("Dark Mode"),
    "dataSource": MessageLookupByLibrary.simpleMessage(
      "Weather data is provided by OpenWeather",
    ),
    "daysAgo": m4,
    "daytime": MessageLookupByLibrary.simpleMessage("Daytime"),
    "detailedInformation": MessageLookupByLibrary.simpleMessage(
      "Detailed Information",
    ),
    "done": MessageLookupByLibrary.simpleMessage("Done"),
    "enableDarkTheme": MessageLookupByLibrary.simpleMessage(
      "Enable dark theme",
    ),
    "englishLanguage": MessageLookupByLibrary.simpleMessage("English"),
    "fahrenheit": MessageLookupByLibrary.simpleMessage("Fahrenheit (°F)"),
    "feelsLike": m5,
    "feelsLikeDetail": MessageLookupByLibrary.simpleMessage("Feels Like"),
    "followSystemTheme": MessageLookupByLibrary.simpleMessage(
      "Follow your device theme settings",
    ),
    "genericError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong. Please try again.",
    ),
    "hourlyForecast": MessageLookupByLibrary.simpleMessage("Hourly Forecast"),
    "hoursAgo": m6,
    "humidityDetail": MessageLookupByLibrary.simpleMessage("Humidity"),
    "justNow": MessageLookupByLibrary.simpleMessage("Just now"),
    "koreanLanguage": MessageLookupByLibrary.simpleMessage("한국어"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "languageDescription": MessageLookupByLibrary.simpleMessage(
      "Change the application language",
    ),
    "lastUpdated": m7,
    "location": MessageLookupByLibrary.simpleMessage("Location"),
    "locationError": MessageLookupByLibrary.simpleMessage(
      "Unable to get current location.",
    ),
    "minutesAgo": m8,
    "nighttime": MessageLookupByLibrary.simpleMessage("Nighttime"),
    "noInternetError": MessageLookupByLibrary.simpleMessage(
      "No internet connection. Showing cached data.",
    ),
    "noWeatherData": MessageLookupByLibrary.simpleMessage(
      "No weather data available",
    ),
    "perceivedLabel": MessageLookupByLibrary.simpleMessage("Perceived"),
    "pressureDetail": MessageLookupByLibrary.simpleMessage("Pressure"),
    "preview": MessageLookupByLibrary.simpleMessage("Preview"),
    "professionalTheme": MessageLookupByLibrary.simpleMessage("Professional"),
    "professionalThemeDescription": MessageLookupByLibrary.simpleMessage(
      "Clean and sophisticated theme",
    ),
    "relativeLabel": MessageLookupByLibrary.simpleMessage("Relative"),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "seaLevelLabel": MessageLookupByLibrary.simpleMessage("Sea Level"),
    "searchForCity": MessageLookupByLibrary.simpleMessage("Search for a city"),
    "searchInstructions": MessageLookupByLibrary.simpleMessage(
      "Search for a city to get weather information",
    ),
    "searchLocation": MessageLookupByLibrary.simpleMessage("Search Location"),
    "selectTheme": MessageLookupByLibrary.simpleMessage("Select Theme"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "sunriseSunsetNote": MessageLookupByLibrary.simpleMessage(
      "Note: Sunrise and sunset data is available in the forecast view",
    ),
    "systemDefault": MessageLookupByLibrary.simpleMessage("System Default"),
    "systemLanguage": MessageLookupByLibrary.simpleMessage("System Language"),
    "temperatureDetail": MessageLookupByLibrary.simpleMessage("Temperature"),
    "temperatureUnits": MessageLookupByLibrary.simpleMessage(
      "Temperature Units",
    ),
    "themeSettings": MessageLookupByLibrary.simpleMessage("Theme Settings"),
    "timeOfDay": MessageLookupByLibrary.simpleMessage("Time of Day"),
    "today": MessageLookupByLibrary.simpleMessage("Today"),
    "tomorrow": MessageLookupByLibrary.simpleMessage("Tomorrow"),
    "useCurrentLocation": MessageLookupByLibrary.simpleMessage(
      "Or use your current location",
    ),
    "vibrantTheme": MessageLookupByLibrary.simpleMessage("Vibrant"),
    "vibrantThemeDescription": MessageLookupByLibrary.simpleMessage(
      "Bold and colorful theme",
    ),
    "vietnameseLanguage": MessageLookupByLibrary.simpleMessage("Tiếng Việt"),
    "viewDetails": MessageLookupByLibrary.simpleMessage(
      "View detailed weather information",
    ),
    "visibilityDetail": MessageLookupByLibrary.simpleMessage("Visibility"),
    "weatherAlerts": MessageLookupByLibrary.simpleMessage("Weather Alerts"),
    "weatherCondition": MessageLookupByLibrary.simpleMessage(
      "Weather Condition",
    ),
    "weatherDetails": MessageLookupByLibrary.simpleMessage("Weather Details"),
    "windDirectionDetail": MessageLookupByLibrary.simpleMessage(
      "Wind Direction",
    ),
    "windSpeedDetail": MessageLookupByLibrary.simpleMessage("Wind Speed"),
  };
}
