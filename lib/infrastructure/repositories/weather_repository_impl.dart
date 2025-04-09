import 'package:dartz/dartz.dart';
import '../../domain/entities/weather.dart';
import '../../domain/entities/forecast.dart';
import '../../domain/entities/failure.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/local/weather_local_datasource.dart';
import '../datasources/remote/weather_remote_datasource.dart';
import '../../core/api/api_exceptions.dart';
import '../../core/utils/connectivity_service.dart';
import '../services/location_service.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDatasource _remoteDatasource;
  final WeatherLocalDatasource _localDatasource;
  final ConnectivityService _connectivityService;
  final LocationService _locationService;

  WeatherRepositoryImpl(
      this._remoteDatasource,
      this._localDatasource,
      this._connectivityService,
      this._locationService,
      );

  @override
  Future<Either<Failure, Weather>> getCurrentWeather({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
  }) async {
    try {
      // Check internet connectivity
      final isConnected = await _connectivityService.isConnected();

      if (isConnected) {
        try {
          // Try to get data from remote source
          final weatherModel = await _remoteDatasource.getCurrentWeather(
            latitude: latitude,
            longitude: longitude,
            units: units,
            language: language,
          );

          // Get city name from coordinates
          final cityNameResult = await _locationService.getCityNameFromCoordinates(
            latitude,
            longitude,
          );

          final cityName = cityNameResult.fold(
                (failure) => '', // Use empty string if getting city name fails
                (name) => name,
          );

          // Cache the result
          await _localDatasource.cacheWeather(weatherModel);

          // Convert to domain entity and return
          return Right(weatherModel.toDomain(
            cityName: cityName,
            latitude: latitude,
            longitude: longitude,
          ));
        } on ApiException catch (e) {
          // If API fails, try to get from cache
          return await _getCachedWeatherWithFailure(
            NetworkFailure(e.message),
          );
        }
      } else {
        // If no internet connection, get from cache
        return await _getCachedWeatherWithFailure(
          Failure.network('No internet connection'),
        );
      }
    } catch (e) {
      // For any other exception, try to get from cache
      return await _getCachedWeatherWithFailure(
        Failure.unknown(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, Forecast>> getForecast({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
    List<String>? exclude,
  }) async {
    try {
      // Check internet connectivity
      final isConnected = await _connectivityService.isConnected();

      if (isConnected) {
        try {
          // Try to get data from remote source
          final forecastModel = await _remoteDatasource.getForecast(
            latitude: latitude,
            longitude: longitude,
            units: units,
            language: language,
            exclude: exclude,
          );

          // Get city name from coordinates
          final cityNameResult = await _locationService.getCityNameFromCoordinates(
            latitude,
            longitude,
          );

          final cityName = cityNameResult.fold(
                (failure) => '', // Use empty string if getting city name fails
                (name) => name,
          );

          // Cache the result
          await _localDatasource.cacheForecast(forecastModel);

          // Convert to domain entity and return
          return Right(forecastModel.toDomain(cityName: cityName));
        } on ApiException catch (e) {
          // If API fails, try to get from cache
          return await _getCachedForecastWithFailure(
            Failure.network(e.message),
          );
        }
      } else {
        // If no internet connection, get from cache
        return await _getCachedForecastWithFailure(
          Failure.network('No internet connection'),
        );
      }
    } catch (e) {
      // For any other exception, try to get from cache
      return await _getCachedForecastWithFailure(
        Failure.unknown(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, Weather>> getLastCachedWeather() async {
    return await _getCachedWeatherWithFailure(null);
  }

  @override
  Future<Either<Failure, Forecast>> getLastCachedForecast() async {
    return await _getCachedForecastWithFailure(null);
  }

  @override
  Future<void> saveLocation({
    required double latitude,
    required double longitude,
    required String cityName,
  }) async {
    await _localDatasource.saveLocation(
      latitude: latitude,
      longitude: longitude,
      cityName: cityName,
    );
  }

  @override
  Future<Either<Failure, ({double latitude, double longitude, String? cityName})>>
  getLastLocation() async {
    try {
      final location = await _localDatasource.getLastLocation();
      return Right(location);
    } on CacheException catch (e) {
      return Left(Failure.cache(e.message));
    } catch (e) {
      return Left(Failure.unknown(e.toString()));
    }
  }

  // Helper method to get cached weather with a specific failure
  Future<Either<Failure, Weather>> _getCachedWeatherWithFailure(
      Failure? failure,
      ) async {
    try {
      final weatherModel = await _localDatasource.getCachedWeather();
      final lastLocation = await _localDatasource.getLastLocation();

      return Right(weatherModel.toDomain(
        cityName: lastLocation.cityName ?? '',
        latitude: lastLocation.latitude,
        longitude: lastLocation.longitude,
      ));
    } on CacheException catch (e) {
      // If there's a passed failure, return it, otherwise return cache failure
      return Left(failure ?? Failure.cache(e.message));
    } catch (e) {
      return Left(failure ?? Failure.unknown(e.toString()));
    }
  }

  // Helper method to get cached forecast with a specific failure
  Future<Either<Failure, Forecast>> _getCachedForecastWithFailure(
      Failure? failure,
      ) async {
    try {
      final forecastModel = await _localDatasource.getCachedForecast();
      final lastLocation = await _localDatasource.getLastLocation();

      return Right(forecastModel.toDomain(
        cityName: lastLocation.cityName ?? '',
      ));
    } on CacheException catch (e) {
      // If there's a passed failure, return it, otherwise return cache failure
      return Left(failure ?? Failure.cache(e.message));
    } catch (e) {
      return Left(failure ?? Failure.unknown(e.toString()));
    }
  }
}