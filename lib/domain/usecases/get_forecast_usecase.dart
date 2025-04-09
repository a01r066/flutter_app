import 'package:dartz/dartz.dart';
import '../entities/forecast.dart';
import '../entities/failure.dart';
import '../repositories/weather_repository.dart';

class GetForecastUseCase {
  final WeatherRepository repository;

  GetForecastUseCase(this.repository);

  Future<Either<Failure, Forecast>> call({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
    List<String>? exclude,
  }) async {
    return await repository.getForecast(
      latitude: latitude,
      longitude: longitude,
      units: units,
      language: language,
      exclude: exclude,
    );
  }

  Future<Either<Failure, Forecast>> getCached() async {
    return await repository.getLastCachedForecast();
  }
}