import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/api/api_exceptions.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/constants/app_constants.dart';
import '../../models/weather_model.dart';
import '../../models/forecast_model.dart';

abstract class WeatherLocalDatasource {
  Future<WeatherModel> getCachedWeather();
  Future<ForecastModel> getCachedForecast();
  Future<void> cacheWeather(WeatherModel weather);
  Future<void> cacheForecast(ForecastModel forecast);
  Future<void> saveLocation({
    required double latitude,
    required double longitude,
    required String cityName,
  });
  Future<({double latitude, double longitude, String? cityName})> getLastLocation();
  Future<bool> isCacheValid();
}

class WeatherLocalDatasourceImpl implements WeatherLocalDatasource {
  final SharedPreferences _prefs;

  WeatherLocalDatasourceImpl(this._prefs);

  @override
  Future<WeatherModel> getCachedWeather() async {
    try {
      final jsonString = _prefs.getString(ApiConstants.lastWeatherData);

      if (jsonString == null) {
        throw CacheException('No cached weather data found');
      }

      final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
      return WeatherModel.fromJson(jsonMap);
    } catch (e) {
      if (e is CacheException) rethrow;
      throw CacheException('Failed to get cached weather: $e');
    }
  }

  @override
  Future<ForecastModel> getCachedForecast() async {
    try {
      final jsonString = _prefs.getString(ApiConstants.lastForecastData);

      if (jsonString == null) {
        throw CacheException('No cached forecast data found');
      }

      final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
      return ForecastModel.fromJson(jsonMap);
    } catch (e) {
      if (e is CacheException) rethrow;
      throw CacheException('Failed to get cached forecast: $e');
    }
  }

  @override
  Future<void> cacheWeather(WeatherModel weather) async {
    try {
      final jsonString = json.encode(weather.toJson());
      await _prefs.setString(ApiConstants.lastWeatherData, jsonString);
      await _updateLastUpdateTime();
    } catch (e) {
      throw CacheException('Failed to cache weather: $e');
    }
  }

  @override
  Future<void> cacheForecast(ForecastModel forecast) async {
    try {
      final jsonString = json.encode(forecast.toJson());
      await _prefs.setString(ApiConstants.lastForecastData, jsonString);
      await _updateLastUpdateTime();
    } catch (e) {
      throw CacheException('Failed to cache forecast: $e');
    }
  }

  @override
  Future<void> saveLocation({
    required double latitude,
    required double longitude,
    required String cityName,
  }) async {
    try {
      await _prefs.setDouble(ApiConstants.lastLocationLat, latitude);
      await _prefs.setDouble(ApiConstants.lastLocationLon, longitude);
      await _prefs.setString('last_location_city', cityName);
    } catch (e) {
      throw CacheException('Failed to save location: $e');
    }
  }

  @override
  Future<({double latitude, double longitude, String? cityName})> getLastLocation() async {
    try {
      final latitude = _prefs.getDouble(ApiConstants.lastLocationLat) ??
          AppConstants.defaultLatitude;
      final longitude = _prefs.getDouble(ApiConstants.lastLocationLon) ??
          AppConstants.defaultLongitude;
      final cityName = _prefs.getString('last_location_city') ??
          AppConstants.defaultCity;

      return (
      latitude: latitude,
      longitude: longitude,
      cityName: cityName,
      );
    } catch (e) {
      throw CacheException('Failed to get last location: $e');
    }
  }

  @override
  Future<bool> isCacheValid() async {
    try {
      final lastUpdateTimeStr = _prefs.getString(ApiConstants.lastUpdateTime);

      if (lastUpdateTimeStr == null) {
        return false;
      }

      final lastUpdateTime = DateTime.parse(lastUpdateTimeStr);
      final currentTime = DateTime.now();

      // Calculate the difference in minutes
      final difference = currentTime.difference(lastUpdateTime).inMinutes;

      // Check if the cache is still valid based on the cache duration
      return difference <= AppConstants.cacheDurationInMinutes;
    } catch (e) {
      return false;
    }
  }

  Future<void> _updateLastUpdateTime() async {
    final currentTime = DateTime.now().toIso8601String();
    await _prefs.setString(ApiConstants.lastUpdateTime, currentTime);
  }
}