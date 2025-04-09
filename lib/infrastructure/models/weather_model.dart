import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/weather.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
abstract class WeatherModel with _$WeatherModel {
  const WeatherModel._();

  const factory WeatherModel({
    required double? temp,
    @JsonKey(name: 'feels_like') required double? feelsLike,
    @JsonKey(name: 'temp_min') required double? tempMin,
    @JsonKey(name: 'temp_max') required double? tempMax,
    required int? pressure,
    required int? humidity,
    @JsonKey(name: 'wind_speed') required double? windSpeed,
    @JsonKey(name: 'wind_deg') required int? windDeg,
    required int? clouds,
    @JsonKey(name: 'weather') required List<WeatherConditionModel> conditions,
    @JsonKey(name: 'dt') required int timestamp,
    String? name,
    double? lat,
    double? lon,
    String? units,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Weather toDomain({
    String cityName = '',
    double latitude = 0,
    double longitude = 0,
  }) {
    return Weather(
      temperature: temp ?? 0.0,
      feelsLike: feelsLike ?? 0.0,
      tempMin: tempMin ?? 0.0,
      tempMax: tempMax ?? 0.0,
      pressure: pressure ?? 0,
      humidity: humidity ?? 0,
      windSpeed: windSpeed ?? 0.0,
      windDegree: windDeg ?? 0,
      clouds: clouds ?? 0,
      main: conditions.isNotEmpty ? conditions.first.main : '',
      description: conditions.isNotEmpty ? conditions.first.description : '',
      icon: conditions.isNotEmpty ? conditions.first.icon : '',
      dateTime: DateTime.fromMillisecondsSinceEpoch(timestamp * 1000),
      cityName: name ?? cityName,
      latitude: lat ?? latitude,
      longitude: lon ?? longitude,
      units: units,
    );
  }
}

@freezed
abstract class WeatherConditionModel with _$WeatherConditionModel {
  const factory WeatherConditionModel({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherConditionModel;

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionModelFromJson(json);
}
