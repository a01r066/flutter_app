// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Weather App`
  String get appTitle {
    return Intl.message(
      'Weather App',
      name: 'appTitle',
      desc: 'The title of the application',
      args: [],
    );
  }

  /// `Search Location`
  String get searchLocation {
    return Intl.message(
      'Search Location',
      name: 'searchLocation',
      desc: 'Title for the search location screen',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Title for the settings screen',
      args: [],
    );
  }

  /// `Weather Details`
  String get weatherDetails {
    return Intl.message(
      'Weather Details',
      name: 'weatherDetails',
      desc: 'Title for the weather details screen',
      args: [],
    );
  }

  /// `Theme Settings`
  String get themeSettings {
    return Intl.message(
      'Theme Settings',
      name: 'themeSettings',
      desc: 'Title for the theme settings screen',
      args: [],
    );
  }

  /// `Search for a city`
  String get searchForCity {
    return Intl.message(
      'Search for a city',
      name: 'searchForCity',
      desc: 'Hint text for the city search field',
      args: [],
    );
  }

  /// `Search for a city to get weather information`
  String get searchInstructions {
    return Intl.message(
      'Search for a city to get weather information',
      name: 'searchInstructions',
      desc: 'Instructions for searching a location',
      args: [],
    );
  }

  /// `Or use your current location`
  String get useCurrentLocation {
    return Intl.message(
      'Or use your current location',
      name: 'useCurrentLocation',
      desc: 'Text suggesting to use current location',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: 'Button label for retrying an operation',
      args: [],
    );
  }

  /// `No weather data available`
  String get noWeatherData {
    return Intl.message(
      'No weather data available',
      name: 'noWeatherData',
      desc: 'Message displayed when no weather data is available',
      args: [],
    );
  }

  /// `Feels like {temperature}`
  String feelsLike(String temperature) {
    return Intl.message(
      'Feels like $temperature',
      name: 'feelsLike',
      desc: 'Text for \'feels like\' temperature',
      args: [temperature],
    );
  }

  /// `Last updated: {time}`
  String lastUpdated(String time) {
    return Intl.message(
      'Last updated: $time',
      name: 'lastUpdated',
      desc: 'Text showing when data was last updated',
      args: [time],
    );
  }

  /// `Just now`
  String get justNow {
    return Intl.message(
      'Just now',
      name: 'justNow',
      desc: 'Text for \'just now\' in time descriptions',
      args: [],
    );
  }

  /// `{count, plural, =1{1 minute ago} other{{count} minutes ago}}`
  String minutesAgo(int count) {
    return Intl.plural(
      count,
      one: '1 minute ago',
      other: '$count minutes ago',
      name: 'minutesAgo',
      desc: 'Text for minutes ago with plural support',
      args: [count],
    );
  }

  /// `{count, plural, =1{1 hour ago} other{{count} hours ago}}`
  String hoursAgo(int count) {
    return Intl.plural(
      count,
      one: '1 hour ago',
      other: '$count hours ago',
      name: 'hoursAgo',
      desc: 'Text for hours ago with plural support',
      args: [count],
    );
  }

  /// `{count, plural, =1{1 day ago} other{{count} days ago}}`
  String daysAgo(int count) {
    return Intl.plural(
      count,
      one: '1 day ago',
      other: '$count days ago',
      name: 'daysAgo',
      desc: 'Text for days ago with plural support',
      args: [count],
    );
  }

  /// `Hourly Forecast`
  String get hourlyForecast {
    return Intl.message(
      'Hourly Forecast',
      name: 'hourlyForecast',
      desc: 'Title for the hourly forecast section',
      args: [],
    );
  }

  /// `7-Day Forecast`
  String get dailyForecast {
    return Intl.message(
      '7-Day Forecast',
      name: 'dailyForecast',
      desc: 'Title for the daily forecast section',
      args: [],
    );
  }

  /// `Weather Alerts`
  String get weatherAlerts {
    return Intl.message(
      'Weather Alerts',
      name: 'weatherAlerts',
      desc: 'Title for the weather alerts section',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: 'Text for \'Today\' in forecast',
      args: [],
    );
  }

  /// `Tomorrow`
  String get tomorrow {
    return Intl.message(
      'Tomorrow',
      name: 'tomorrow',
      desc: 'Text for \'Tomorrow\' in forecast',
      args: [],
    );
  }

  /// `Temperature Units`
  String get temperatureUnits {
    return Intl.message(
      'Temperature Units',
      name: 'temperatureUnits',
      desc: 'Title for temperature units settings',
      args: [],
    );
  }

  /// `Current: {unit}`
  String currentUnit(String unit) {
    return Intl.message(
      'Current: $unit',
      name: 'currentUnit',
      desc: 'Text showing current temperature unit',
      args: [unit],
    );
  }

  /// `Celsius (°C)`
  String get celsius {
    return Intl.message(
      'Celsius (°C)',
      name: 'celsius',
      desc: 'Text for Celsius temperature unit',
      args: [],
    );
  }

  /// `Fahrenheit (°F)`
  String get fahrenheit {
    return Intl.message(
      'Fahrenheit (°F)',
      name: 'fahrenheit',
      desc: 'Text for Fahrenheit temperature unit',
      args: [],
    );
  }

  /// `Appearance`
  String get appearance {
    return Intl.message(
      'Appearance',
      name: 'appearance',
      desc: 'Title for appearance settings',
      args: [],
    );
  }

  /// `Customize app theme and appearance`
  String get customizeAppearance {
    return Intl.message(
      'Customize app theme and appearance',
      name: 'customizeAppearance',
      desc: 'Description for appearance settings',
      args: [],
    );
  }

  /// `Customize Theme`
  String get customizeTheme {
    return Intl.message(
      'Customize Theme',
      name: 'customizeTheme',
      desc: 'Button label for theme customization',
      args: [],
    );
  }

  /// `OpenWeather API Key`
  String get apiKeyTitle {
    return Intl.message(
      'OpenWeather API Key',
      name: 'apiKeyTitle',
      desc: 'Title for API key settings',
      args: [],
    );
  }

  /// `Required for weather data. Get your free API key at openweathermap.org`
  String get apiKeyDescription {
    return Intl.message(
      'Required for weather data. Get your free API key at openweathermap.org',
      name: 'apiKeyDescription',
      desc: 'Description for API key settings',
      args: [],
    );
  }

  /// `Enter your OpenWeather API Key`
  String get apiKeyHint {
    return Intl.message(
      'Enter your OpenWeather API Key',
      name: 'apiKeyHint',
      desc: 'Hint text for API key input',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: 'Button label for saving',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: 'Button label for canceling',
      args: [],
    );
  }

  /// `Cache Settings`
  String get cacheSettings {
    return Intl.message(
      'Cache Settings',
      name: 'cacheSettings',
      desc: 'Title for cache settings',
      args: [],
    );
  }

  /// `Weather data is cached for {duration} minutes`
  String cacheDuration(int duration) {
    return Intl.message(
      'Weather data is cached for $duration minutes',
      name: 'cacheDuration',
      desc: 'Text explaining cache duration',
      args: [duration],
    );
  }

  /// `Clear Cache`
  String get clearCache {
    return Intl.message(
      'Clear Cache',
      name: 'clearCache',
      desc: 'Button label for clearing cache',
      args: [],
    );
  }

  /// `Cache cleared successfully`
  String get cacheCleared {
    return Intl.message(
      'Cache cleared successfully',
      name: 'cacheCleared',
      desc: 'Message when cache is cleared',
      args: [],
    );
  }

  /// `Clear Cache`
  String get clearCacheConfirmTitle {
    return Intl.message(
      'Clear Cache',
      name: 'clearCacheConfirmTitle',
      desc: 'Title for clear cache confirmation dialog',
      args: [],
    );
  }

  /// `This will clear all cached weather data. You will need to fetch new data.`
  String get clearCacheConfirmMessage {
    return Intl.message(
      'This will clear all cached weather data. You will need to fetch new data.',
      name: 'clearCacheConfirmMessage',
      desc: 'Message for clear cache confirmation dialog',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: 'Button label for clear action',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: 'Title for about section',
      args: [],
    );
  }

  /// `OpenWeather App {version}`
  String appVersion(String version) {
    return Intl.message(
      'OpenWeather App $version',
      name: 'appVersion',
      desc: 'Text showing app version',
      args: [version],
    );
  }

  /// `This app uses the OpenWeather One Call API 3.0`
  String get apiInfo {
    return Intl.message(
      'This app uses the OpenWeather One Call API 3.0',
      name: 'apiInfo',
      desc: 'Information about the API used',
      args: [],
    );
  }

  /// `Weather data is provided by OpenWeather`
  String get dataSource {
    return Intl.message(
      'Weather data is provided by OpenWeather',
      name: 'dataSource',
      desc: 'Information about the data source',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: 'Title for language settings',
      args: [],
    );
  }

  /// `Change the application language`
  String get languageDescription {
    return Intl.message(
      'Change the application language',
      name: 'languageDescription',
      desc: 'Description for language settings',
      args: [],
    );
  }

  /// `System Language`
  String get systemLanguage {
    return Intl.message(
      'System Language',
      name: 'systemLanguage',
      desc: 'Text for system language option',
      args: [],
    );
  }

  /// `English`
  String get englishLanguage {
    return Intl.message(
      'English',
      name: 'englishLanguage',
      desc: 'Text for English language option',
      args: [],
    );
  }

  /// `한국어`
  String get koreanLanguage {
    return Intl.message(
      '한국어',
      name: 'koreanLanguage',
      desc: 'Text for Korean language option',
      args: [],
    );
  }

  /// `Tiếng Việt`
  String get vietnameseLanguage {
    return Intl.message(
      'Tiếng Việt',
      name: 'vietnameseLanguage',
      desc: 'Text for Vietnamese language option',
      args: [],
    );
  }

  /// `View detailed weather information`
  String get viewDetails {
    return Intl.message(
      'View detailed weather information',
      name: 'viewDetails',
      desc: 'Text for viewing weather details',
      args: [],
    );
  }

  /// `Temperature`
  String get temperatureDetail {
    return Intl.message(
      'Temperature',
      name: 'temperatureDetail',
      desc: 'Label for temperature detail',
      args: [],
    );
  }

  /// `Feels Like`
  String get feelsLikeDetail {
    return Intl.message(
      'Feels Like',
      name: 'feelsLikeDetail',
      desc: 'Label for feels like detail',
      args: [],
    );
  }

  /// `Humidity`
  String get humidityDetail {
    return Intl.message(
      'Humidity',
      name: 'humidityDetail',
      desc: 'Label for humidity detail',
      args: [],
    );
  }

  /// `Pressure`
  String get pressureDetail {
    return Intl.message(
      'Pressure',
      name: 'pressureDetail',
      desc: 'Label for pressure detail',
      args: [],
    );
  }

  /// `Wind Speed`
  String get windSpeedDetail {
    return Intl.message(
      'Wind Speed',
      name: 'windSpeedDetail',
      desc: 'Label for wind speed detail',
      args: [],
    );
  }

  /// `Wind Direction`
  String get windDirectionDetail {
    return Intl.message(
      'Wind Direction',
      name: 'windDirectionDetail',
      desc: 'Label for wind direction detail',
      args: [],
    );
  }

  /// `Cloudiness`
  String get cloudinessDetail {
    return Intl.message(
      'Cloudiness',
      name: 'cloudinessDetail',
      desc: 'Label for cloudiness detail',
      args: [],
    );
  }

  /// `Visibility`
  String get visibilityDetail {
    return Intl.message(
      'Visibility',
      name: 'visibilityDetail',
      desc: 'Label for visibility detail',
      args: [],
    );
  }

  /// `Current`
  String get currentLabel {
    return Intl.message(
      'Current',
      name: 'currentLabel',
      desc: 'Label for current data',
      args: [],
    );
  }

  /// `Perceived`
  String get perceivedLabel {
    return Intl.message(
      'Perceived',
      name: 'perceivedLabel',
      desc: 'Label for perceived data',
      args: [],
    );
  }

  /// `Relative`
  String get relativeLabel {
    return Intl.message(
      'Relative',
      name: 'relativeLabel',
      desc: 'Label for relative data',
      args: [],
    );
  }

  /// `Sea Level`
  String get seaLevelLabel {
    return Intl.message(
      'Sea Level',
      name: 'seaLevelLabel',
      desc: 'Label for sea level data',
      args: [],
    );
  }

  /// `Coverage`
  String get coverageLabel {
    return Intl.message(
      'Coverage',
      name: 'coverageLabel',
      desc: 'Label for coverage data',
      args: [],
    );
  }

  /// `Approximate`
  String get approximateLabel {
    return Intl.message(
      'Approximate',
      name: 'approximateLabel',
      desc: 'Label for approximate data',
      args: [],
    );
  }

  /// `No internet connection. Showing cached data.`
  String get noInternetError {
    return Intl.message(
      'No internet connection. Showing cached data.',
      name: 'noInternetError',
      desc: 'Error message for no internet connection',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get genericError {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'genericError',
      desc: 'Generic error message',
      args: [],
    );
  }

  /// `Unable to get current location.`
  String get locationError {
    return Intl.message(
      'Unable to get current location.',
      name: 'locationError',
      desc: 'Error message for location issues',
      args: [],
    );
  }

  /// `API key is missing. Please add your API key in settings.`
  String get apiKeyMissing {
    return Intl.message(
      'API key is missing. Please add your API key in settings.',
      name: 'apiKeyMissing',
      desc: 'Error message for missing API key',
      args: [],
    );
  }

  /// `Time of Day`
  String get timeOfDay {
    return Intl.message(
      'Time of Day',
      name: 'timeOfDay',
      desc: 'Title for time of day section',
      args: [],
    );
  }

  /// `Daytime`
  String get daytime {
    return Intl.message(
      'Daytime',
      name: 'daytime',
      desc: 'Text for daytime',
      args: [],
    );
  }

  /// `Nighttime`
  String get nighttime {
    return Intl.message(
      'Nighttime',
      name: 'nighttime',
      desc: 'Text for nighttime',
      args: [],
    );
  }

  /// `Current local time:`
  String get currentLocalTime {
    return Intl.message(
      'Current local time:',
      name: 'currentLocalTime',
      desc: 'Label for current local time',
      args: [],
    );
  }

  /// `Note: Sunrise and sunset data is available in the forecast view`
  String get sunriseSunsetNote {
    return Intl.message(
      'Note: Sunrise and sunset data is available in the forecast view',
      name: 'sunriseSunsetNote',
      desc: 'Note about sunrise and sunset data',
      args: [],
    );
  }

  /// `Weather Condition`
  String get weatherCondition {
    return Intl.message(
      'Weather Condition',
      name: 'weatherCondition',
      desc: 'Title for weather condition section',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: 'Title for location section',
      args: [],
    );
  }

  /// `Lat: {latitude}, Lon: {longitude}`
  String coordinates(String latitude, String longitude) {
    return Intl.message(
      'Lat: $latitude, Lon: $longitude',
      name: 'coordinates',
      desc: 'Text showing coordinates',
      args: [latitude, longitude],
    );
  }

  /// `Detailed Information`
  String get detailedInformation {
    return Intl.message(
      'Detailed Information',
      name: 'detailedInformation',
      desc: 'Title for detailed information section',
      args: [],
    );
  }

  /// `Select Theme`
  String get selectTheme {
    return Intl.message(
      'Select Theme',
      name: 'selectTheme',
      desc: 'Title for theme selection',
      args: [],
    );
  }

  /// `System Default`
  String get systemDefault {
    return Intl.message(
      'System Default',
      name: 'systemDefault',
      desc: 'Text for system default theme',
      args: [],
    );
  }

  /// `Follow your device theme settings`
  String get followSystemTheme {
    return Intl.message(
      'Follow your device theme settings',
      name: 'followSystemTheme',
      desc: 'Description for system default theme',
      args: [],
    );
  }

  /// `Vibrant`
  String get vibrantTheme {
    return Intl.message(
      'Vibrant',
      name: 'vibrantTheme',
      desc: 'Text for vibrant theme',
      args: [],
    );
  }

  /// `Bold and colorful theme`
  String get vibrantThemeDescription {
    return Intl.message(
      'Bold and colorful theme',
      name: 'vibrantThemeDescription',
      desc: 'Description for vibrant theme',
      args: [],
    );
  }

  /// `Professional`
  String get professionalTheme {
    return Intl.message(
      'Professional',
      name: 'professionalTheme',
      desc: 'Text for professional theme',
      args: [],
    );
  }

  /// `Clean and sophisticated theme`
  String get professionalThemeDescription {
    return Intl.message(
      'Clean and sophisticated theme',
      name: 'professionalThemeDescription',
      desc: 'Description for professional theme',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: 'Text for dark mode',
      args: [],
    );
  }

  /// `Enable dark theme`
  String get enableDarkTheme {
    return Intl.message(
      'Enable dark theme',
      name: 'enableDarkTheme',
      desc: 'Description for dark mode toggle',
      args: [],
    );
  }

  /// `Preview`
  String get preview {
    return Intl.message(
      'Preview',
      name: 'preview',
      desc: 'Title for theme preview',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: 'Button label for completing an action',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
