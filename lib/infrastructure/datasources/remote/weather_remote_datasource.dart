import '../../../core/api/api_client.dart';
import '../../../core/api/api_exceptions.dart';
import '../../../core/constants/api_constants.dart';
import '../../models/forecast_model.dart';
import '../../models/weather_model.dart';

abstract class WeatherRemoteDatasource {
  Future<WeatherModel> getCurrentWeather({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
  });

  Future<ForecastModel> getForecast({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
    List<String>? exclude,
  });
}

class WeatherRemoteDatasourceImpl implements WeatherRemoteDatasource {
  final ApiClient _apiClient;

  WeatherRemoteDatasourceImpl(this._apiClient);

  @override
  Future<WeatherModel> getCurrentWeather({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
  }) async {
    try {
      // To get current weather only from OneCall API, we'll use the onecall endpoint
      // but exclude everything except current
      final exclude = ['minutely', 'hourly', 'daily', 'alerts'];

      final queryParameters = {
        ApiConstants.latitude: latitude.toString(),
        ApiConstants.longitude: longitude.toString(),
        ApiConstants.units: units ?? ApiConstants.metric,
        ApiConstants.exclude: exclude.join(','),
      };

      if (language != null) {
        queryParameters[ApiConstants.language] = language;
      }

      final response = await _apiClient.get(
        ApiConstants.onecall,
        queryParameters: queryParameters,
      );

      if (response.data == null) {
        throw ServerException('Weather data is null');
      }

      try {
        // Extract current weather data from the onecall response
        final currentData = response.data['current'];

        if (currentData == null) {
          throw ServerException('Current weather data is null');
        }

        // Add lat and lon to the current data
        currentData['lat'] = latitude;
        currentData['lon'] = longitude;

        // Parse the current weather data
        final weatherModel = WeatherModel.fromJson(currentData);
        return weatherModel;
      } catch (e) {
        throw ServerException('Failed to parse weather data: $e');
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ServerException('Failed to get current weather: $e');
    }
  }

  @override
  Future<ForecastModel> getForecast({
    required double latitude,
    required double longitude,
    String? units,
    String? language,
    List<String>? exclude,
  }) async {
    try {
      final queryParameters = {
        ApiConstants.latitude: latitude.toString(),
        ApiConstants.longitude: longitude.toString(),
        ApiConstants.units: units ?? ApiConstants.metric,
      };

      if (language != null) {
        queryParameters[ApiConstants.language] = language;
      }

      if (exclude != null && exclude.isNotEmpty) {
        queryParameters[ApiConstants.exclude] = exclude.join(',');
      }

      final response = await _apiClient.get(
        ApiConstants.onecall,
        queryParameters: queryParameters,
      );

      if (response.data == null) {
        throw ServerException('Forecast data is null');
      }

      // Parse the full onecall response
      final forecastModel = ForecastModel.fromJson(response.data);
      return forecastModel;
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ServerException('Failed to get forecast: $e');
    }
  }
}
