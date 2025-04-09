import 'package:freezed_annotation/freezed_annotation.dart';
import 'weather.dart';

part 'forecast.freezed.dart';

@freezed
abstract class Forecast with _$Forecast {
  const Forecast._();

  const factory Forecast({
    required Weather current,
    required List<HourlyForecast> hourly,
    required List<DailyForecast> daily,
    required List<Alert>? alerts,
  }) = _Forecast;
}

@freezed
abstract class HourlyForecast with _$HourlyForecast {
  const HourlyForecast._();

  const factory HourlyForecast({
    required DateTime dateTime,
    required double temperature,
    required double feelsLike,
    required int pressure,
    required int humidity,
    required double windSpeed,
    required int windDegree,
    required int clouds,
    required double pop, // Probability of precipitation
    required String main,
    required String description,
    required String icon,
  }) = _HourlyForecast;
}

@freezed
abstract class DailyForecast with _$DailyForecast {
  const DailyForecast._();
  const factory DailyForecast({
    required DateTime dateTime,
    required Temperature temperature,
    required Temperature feelsLike,
    required int pressure,
    required int humidity,
    required double windSpeed,
    required int windDegree,
    required int clouds,
    required double pop, // Probability of precipitation
    required double rain,
    required double uvi, // UV Index
    required String main,
    required String description,
    required String icon,
    required DateTime sunrise,
    required DateTime sunset,
  }) = _DailyForecast;
}

@freezed
abstract class Temperature with _$Temperature {
  const Temperature._();

  const factory Temperature({
    required double day,
    required double night,
    required double evening,
    required double morning,
    required double min,
    required double max,
  }) = _Temperature;
}

@freezed
abstract class Alert with _$Alert {
  const Alert._();
  const factory Alert({
    required String senderName,
    required String event,
    required DateTime start,
    required DateTime end,
    required String description,
    required List<String> tags,
  }) = _Alert;
}