// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastModel _$ForecastModelFromJson(
  Map<String, dynamic> json,
) => _ForecastModel(
  current: CurrentWeatherModel.fromJson(
    json['current'] as Map<String, dynamic>,
  ),
  hourly:
      (json['hourly'] as List<dynamic>)
          .map((e) => HourlyForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  daily:
      (json['daily'] as List<dynamic>)
          .map((e) => DailyForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  alerts:
      (json['alerts'] as List<dynamic>?)
          ?.map((e) => AlertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  lat: (json['lat'] as num?)?.toDouble(),
  lon: (json['lon'] as num?)?.toDouble(),
  timezone: json['timezone'] as String?,
  timezoneOffset: (json['timezone_offset'] as num?)?.toInt(),
);

Map<String, dynamic> _$ForecastModelToJson(_ForecastModel instance) =>
    <String, dynamic>{
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
      'alerts': instance.alerts,
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
    };

_CurrentWeatherModel _$CurrentWeatherModelFromJson(
  Map<String, dynamic> json,
) => _CurrentWeatherModel(
  timestamp: (json['dt'] as num).toInt(),
  temp: (json['temp'] as num?)?.toDouble(),
  feelsLike: (json['feels_like'] as num?)?.toDouble(),
  pressure: (json['pressure'] as num?)?.toInt(),
  humidity: (json['humidity'] as num?)?.toInt(),
  dewPoint: (json['dew_point'] as num?)?.toDouble(),
  clouds: (json['clouds'] as num?)?.toInt(),
  uvi: (json['uvi'] as num?)?.toDouble(),
  visibility: (json['visibility'] as num?)?.toInt(),
  windSpeed: (json['wind_speed'] as num?)?.toDouble(),
  windDeg: (json['wind_deg'] as num?)?.toInt(),
  conditions:
      (json['weather'] as List<dynamic>)
          .map((e) => WeatherConditionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  rain: (json['rain'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  snow: (json['snow'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
);

Map<String, dynamic> _$CurrentWeatherModelToJson(
  _CurrentWeatherModel instance,
) => <String, dynamic>{
  'dt': instance.timestamp,
  'temp': instance.temp,
  'feels_like': instance.feelsLike,
  'pressure': instance.pressure,
  'humidity': instance.humidity,
  'dew_point': instance.dewPoint,
  'clouds': instance.clouds,
  'uvi': instance.uvi,
  'visibility': instance.visibility,
  'wind_speed': instance.windSpeed,
  'wind_deg': instance.windDeg,
  'weather': instance.conditions,
  'rain': instance.rain,
  'snow': instance.snow,
};

_HourlyForecastModel _$HourlyForecastModelFromJson(
  Map<String, dynamic> json,
) => _HourlyForecastModel(
  timestamp: (json['dt'] as num).toInt(),
  temp: (json['temp'] as num?)?.toDouble(),
  feelsLike: (json['feels_like'] as num?)?.toDouble(),
  pressure: (json['pressure'] as num?)?.toInt(),
  humidity: (json['humidity'] as num?)?.toInt(),
  dewPoint: (json['dew_point'] as num?)?.toDouble(),
  clouds: (json['clouds'] as num?)?.toInt(),
  uvi: (json['uvi'] as num?)?.toDouble(),
  visibility: (json['visibility'] as num?)?.toInt(),
  windSpeed: (json['wind_speed'] as num?)?.toDouble(),
  windDeg: (json['wind_deg'] as num?)?.toInt(),
  precipitation: (json['pop'] as num?)?.toDouble(),
  conditions:
      (json['weather'] as List<dynamic>)
          .map((e) => WeatherConditionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  rain: (json['rain'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  snow: (json['snow'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
);

Map<String, dynamic> _$HourlyForecastModelToJson(
  _HourlyForecastModel instance,
) => <String, dynamic>{
  'dt': instance.timestamp,
  'temp': instance.temp,
  'feels_like': instance.feelsLike,
  'pressure': instance.pressure,
  'humidity': instance.humidity,
  'dew_point': instance.dewPoint,
  'clouds': instance.clouds,
  'uvi': instance.uvi,
  'visibility': instance.visibility,
  'wind_speed': instance.windSpeed,
  'wind_deg': instance.windDeg,
  'pop': instance.precipitation,
  'weather': instance.conditions,
  'rain': instance.rain,
  'snow': instance.snow,
};

_DailyForecastModel _$DailyForecastModelFromJson(
  Map<String, dynamic> json,
) => _DailyForecastModel(
  timestamp: (json['dt'] as num).toInt(),
  sunriseTimestamp: (json['sunrise'] as num).toInt(),
  sunsetTimestamp: (json['sunset'] as num).toInt(),
  moonriseTimestamp: (json['moonrise'] as num).toInt(),
  moonsetTimestamp: (json['moonset'] as num).toInt(),
  temperature: TemperatureModel.fromJson(json['temp'] as Map<String, dynamic>),
  feelsLike: FeelsLikeModel.fromJson(
    json['feels_like'] as Map<String, dynamic>,
  ),
  pressure: (json['pressure'] as num?)?.toInt(),
  humidity: (json['humidity'] as num?)?.toInt(),
  dewPoint: (json['dew_point'] as num?)?.toDouble(),
  windSpeed: (json['wind_speed'] as num?)?.toDouble(),
  windDeg: (json['wind_deg'] as num?)?.toInt(),
  conditions:
      (json['weather'] as List<dynamic>)
          .map((e) => WeatherConditionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  clouds: (json['clouds'] as num?)?.toInt(),
  precipitation: (json['pop'] as num?)?.toDouble(),
  uvi: (json['uvi'] as num?)?.toDouble(),
  rain: (json['rain'] as num?)?.toDouble(),
  snow: (json['snow'] as num?)?.toDouble(),
);

Map<String, dynamic> _$DailyForecastModelToJson(_DailyForecastModel instance) =>
    <String, dynamic>{
      'dt': instance.timestamp,
      'sunrise': instance.sunriseTimestamp,
      'sunset': instance.sunsetTimestamp,
      'moonrise': instance.moonriseTimestamp,
      'moonset': instance.moonsetTimestamp,
      'temp': instance.temperature,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'weather': instance.conditions,
      'clouds': instance.clouds,
      'pop': instance.precipitation,
      'uvi': instance.uvi,
      'rain': instance.rain,
      'snow': instance.snow,
    };

_TemperatureModel _$TemperatureModelFromJson(Map<String, dynamic> json) =>
    _TemperatureModel(
      day: (json['day'] as num).toDouble(),
      night: (json['night'] as num).toDouble(),
      eve: (json['eve'] as num).toDouble(),
      morn: (json['morn'] as num).toDouble(),
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
    );

Map<String, dynamic> _$TemperatureModelToJson(_TemperatureModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
      'min': instance.min,
      'max': instance.max,
    };

_FeelsLikeModel _$FeelsLikeModelFromJson(Map<String, dynamic> json) =>
    _FeelsLikeModel(
      day: (json['day'] as num).toDouble(),
      night: (json['night'] as num).toDouble(),
      eve: (json['eve'] as num).toDouble(),
      morn: (json['morn'] as num).toDouble(),
    );

Map<String, dynamic> _$FeelsLikeModelToJson(_FeelsLikeModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

_AlertModel _$AlertModelFromJson(Map<String, dynamic> json) => _AlertModel(
  senderName: json['sender_name'] as String,
  event: json['event'] as String,
  startTimestamp: (json['start'] as num).toInt(),
  endTimestamp: (json['end'] as num).toInt(),
  description: json['description'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$AlertModelToJson(_AlertModel instance) =>
    <String, dynamic>{
      'sender_name': instance.senderName,
      'event': instance.event,
      'start': instance.startTimestamp,
      'end': instance.endTimestamp,
      'description': instance.description,
      'tags': instance.tags,
    };
