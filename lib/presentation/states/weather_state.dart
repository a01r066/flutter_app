import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather.dart';
import '../../domain/entities/forecast.dart';

part 'weather_state.freezed.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const WeatherState._();

  const factory WeatherState({
    // Current weather data
    Weather? currentWeather,

    // Forecast data
    Forecast? forecast,

    // Loading status
    @Default(false) bool isLoading,

    // Error message
    String? errorMessage,

    // Cache indicator
    @Default(false) bool isFromCache,

    // Last update time
    DateTime? lastUpdated,

    // Selected units (metric/imperial)
    @Default('metric') String units,
  }) = _WeatherState;

  factory WeatherState.initial() => const WeatherState(
    isLoading: false,
    isFromCache: false,
    units: 'metric',
  );

  factory WeatherState.loading() => const WeatherState(
    isLoading: true,
    isFromCache: false,
    units: 'metric',
  );

  factory WeatherState.error(String message) => WeatherState(
    isLoading: false,
    errorMessage: message,
    isFromCache: false,
    units: 'metric',
  );

  factory WeatherState.success({
    required Weather currentWeather,
    Forecast? forecast,
    bool isFromCache = false,
    String units = 'metric',
  }) => WeatherState(
    currentWeather: currentWeather,
    forecast: forecast,
    isLoading: false,
    isFromCache: isFromCache,
    lastUpdated: DateTime.now(),
    units: units,
  );
}