import 'package:dartz/dartz.dart';
import '../entities/weather.dart';
import '../entities/forecast.dart';
import '../entities/failure.dart';

abstract class WeatherRepository {
  /// Get current weather for the given coordinates
  Future<Either<Failure, Weather>> getCurrentWeather({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
  });

  /// Get forecast for the given coordinates
  Future<Either<Failure, Forecast>> getForecast({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
    List<String>? exclude,
  });

  /// Get last cached weather data if available
  Future<Either<Failure, Weather>> getLastCachedWeather();

  /// Get last cached forecast data if available
  Future<Either<Failure, Forecast>> getLastCachedForecast();

  /// Set coordinates for the current location
  Future<void> saveLocation({
    required double latitude,
    required double longitude,
    required String cityName,
  });

  /// Get the last saved location
  Future<Either<Failure, ({double latitude, double longitude, String? cityName})>> getLastLocation();
}