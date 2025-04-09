// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherModel _$WeatherModelFromJson(
  Map<String, dynamic> json,
) => _WeatherModel(
  temp: (json['temp'] as num?)?.toDouble(),
  feelsLike: (json['feels_like'] as num?)?.toDouble(),
  tempMin: (json['temp_min'] as num?)?.toDouble(),
  tempMax: (json['temp_max'] as num?)?.toDouble(),
  pressure: (json['pressure'] as num?)?.toInt(),
  humidity: (json['humidity'] as num?)?.toInt(),
  windSpeed: (json['wind_speed'] as num?)?.toDouble(),
  windDeg: (json['wind_deg'] as num?)?.toInt(),
  clouds: (json['clouds'] as num?)?.toInt(),
  conditions:
      (json['weather'] as List<dynamic>)
          .map((e) => WeatherConditionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  timestamp: (json['dt'] as num).toInt(),
  name: json['name'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lon: (json['lon'] as num?)?.toDouble(),
  units: json['units'] as String?,
);

Map<String, dynamic> _$WeatherModelToJson(_WeatherModel instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'clouds': instance.clouds,
      'weather': instance.conditions,
      'dt': instance.timestamp,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'units': instance.units,
    };

_WeatherConditionModel _$WeatherConditionModelFromJson(
  Map<String, dynamic> json,
) => _WeatherConditionModel(
  id: (json['id'] as num).toInt(),
  main: json['main'] as String,
  description: json['description'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$WeatherConditionModelToJson(
  _WeatherConditionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'main': instance.main,
  'description': instance.description,
  'icon': instance.icon,
};
