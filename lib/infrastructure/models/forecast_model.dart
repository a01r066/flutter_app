import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/forecast.dart';
import '../../domain/entities/weather.dart';
import 'weather_model.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
abstract class ForecastModel with _$ForecastModel {
  const ForecastModel._();

  const factory ForecastModel({
    required CurrentWeatherModel current,
    required List<HourlyForecastModel> hourly,
    required List<DailyForecastModel> daily,
    List<AlertModel>? alerts,
    double? lat,
    double? lon,
    String? timezone,
    @JsonKey(name: 'timezone_offset') int? timezoneOffset,
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);

  Forecast toDomain({String cityName = ''}) {
    return Forecast(
      current: current.toDomain(
        cityName: cityName,
        latitude: lat ?? 0,
        longitude: lon ?? 0,
      ),
      hourly: hourly.map((h) => h.toDomain()).toList(),
      daily: daily.map((d) => d.toDomain()).toList(),
      alerts: alerts?.map((a) => a.toDomain()).toList(),
    );
  }
}

@freezed
abstract class CurrentWeatherModel with _$CurrentWeatherModel {
  const CurrentWeatherModel._();

  const factory CurrentWeatherModel({
    @JsonKey(name: 'dt') required int timestamp,
    required double? temp,
    @JsonKey(name: 'feels_like') required double? feelsLike,
    required int? pressure,
    required int? humidity,
    @JsonKey(name: 'dew_point') required double? dewPoint,
    required int? clouds,
    required double? uvi,
    required int? visibility,
    @JsonKey(name: 'wind_speed') required double? windSpeed,
    @JsonKey(name: 'wind_deg') required int? windDeg,
    @JsonKey(name: 'weather') required List<WeatherConditionModel> conditions,
    @JsonKey(name: 'rain') Map<String, double>? rain,
    @JsonKey(name: 'snow') Map<String, double>? snow,
  }) = _CurrentWeatherModel;

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);

  Weather toDomain({
    String cityName = '',
    double latitude = 0,
    double longitude = 0,
    String? units,
  }) {
    return Weather(
      temperature: temp ?? 0.0,
      feelsLike: feelsLike ?? 0.0,
      tempMin: temp ?? 0.0,
      // Current weather doesn't have min/max
      tempMax: temp ?? 0.0,
      // Current weather doesn't have min/max
      pressure: pressure ?? 0,
      humidity: humidity ?? 0,
      windSpeed: windSpeed ?? 0.0,
      windDegree: windDeg ?? 0,
      clouds: clouds ?? 0,
      main: conditions.isNotEmpty ? conditions.first.main : '',
      description: conditions.isNotEmpty ? conditions.first.description : '',
      icon: conditions.isNotEmpty ? conditions.first.icon : '',
      dateTime: DateTime.fromMillisecondsSinceEpoch(timestamp * 1000),
      cityName: cityName,
      latitude: latitude,
      longitude: longitude,
      units: units,
    );
  }
}

@freezed
abstract class HourlyForecastModel with _$HourlyForecastModel {
  const HourlyForecastModel._();

  const factory HourlyForecastModel({
    @JsonKey(name: 'dt') required int timestamp,
    required double? temp,
    @JsonKey(name: 'feels_like') required double? feelsLike,
    required int? pressure,
    required int? humidity,
    @JsonKey(name: 'dew_point') required double? dewPoint,
    required int? clouds,
    required double? uvi,
    required int? visibility,
    @JsonKey(name: 'wind_speed') required double? windSpeed,
    @JsonKey(name: 'wind_deg') required int? windDeg,
    @JsonKey(name: 'pop') required double? precipitation,
    @JsonKey(name: 'weather') required List<WeatherConditionModel> conditions,
    @JsonKey(name: 'rain') Map<String, double>? rain,
    @JsonKey(name: 'snow') Map<String, double>? snow,
  }) = _HourlyForecastModel;

  factory HourlyForecastModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyForecastModelFromJson(json);

  HourlyForecast toDomain() {
    return HourlyForecast(
      dateTime: DateTime.fromMillisecondsSinceEpoch(timestamp * 1000),
      temperature: temp ?? 0.0,
      feelsLike: feelsLike ?? 0.0,
      pressure: pressure ?? 0,
      humidity: humidity ?? 0,
      windSpeed: windSpeed ?? 0.0,
      windDegree: windDeg ?? 0,
      clouds: clouds ?? 0,
      pop: precipitation ?? 0.0,
      main: conditions.isNotEmpty ? conditions.first.main : '',
      description: conditions.isNotEmpty ? conditions.first.description : '',
      icon: conditions.isNotEmpty ? conditions.first.icon : '',
    );
  }
}

@freezed
abstract class DailyForecastModel with _$DailyForecastModel {
  const DailyForecastModel._();

  const factory DailyForecastModel({
    @JsonKey(name: 'dt') required int timestamp,
    @JsonKey(name: 'sunrise') required int sunriseTimestamp,
    @JsonKey(name: 'sunset') required int sunsetTimestamp,
    @JsonKey(name: 'moonrise') required int moonriseTimestamp,
    @JsonKey(name: 'moonset') required int moonsetTimestamp,
    @JsonKey(name: 'temp') required TemperatureModel temperature,
    @JsonKey(name: 'feels_like') required FeelsLikeModel feelsLike,
    required int? pressure,
    required int? humidity,
    @JsonKey(name: 'dew_point') required double? dewPoint,
    @JsonKey(name: 'wind_speed') required double? windSpeed,
    @JsonKey(name: 'wind_deg') required int? windDeg,
    @JsonKey(name: 'weather') required List<WeatherConditionModel> conditions,
    required int? clouds,
    @JsonKey(name: 'pop') required double? precipitation,
    required double? uvi,
    double? rain,
    double? snow,
  }) = _DailyForecastModel;

  factory DailyForecastModel.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastModelFromJson(json);

  DailyForecast toDomain() {
    return DailyForecast(
      dateTime: DateTime.fromMillisecondsSinceEpoch(timestamp * 1000),
      temperature: temperature.toDomain(),
      feelsLike: feelsLike.toDomain(),
      pressure: pressure ?? 0,
      humidity: humidity ?? 0,
      windSpeed: windSpeed ?? 0.0,
      windDegree: windDeg ?? 0,
      clouds: clouds ?? 0,
      pop: precipitation ?? 0.0,
      rain: rain ?? 0.0,
      uvi: uvi ?? 0.0,
      main: conditions.isNotEmpty ? conditions.first.main : '',
      description: conditions.isNotEmpty ? conditions.first.description : '',
      icon: conditions.isNotEmpty ? conditions.first.icon : '',
      sunrise: DateTime.fromMillisecondsSinceEpoch(sunriseTimestamp * 1000),
      sunset: DateTime.fromMillisecondsSinceEpoch(sunsetTimestamp * 1000),
    );
  }
}

@freezed
abstract class TemperatureModel with _$TemperatureModel {
  const TemperatureModel._();

  const factory TemperatureModel({
    required double day,
    required double night,
    required double eve,
    required double morn,
    required double min,
    required double max,
  }) = _TemperatureModel;

  factory TemperatureModel.fromJson(Map<String, dynamic> json) =>
      _$TemperatureModelFromJson(json);

  Temperature toDomain() {
    return Temperature(
      day: day,
      night: night,
      evening: eve,
      morning: morn,
      min: min,
      max: max,
    );
  }
}

@freezed
abstract class FeelsLikeModel with _$FeelsLikeModel {
  const FeelsLikeModel._();

  const factory FeelsLikeModel({
    required double day,
    required double night,
    required double eve,
    required double morn,
  }) = _FeelsLikeModel;

  factory FeelsLikeModel.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeModelFromJson(json);

  Temperature toDomain() {
    return Temperature(
      day: day,
      night: night,
      evening: eve,
      morning: morn,
      min: day,
      // FeelsLike doesn't have min/max
      max: day, // Using day value as default
    );
  }
}

@freezed
abstract class AlertModel with _$AlertModel {
  const AlertModel._();

  const factory AlertModel({
    @JsonKey(name: 'sender_name') required String senderName,
    required String event,
    @JsonKey(name: 'start') required int startTimestamp,
    @JsonKey(name: 'end') required int endTimestamp,
    required String description,
    required List<String> tags,
  }) = _AlertModel;

  factory AlertModel.fromJson(Map<String, dynamic> json) =>
      _$AlertModelFromJson(json);

  Alert toDomain() {
    return Alert(
      senderName: senderName,
      event: event,
      start: DateTime.fromMillisecondsSinceEpoch(startTimestamp * 1000),
      end: DateTime.fromMillisecondsSinceEpoch(endTimestamp * 1000),
      description: description,
      tags: tags,
    );
  }
}
