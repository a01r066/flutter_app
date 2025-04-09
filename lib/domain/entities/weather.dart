import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
abstract class Weather with _$Weather {
  const Weather._();

  const factory Weather({
    required double temperature,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
    required int pressure,
    required int humidity,
    required double windSpeed,
    required int windDegree,
    required int clouds,
    required String main,
    required String description,
    required String icon,
    required DateTime dateTime,
    required String cityName,
    required double latitude,
    required double longitude,
    String? units,
  }) = _Weather;
}