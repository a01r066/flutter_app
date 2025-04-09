import 'package:dartz/dartz.dart';
import '../entities/weather.dart';
import '../entities/failure.dart';
import '../repositories/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository repository;

  GetCurrentWeatherUseCase(this.repository);

  Future<Either<Failure, Weather>> call({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
  }) async {
    return await repository.getCurrentWeather(
      latitude: latitude,
      longitude: longitude,
      units: units,
      language: language,
    );
  }

  Future<Either<Failure, Weather>> getCached() async {
    return await repository.getLastCachedWeather();
  }
}