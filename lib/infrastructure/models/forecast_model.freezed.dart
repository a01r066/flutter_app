// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastModel {

 CurrentWeatherModel get current; List<HourlyForecastModel> get hourly; List<DailyForecastModel> get daily; List<AlertModel>? get alerts; double? get lat; double? get lon; String? get timezone;@JsonKey(name: 'timezone_offset') int? get timezoneOffset;
/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastModelCopyWith<ForecastModel> get copyWith => _$ForecastModelCopyWithImpl<ForecastModel>(this as ForecastModel, _$identity);

  /// Serializes this ForecastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastModel&&(identical(other.current, current) || other.current == current)&&const DeepCollectionEquality().equals(other.hourly, hourly)&&const DeepCollectionEquality().equals(other.daily, daily)&&const DeepCollectionEquality().equals(other.alerts, alerts)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.timezoneOffset, timezoneOffset) || other.timezoneOffset == timezoneOffset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,const DeepCollectionEquality().hash(hourly),const DeepCollectionEquality().hash(daily),const DeepCollectionEquality().hash(alerts),lat,lon,timezone,timezoneOffset);

@override
String toString() {
  return 'ForecastModel(current: $current, hourly: $hourly, daily: $daily, alerts: $alerts, lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset)';
}


}

/// @nodoc
abstract mixin class $ForecastModelCopyWith<$Res>  {
  factory $ForecastModelCopyWith(ForecastModel value, $Res Function(ForecastModel) _then) = _$ForecastModelCopyWithImpl;
@useResult
$Res call({
 CurrentWeatherModel current, List<HourlyForecastModel> hourly, List<DailyForecastModel> daily, List<AlertModel>? alerts, double? lat, double? lon, String? timezone,@JsonKey(name: 'timezone_offset') int? timezoneOffset
});


$CurrentWeatherModelCopyWith<$Res> get current;

}
/// @nodoc
class _$ForecastModelCopyWithImpl<$Res>
    implements $ForecastModelCopyWith<$Res> {
  _$ForecastModelCopyWithImpl(this._self, this._then);

  final ForecastModel _self;
  final $Res Function(ForecastModel) _then;

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? hourly = null,Object? daily = null,Object? alerts = freezed,Object? lat = freezed,Object? lon = freezed,Object? timezone = freezed,Object? timezoneOffset = freezed,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as CurrentWeatherModel,hourly: null == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as List<HourlyForecastModel>,daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as List<DailyForecastModel>,alerts: freezed == alerts ? _self.alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<AlertModel>?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,timezoneOffset: freezed == timezoneOffset ? _self.timezoneOffset : timezoneOffset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWeatherModelCopyWith<$Res> get current {
  
  return $CurrentWeatherModelCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ForecastModel extends ForecastModel {
  const _ForecastModel({required this.current, required final  List<HourlyForecastModel> hourly, required final  List<DailyForecastModel> daily, final  List<AlertModel>? alerts, this.lat, this.lon, this.timezone, @JsonKey(name: 'timezone_offset') this.timezoneOffset}): _hourly = hourly,_daily = daily,_alerts = alerts,super._();
  factory _ForecastModel.fromJson(Map<String, dynamic> json) => _$ForecastModelFromJson(json);

@override final  CurrentWeatherModel current;
 final  List<HourlyForecastModel> _hourly;
@override List<HourlyForecastModel> get hourly {
  if (_hourly is EqualUnmodifiableListView) return _hourly;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hourly);
}

 final  List<DailyForecastModel> _daily;
@override List<DailyForecastModel> get daily {
  if (_daily is EqualUnmodifiableListView) return _daily;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_daily);
}

 final  List<AlertModel>? _alerts;
@override List<AlertModel>? get alerts {
  final value = _alerts;
  if (value == null) return null;
  if (_alerts is EqualUnmodifiableListView) return _alerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? lat;
@override final  double? lon;
@override final  String? timezone;
@override@JsonKey(name: 'timezone_offset') final  int? timezoneOffset;

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastModelCopyWith<_ForecastModel> get copyWith => __$ForecastModelCopyWithImpl<_ForecastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastModel&&(identical(other.current, current) || other.current == current)&&const DeepCollectionEquality().equals(other._hourly, _hourly)&&const DeepCollectionEquality().equals(other._daily, _daily)&&const DeepCollectionEquality().equals(other._alerts, _alerts)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.timezoneOffset, timezoneOffset) || other.timezoneOffset == timezoneOffset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,const DeepCollectionEquality().hash(_hourly),const DeepCollectionEquality().hash(_daily),const DeepCollectionEquality().hash(_alerts),lat,lon,timezone,timezoneOffset);

@override
String toString() {
  return 'ForecastModel(current: $current, hourly: $hourly, daily: $daily, alerts: $alerts, lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset)';
}


}

/// @nodoc
abstract mixin class _$ForecastModelCopyWith<$Res> implements $ForecastModelCopyWith<$Res> {
  factory _$ForecastModelCopyWith(_ForecastModel value, $Res Function(_ForecastModel) _then) = __$ForecastModelCopyWithImpl;
@override @useResult
$Res call({
 CurrentWeatherModel current, List<HourlyForecastModel> hourly, List<DailyForecastModel> daily, List<AlertModel>? alerts, double? lat, double? lon, String? timezone,@JsonKey(name: 'timezone_offset') int? timezoneOffset
});


@override $CurrentWeatherModelCopyWith<$Res> get current;

}
/// @nodoc
class __$ForecastModelCopyWithImpl<$Res>
    implements _$ForecastModelCopyWith<$Res> {
  __$ForecastModelCopyWithImpl(this._self, this._then);

  final _ForecastModel _self;
  final $Res Function(_ForecastModel) _then;

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? hourly = null,Object? daily = null,Object? alerts = freezed,Object? lat = freezed,Object? lon = freezed,Object? timezone = freezed,Object? timezoneOffset = freezed,}) {
  return _then(_ForecastModel(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as CurrentWeatherModel,hourly: null == hourly ? _self._hourly : hourly // ignore: cast_nullable_to_non_nullable
as List<HourlyForecastModel>,daily: null == daily ? _self._daily : daily // ignore: cast_nullable_to_non_nullable
as List<DailyForecastModel>,alerts: freezed == alerts ? _self._alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<AlertModel>?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,timezoneOffset: freezed == timezoneOffset ? _self.timezoneOffset : timezoneOffset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWeatherModelCopyWith<$Res> get current {
  
  return $CurrentWeatherModelCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// @nodoc
mixin _$CurrentWeatherModel {

@JsonKey(name: 'dt') int get timestamp; double? get temp;@JsonKey(name: 'feels_like') double? get feelsLike; int? get pressure; int? get humidity;@JsonKey(name: 'dew_point') double? get dewPoint; int? get clouds; double? get uvi; int? get visibility;@JsonKey(name: 'wind_speed') double? get windSpeed;@JsonKey(name: 'wind_deg') int? get windDeg;@JsonKey(name: 'weather') List<WeatherConditionModel> get conditions;@JsonKey(name: 'rain') Map<String, double>? get rain;@JsonKey(name: 'snow') Map<String, double>? get snow;
/// Create a copy of CurrentWeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWeatherModelCopyWith<CurrentWeatherModel> get copyWith => _$CurrentWeatherModelCopyWithImpl<CurrentWeatherModel>(this as CurrentWeatherModel, _$identity);

  /// Serializes this CurrentWeatherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWeatherModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.dewPoint, dewPoint) || other.dewPoint == dewPoint)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.uvi, uvi) || other.uvi == uvi)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDeg, windDeg) || other.windDeg == windDeg)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&const DeepCollectionEquality().equals(other.rain, rain)&&const DeepCollectionEquality().equals(other.snow, snow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,temp,feelsLike,pressure,humidity,dewPoint,clouds,uvi,visibility,windSpeed,windDeg,const DeepCollectionEquality().hash(conditions),const DeepCollectionEquality().hash(rain),const DeepCollectionEquality().hash(snow));

@override
String toString() {
  return 'CurrentWeatherModel(timestamp: $timestamp, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, clouds: $clouds, uvi: $uvi, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, conditions: $conditions, rain: $rain, snow: $snow)';
}


}

/// @nodoc
abstract mixin class $CurrentWeatherModelCopyWith<$Res>  {
  factory $CurrentWeatherModelCopyWith(CurrentWeatherModel value, $Res Function(CurrentWeatherModel) _then) = _$CurrentWeatherModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dt') int timestamp, double? temp,@JsonKey(name: 'feels_like') double? feelsLike, int? pressure, int? humidity,@JsonKey(name: 'dew_point') double? dewPoint, int? clouds, double? uvi, int? visibility,@JsonKey(name: 'wind_speed') double? windSpeed,@JsonKey(name: 'wind_deg') int? windDeg,@JsonKey(name: 'weather') List<WeatherConditionModel> conditions,@JsonKey(name: 'rain') Map<String, double>? rain,@JsonKey(name: 'snow') Map<String, double>? snow
});




}
/// @nodoc
class _$CurrentWeatherModelCopyWithImpl<$Res>
    implements $CurrentWeatherModelCopyWith<$Res> {
  _$CurrentWeatherModelCopyWithImpl(this._self, this._then);

  final CurrentWeatherModel _self;
  final $Res Function(CurrentWeatherModel) _then;

/// Create a copy of CurrentWeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? temp = freezed,Object? feelsLike = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? dewPoint = freezed,Object? clouds = freezed,Object? uvi = freezed,Object? visibility = freezed,Object? windSpeed = freezed,Object? windDeg = freezed,Object? conditions = null,Object? rain = freezed,Object? snow = freezed,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,dewPoint: freezed == dewPoint ? _self.dewPoint : dewPoint // ignore: cast_nullable_to_non_nullable
as double?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int?,uvi: freezed == uvi ? _self.uvi : uvi // ignore: cast_nullable_to_non_nullable
as double?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int?,windSpeed: freezed == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double?,windDeg: freezed == windDeg ? _self.windDeg : windDeg // ignore: cast_nullable_to_non_nullable
as int?,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<WeatherConditionModel>,rain: freezed == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,snow: freezed == snow ? _self.snow : snow // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CurrentWeatherModel extends CurrentWeatherModel {
  const _CurrentWeatherModel({@JsonKey(name: 'dt') required this.timestamp, required this.temp, @JsonKey(name: 'feels_like') required this.feelsLike, required this.pressure, required this.humidity, @JsonKey(name: 'dew_point') required this.dewPoint, required this.clouds, required this.uvi, required this.visibility, @JsonKey(name: 'wind_speed') required this.windSpeed, @JsonKey(name: 'wind_deg') required this.windDeg, @JsonKey(name: 'weather') required final  List<WeatherConditionModel> conditions, @JsonKey(name: 'rain') final  Map<String, double>? rain, @JsonKey(name: 'snow') final  Map<String, double>? snow}): _conditions = conditions,_rain = rain,_snow = snow,super._();
  factory _CurrentWeatherModel.fromJson(Map<String, dynamic> json) => _$CurrentWeatherModelFromJson(json);

@override@JsonKey(name: 'dt') final  int timestamp;
@override final  double? temp;
@override@JsonKey(name: 'feels_like') final  double? feelsLike;
@override final  int? pressure;
@override final  int? humidity;
@override@JsonKey(name: 'dew_point') final  double? dewPoint;
@override final  int? clouds;
@override final  double? uvi;
@override final  int? visibility;
@override@JsonKey(name: 'wind_speed') final  double? windSpeed;
@override@JsonKey(name: 'wind_deg') final  int? windDeg;
 final  List<WeatherConditionModel> _conditions;
@override@JsonKey(name: 'weather') List<WeatherConditionModel> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

 final  Map<String, double>? _rain;
@override@JsonKey(name: 'rain') Map<String, double>? get rain {
  final value = _rain;
  if (value == null) return null;
  if (_rain is EqualUnmodifiableMapView) return _rain;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, double>? _snow;
@override@JsonKey(name: 'snow') Map<String, double>? get snow {
  final value = _snow;
  if (value == null) return null;
  if (_snow is EqualUnmodifiableMapView) return _snow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CurrentWeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentWeatherModelCopyWith<_CurrentWeatherModel> get copyWith => __$CurrentWeatherModelCopyWithImpl<_CurrentWeatherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentWeatherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWeatherModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.dewPoint, dewPoint) || other.dewPoint == dewPoint)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.uvi, uvi) || other.uvi == uvi)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDeg, windDeg) || other.windDeg == windDeg)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&const DeepCollectionEquality().equals(other._rain, _rain)&&const DeepCollectionEquality().equals(other._snow, _snow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,temp,feelsLike,pressure,humidity,dewPoint,clouds,uvi,visibility,windSpeed,windDeg,const DeepCollectionEquality().hash(_conditions),const DeepCollectionEquality().hash(_rain),const DeepCollectionEquality().hash(_snow));

@override
String toString() {
  return 'CurrentWeatherModel(timestamp: $timestamp, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, clouds: $clouds, uvi: $uvi, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, conditions: $conditions, rain: $rain, snow: $snow)';
}


}

/// @nodoc
abstract mixin class _$CurrentWeatherModelCopyWith<$Res> implements $CurrentWeatherModelCopyWith<$Res> {
  factory _$CurrentWeatherModelCopyWith(_CurrentWeatherModel value, $Res Function(_CurrentWeatherModel) _then) = __$CurrentWeatherModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dt') int timestamp, double? temp,@JsonKey(name: 'feels_like') double? feelsLike, int? pressure, int? humidity,@JsonKey(name: 'dew_point') double? dewPoint, int? clouds, double? uvi, int? visibility,@JsonKey(name: 'wind_speed') double? windSpeed,@JsonKey(name: 'wind_deg') int? windDeg,@JsonKey(name: 'weather') List<WeatherConditionModel> conditions,@JsonKey(name: 'rain') Map<String, double>? rain,@JsonKey(name: 'snow') Map<String, double>? snow
});




}
/// @nodoc
class __$CurrentWeatherModelCopyWithImpl<$Res>
    implements _$CurrentWeatherModelCopyWith<$Res> {
  __$CurrentWeatherModelCopyWithImpl(this._self, this._then);

  final _CurrentWeatherModel _self;
  final $Res Function(_CurrentWeatherModel) _then;

/// Create a copy of CurrentWeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? temp = freezed,Object? feelsLike = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? dewPoint = freezed,Object? clouds = freezed,Object? uvi = freezed,Object? visibility = freezed,Object? windSpeed = freezed,Object? windDeg = freezed,Object? conditions = null,Object? rain = freezed,Object? snow = freezed,}) {
  return _then(_CurrentWeatherModel(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,dewPoint: freezed == dewPoint ? _self.dewPoint : dewPoint // ignore: cast_nullable_to_non_nullable
as double?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int?,uvi: freezed == uvi ? _self.uvi : uvi // ignore: cast_nullable_to_non_nullable
as double?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int?,windSpeed: freezed == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double?,windDeg: freezed == windDeg ? _self.windDeg : windDeg // ignore: cast_nullable_to_non_nullable
as int?,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<WeatherConditionModel>,rain: freezed == rain ? _self._rain : rain // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,snow: freezed == snow ? _self._snow : snow // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,
  ));
}


}


/// @nodoc
mixin _$HourlyForecastModel {

@JsonKey(name: 'dt') int get timestamp; double? get temp;@JsonKey(name: 'feels_like') double? get feelsLike; int? get pressure; int? get humidity;@JsonKey(name: 'dew_point') double? get dewPoint; int? get clouds; double? get uvi; int? get visibility;@JsonKey(name: 'wind_speed') double? get windSpeed;@JsonKey(name: 'wind_deg') int? get windDeg;@JsonKey(name: 'pop') double? get precipitation;@JsonKey(name: 'weather') List<WeatherConditionModel> get conditions;@JsonKey(name: 'rain') Map<String, double>? get rain;@JsonKey(name: 'snow') Map<String, double>? get snow;
/// Create a copy of HourlyForecastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyForecastModelCopyWith<HourlyForecastModel> get copyWith => _$HourlyForecastModelCopyWithImpl<HourlyForecastModel>(this as HourlyForecastModel, _$identity);

  /// Serializes this HourlyForecastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyForecastModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.dewPoint, dewPoint) || other.dewPoint == dewPoint)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.uvi, uvi) || other.uvi == uvi)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDeg, windDeg) || other.windDeg == windDeg)&&(identical(other.precipitation, precipitation) || other.precipitation == precipitation)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&const DeepCollectionEquality().equals(other.rain, rain)&&const DeepCollectionEquality().equals(other.snow, snow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,temp,feelsLike,pressure,humidity,dewPoint,clouds,uvi,visibility,windSpeed,windDeg,precipitation,const DeepCollectionEquality().hash(conditions),const DeepCollectionEquality().hash(rain),const DeepCollectionEquality().hash(snow));

@override
String toString() {
  return 'HourlyForecastModel(timestamp: $timestamp, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, clouds: $clouds, uvi: $uvi, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, precipitation: $precipitation, conditions: $conditions, rain: $rain, snow: $snow)';
}


}

/// @nodoc
abstract mixin class $HourlyForecastModelCopyWith<$Res>  {
  factory $HourlyForecastModelCopyWith(HourlyForecastModel value, $Res Function(HourlyForecastModel) _then) = _$HourlyForecastModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dt') int timestamp, double? temp,@JsonKey(name: 'feels_like') double? feelsLike, int? pressure, int? humidity,@JsonKey(name: 'dew_point') double? dewPoint, int? clouds, double? uvi, int? visibility,@JsonKey(name: 'wind_speed') double? windSpeed,@JsonKey(name: 'wind_deg') int? windDeg,@JsonKey(name: 'pop') double? precipitation,@JsonKey(name: 'weather') List<WeatherConditionModel> conditions,@JsonKey(name: 'rain') Map<String, double>? rain,@JsonKey(name: 'snow') Map<String, double>? snow
});




}
/// @nodoc
class _$HourlyForecastModelCopyWithImpl<$Res>
    implements $HourlyForecastModelCopyWith<$Res> {
  _$HourlyForecastModelCopyWithImpl(this._self, this._then);

  final HourlyForecastModel _self;
  final $Res Function(HourlyForecastModel) _then;

/// Create a copy of HourlyForecastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? temp = freezed,Object? feelsLike = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? dewPoint = freezed,Object? clouds = freezed,Object? uvi = freezed,Object? visibility = freezed,Object? windSpeed = freezed,Object? windDeg = freezed,Object? precipitation = freezed,Object? conditions = null,Object? rain = freezed,Object? snow = freezed,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,dewPoint: freezed == dewPoint ? _self.dewPoint : dewPoint // ignore: cast_nullable_to_non_nullable
as double?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int?,uvi: freezed == uvi ? _self.uvi : uvi // ignore: cast_nullable_to_non_nullable
as double?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int?,windSpeed: freezed == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double?,windDeg: freezed == windDeg ? _self.windDeg : windDeg // ignore: cast_nullable_to_non_nullable
as int?,precipitation: freezed == precipitation ? _self.precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as double?,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<WeatherConditionModel>,rain: freezed == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,snow: freezed == snow ? _self.snow : snow // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _HourlyForecastModel extends HourlyForecastModel {
  const _HourlyForecastModel({@JsonKey(name: 'dt') required this.timestamp, required this.temp, @JsonKey(name: 'feels_like') required this.feelsLike, required this.pressure, required this.humidity, @JsonKey(name: 'dew_point') required this.dewPoint, required this.clouds, required this.uvi, required this.visibility, @JsonKey(name: 'wind_speed') required this.windSpeed, @JsonKey(name: 'wind_deg') required this.windDeg, @JsonKey(name: 'pop') required this.precipitation, @JsonKey(name: 'weather') required final  List<WeatherConditionModel> conditions, @JsonKey(name: 'rain') final  Map<String, double>? rain, @JsonKey(name: 'snow') final  Map<String, double>? snow}): _conditions = conditions,_rain = rain,_snow = snow,super._();
  factory _HourlyForecastModel.fromJson(Map<String, dynamic> json) => _$HourlyForecastModelFromJson(json);

@override@JsonKey(name: 'dt') final  int timestamp;
@override final  double? temp;
@override@JsonKey(name: 'feels_like') final  double? feelsLike;
@override final  int? pressure;
@override final  int? humidity;
@override@JsonKey(name: 'dew_point') final  double? dewPoint;
@override final  int? clouds;
@override final  double? uvi;
@override final  int? visibility;
@override@JsonKey(name: 'wind_speed') final  double? windSpeed;
@override@JsonKey(name: 'wind_deg') final  int? windDeg;
@override@JsonKey(name: 'pop') final  double? precipitation;
 final  List<WeatherConditionModel> _conditions;
@override@JsonKey(name: 'weather') List<WeatherConditionModel> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

 final  Map<String, double>? _rain;
@override@JsonKey(name: 'rain') Map<String, double>? get rain {
  final value = _rain;
  if (value == null) return null;
  if (_rain is EqualUnmodifiableMapView) return _rain;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, double>? _snow;
@override@JsonKey(name: 'snow') Map<String, double>? get snow {
  final value = _snow;
  if (value == null) return null;
  if (_snow is EqualUnmodifiableMapView) return _snow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of HourlyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyForecastModelCopyWith<_HourlyForecastModel> get copyWith => __$HourlyForecastModelCopyWithImpl<_HourlyForecastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HourlyForecastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyForecastModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.dewPoint, dewPoint) || other.dewPoint == dewPoint)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.uvi, uvi) || other.uvi == uvi)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDeg, windDeg) || other.windDeg == windDeg)&&(identical(other.precipitation, precipitation) || other.precipitation == precipitation)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&const DeepCollectionEquality().equals(other._rain, _rain)&&const DeepCollectionEquality().equals(other._snow, _snow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,temp,feelsLike,pressure,humidity,dewPoint,clouds,uvi,visibility,windSpeed,windDeg,precipitation,const DeepCollectionEquality().hash(_conditions),const DeepCollectionEquality().hash(_rain),const DeepCollectionEquality().hash(_snow));

@override
String toString() {
  return 'HourlyForecastModel(timestamp: $timestamp, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, clouds: $clouds, uvi: $uvi, visibility: $visibility, windSpeed: $windSpeed, windDeg: $windDeg, precipitation: $precipitation, conditions: $conditions, rain: $rain, snow: $snow)';
}


}

/// @nodoc
abstract mixin class _$HourlyForecastModelCopyWith<$Res> implements $HourlyForecastModelCopyWith<$Res> {
  factory _$HourlyForecastModelCopyWith(_HourlyForecastModel value, $Res Function(_HourlyForecastModel) _then) = __$HourlyForecastModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dt') int timestamp, double? temp,@JsonKey(name: 'feels_like') double? feelsLike, int? pressure, int? humidity,@JsonKey(name: 'dew_point') double? dewPoint, int? clouds, double? uvi, int? visibility,@JsonKey(name: 'wind_speed') double? windSpeed,@JsonKey(name: 'wind_deg') int? windDeg,@JsonKey(name: 'pop') double? precipitation,@JsonKey(name: 'weather') List<WeatherConditionModel> conditions,@JsonKey(name: 'rain') Map<String, double>? rain,@JsonKey(name: 'snow') Map<String, double>? snow
});




}
/// @nodoc
class __$HourlyForecastModelCopyWithImpl<$Res>
    implements _$HourlyForecastModelCopyWith<$Res> {
  __$HourlyForecastModelCopyWithImpl(this._self, this._then);

  final _HourlyForecastModel _self;
  final $Res Function(_HourlyForecastModel) _then;

/// Create a copy of HourlyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? temp = freezed,Object? feelsLike = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? dewPoint = freezed,Object? clouds = freezed,Object? uvi = freezed,Object? visibility = freezed,Object? windSpeed = freezed,Object? windDeg = freezed,Object? precipitation = freezed,Object? conditions = null,Object? rain = freezed,Object? snow = freezed,}) {
  return _then(_HourlyForecastModel(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,dewPoint: freezed == dewPoint ? _self.dewPoint : dewPoint // ignore: cast_nullable_to_non_nullable
as double?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int?,uvi: freezed == uvi ? _self.uvi : uvi // ignore: cast_nullable_to_non_nullable
as double?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as int?,windSpeed: freezed == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double?,windDeg: freezed == windDeg ? _self.windDeg : windDeg // ignore: cast_nullable_to_non_nullable
as int?,precipitation: freezed == precipitation ? _self.precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as double?,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<WeatherConditionModel>,rain: freezed == rain ? _self._rain : rain // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,snow: freezed == snow ? _self._snow : snow // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,
  ));
}


}


/// @nodoc
mixin _$DailyForecastModel {

@JsonKey(name: 'dt') int get timestamp;@JsonKey(name: 'sunrise') int get sunriseTimestamp;@JsonKey(name: 'sunset') int get sunsetTimestamp;@JsonKey(name: 'moonrise') int get moonriseTimestamp;@JsonKey(name: 'moonset') int get moonsetTimestamp;@JsonKey(name: 'temp') TemperatureModel get temperature;@JsonKey(name: 'feels_like') FeelsLikeModel get feelsLike; int? get pressure; int? get humidity;@JsonKey(name: 'dew_point') double? get dewPoint;@JsonKey(name: 'wind_speed') double? get windSpeed;@JsonKey(name: 'wind_deg') int? get windDeg;@JsonKey(name: 'weather') List<WeatherConditionModel> get conditions; int? get clouds;@JsonKey(name: 'pop') double? get precipitation; double? get uvi; double? get rain; double? get snow;
/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyForecastModelCopyWith<DailyForecastModel> get copyWith => _$DailyForecastModelCopyWithImpl<DailyForecastModel>(this as DailyForecastModel, _$identity);

  /// Serializes this DailyForecastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyForecastModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.sunriseTimestamp, sunriseTimestamp) || other.sunriseTimestamp == sunriseTimestamp)&&(identical(other.sunsetTimestamp, sunsetTimestamp) || other.sunsetTimestamp == sunsetTimestamp)&&(identical(other.moonriseTimestamp, moonriseTimestamp) || other.moonriseTimestamp == moonriseTimestamp)&&(identical(other.moonsetTimestamp, moonsetTimestamp) || other.moonsetTimestamp == moonsetTimestamp)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.dewPoint, dewPoint) || other.dewPoint == dewPoint)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDeg, windDeg) || other.windDeg == windDeg)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.precipitation, precipitation) || other.precipitation == precipitation)&&(identical(other.uvi, uvi) || other.uvi == uvi)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.snow, snow) || other.snow == snow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,sunriseTimestamp,sunsetTimestamp,moonriseTimestamp,moonsetTimestamp,temperature,feelsLike,pressure,humidity,dewPoint,windSpeed,windDeg,const DeepCollectionEquality().hash(conditions),clouds,precipitation,uvi,rain,snow);

@override
String toString() {
  return 'DailyForecastModel(timestamp: $timestamp, sunriseTimestamp: $sunriseTimestamp, sunsetTimestamp: $sunsetTimestamp, moonriseTimestamp: $moonriseTimestamp, moonsetTimestamp: $moonsetTimestamp, temperature: $temperature, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, windDeg: $windDeg, conditions: $conditions, clouds: $clouds, precipitation: $precipitation, uvi: $uvi, rain: $rain, snow: $snow)';
}


}

/// @nodoc
abstract mixin class $DailyForecastModelCopyWith<$Res>  {
  factory $DailyForecastModelCopyWith(DailyForecastModel value, $Res Function(DailyForecastModel) _then) = _$DailyForecastModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'dt') int timestamp,@JsonKey(name: 'sunrise') int sunriseTimestamp,@JsonKey(name: 'sunset') int sunsetTimestamp,@JsonKey(name: 'moonrise') int moonriseTimestamp,@JsonKey(name: 'moonset') int moonsetTimestamp,@JsonKey(name: 'temp') TemperatureModel temperature,@JsonKey(name: 'feels_like') FeelsLikeModel feelsLike, int? pressure, int? humidity,@JsonKey(name: 'dew_point') double? dewPoint,@JsonKey(name: 'wind_speed') double? windSpeed,@JsonKey(name: 'wind_deg') int? windDeg,@JsonKey(name: 'weather') List<WeatherConditionModel> conditions, int? clouds,@JsonKey(name: 'pop') double? precipitation, double? uvi, double? rain, double? snow
});


$TemperatureModelCopyWith<$Res> get temperature;$FeelsLikeModelCopyWith<$Res> get feelsLike;

}
/// @nodoc
class _$DailyForecastModelCopyWithImpl<$Res>
    implements $DailyForecastModelCopyWith<$Res> {
  _$DailyForecastModelCopyWithImpl(this._self, this._then);

  final DailyForecastModel _self;
  final $Res Function(DailyForecastModel) _then;

/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? sunriseTimestamp = null,Object? sunsetTimestamp = null,Object? moonriseTimestamp = null,Object? moonsetTimestamp = null,Object? temperature = null,Object? feelsLike = null,Object? pressure = freezed,Object? humidity = freezed,Object? dewPoint = freezed,Object? windSpeed = freezed,Object? windDeg = freezed,Object? conditions = null,Object? clouds = freezed,Object? precipitation = freezed,Object? uvi = freezed,Object? rain = freezed,Object? snow = freezed,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,sunriseTimestamp: null == sunriseTimestamp ? _self.sunriseTimestamp : sunriseTimestamp // ignore: cast_nullable_to_non_nullable
as int,sunsetTimestamp: null == sunsetTimestamp ? _self.sunsetTimestamp : sunsetTimestamp // ignore: cast_nullable_to_non_nullable
as int,moonriseTimestamp: null == moonriseTimestamp ? _self.moonriseTimestamp : moonriseTimestamp // ignore: cast_nullable_to_non_nullable
as int,moonsetTimestamp: null == moonsetTimestamp ? _self.moonsetTimestamp : moonsetTimestamp // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as TemperatureModel,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as FeelsLikeModel,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,dewPoint: freezed == dewPoint ? _self.dewPoint : dewPoint // ignore: cast_nullable_to_non_nullable
as double?,windSpeed: freezed == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double?,windDeg: freezed == windDeg ? _self.windDeg : windDeg // ignore: cast_nullable_to_non_nullable
as int?,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<WeatherConditionModel>,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int?,precipitation: freezed == precipitation ? _self.precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as double?,uvi: freezed == uvi ? _self.uvi : uvi // ignore: cast_nullable_to_non_nullable
as double?,rain: freezed == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double?,snow: freezed == snow ? _self.snow : snow // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemperatureModelCopyWith<$Res> get temperature {
  
  return $TemperatureModelCopyWith<$Res>(_self.temperature, (value) {
    return _then(_self.copyWith(temperature: value));
  });
}/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeelsLikeModelCopyWith<$Res> get feelsLike {
  
  return $FeelsLikeModelCopyWith<$Res>(_self.feelsLike, (value) {
    return _then(_self.copyWith(feelsLike: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _DailyForecastModel extends DailyForecastModel {
  const _DailyForecastModel({@JsonKey(name: 'dt') required this.timestamp, @JsonKey(name: 'sunrise') required this.sunriseTimestamp, @JsonKey(name: 'sunset') required this.sunsetTimestamp, @JsonKey(name: 'moonrise') required this.moonriseTimestamp, @JsonKey(name: 'moonset') required this.moonsetTimestamp, @JsonKey(name: 'temp') required this.temperature, @JsonKey(name: 'feels_like') required this.feelsLike, required this.pressure, required this.humidity, @JsonKey(name: 'dew_point') required this.dewPoint, @JsonKey(name: 'wind_speed') required this.windSpeed, @JsonKey(name: 'wind_deg') required this.windDeg, @JsonKey(name: 'weather') required final  List<WeatherConditionModel> conditions, required this.clouds, @JsonKey(name: 'pop') required this.precipitation, required this.uvi, this.rain, this.snow}): _conditions = conditions,super._();
  factory _DailyForecastModel.fromJson(Map<String, dynamic> json) => _$DailyForecastModelFromJson(json);

@override@JsonKey(name: 'dt') final  int timestamp;
@override@JsonKey(name: 'sunrise') final  int sunriseTimestamp;
@override@JsonKey(name: 'sunset') final  int sunsetTimestamp;
@override@JsonKey(name: 'moonrise') final  int moonriseTimestamp;
@override@JsonKey(name: 'moonset') final  int moonsetTimestamp;
@override@JsonKey(name: 'temp') final  TemperatureModel temperature;
@override@JsonKey(name: 'feels_like') final  FeelsLikeModel feelsLike;
@override final  int? pressure;
@override final  int? humidity;
@override@JsonKey(name: 'dew_point') final  double? dewPoint;
@override@JsonKey(name: 'wind_speed') final  double? windSpeed;
@override@JsonKey(name: 'wind_deg') final  int? windDeg;
 final  List<WeatherConditionModel> _conditions;
@override@JsonKey(name: 'weather') List<WeatherConditionModel> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

@override final  int? clouds;
@override@JsonKey(name: 'pop') final  double? precipitation;
@override final  double? uvi;
@override final  double? rain;
@override final  double? snow;

/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyForecastModelCopyWith<_DailyForecastModel> get copyWith => __$DailyForecastModelCopyWithImpl<_DailyForecastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyForecastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyForecastModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.sunriseTimestamp, sunriseTimestamp) || other.sunriseTimestamp == sunriseTimestamp)&&(identical(other.sunsetTimestamp, sunsetTimestamp) || other.sunsetTimestamp == sunsetTimestamp)&&(identical(other.moonriseTimestamp, moonriseTimestamp) || other.moonriseTimestamp == moonriseTimestamp)&&(identical(other.moonsetTimestamp, moonsetTimestamp) || other.moonsetTimestamp == moonsetTimestamp)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.dewPoint, dewPoint) || other.dewPoint == dewPoint)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDeg, windDeg) || other.windDeg == windDeg)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.precipitation, precipitation) || other.precipitation == precipitation)&&(identical(other.uvi, uvi) || other.uvi == uvi)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.snow, snow) || other.snow == snow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,sunriseTimestamp,sunsetTimestamp,moonriseTimestamp,moonsetTimestamp,temperature,feelsLike,pressure,humidity,dewPoint,windSpeed,windDeg,const DeepCollectionEquality().hash(_conditions),clouds,precipitation,uvi,rain,snow);

@override
String toString() {
  return 'DailyForecastModel(timestamp: $timestamp, sunriseTimestamp: $sunriseTimestamp, sunsetTimestamp: $sunsetTimestamp, moonriseTimestamp: $moonriseTimestamp, moonsetTimestamp: $moonsetTimestamp, temperature: $temperature, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, windDeg: $windDeg, conditions: $conditions, clouds: $clouds, precipitation: $precipitation, uvi: $uvi, rain: $rain, snow: $snow)';
}


}

/// @nodoc
abstract mixin class _$DailyForecastModelCopyWith<$Res> implements $DailyForecastModelCopyWith<$Res> {
  factory _$DailyForecastModelCopyWith(_DailyForecastModel value, $Res Function(_DailyForecastModel) _then) = __$DailyForecastModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'dt') int timestamp,@JsonKey(name: 'sunrise') int sunriseTimestamp,@JsonKey(name: 'sunset') int sunsetTimestamp,@JsonKey(name: 'moonrise') int moonriseTimestamp,@JsonKey(name: 'moonset') int moonsetTimestamp,@JsonKey(name: 'temp') TemperatureModel temperature,@JsonKey(name: 'feels_like') FeelsLikeModel feelsLike, int? pressure, int? humidity,@JsonKey(name: 'dew_point') double? dewPoint,@JsonKey(name: 'wind_speed') double? windSpeed,@JsonKey(name: 'wind_deg') int? windDeg,@JsonKey(name: 'weather') List<WeatherConditionModel> conditions, int? clouds,@JsonKey(name: 'pop') double? precipitation, double? uvi, double? rain, double? snow
});


@override $TemperatureModelCopyWith<$Res> get temperature;@override $FeelsLikeModelCopyWith<$Res> get feelsLike;

}
/// @nodoc
class __$DailyForecastModelCopyWithImpl<$Res>
    implements _$DailyForecastModelCopyWith<$Res> {
  __$DailyForecastModelCopyWithImpl(this._self, this._then);

  final _DailyForecastModel _self;
  final $Res Function(_DailyForecastModel) _then;

/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? sunriseTimestamp = null,Object? sunsetTimestamp = null,Object? moonriseTimestamp = null,Object? moonsetTimestamp = null,Object? temperature = null,Object? feelsLike = null,Object? pressure = freezed,Object? humidity = freezed,Object? dewPoint = freezed,Object? windSpeed = freezed,Object? windDeg = freezed,Object? conditions = null,Object? clouds = freezed,Object? precipitation = freezed,Object? uvi = freezed,Object? rain = freezed,Object? snow = freezed,}) {
  return _then(_DailyForecastModel(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,sunriseTimestamp: null == sunriseTimestamp ? _self.sunriseTimestamp : sunriseTimestamp // ignore: cast_nullable_to_non_nullable
as int,sunsetTimestamp: null == sunsetTimestamp ? _self.sunsetTimestamp : sunsetTimestamp // ignore: cast_nullable_to_non_nullable
as int,moonriseTimestamp: null == moonriseTimestamp ? _self.moonriseTimestamp : moonriseTimestamp // ignore: cast_nullable_to_non_nullable
as int,moonsetTimestamp: null == moonsetTimestamp ? _self.moonsetTimestamp : moonsetTimestamp // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as TemperatureModel,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as FeelsLikeModel,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,dewPoint: freezed == dewPoint ? _self.dewPoint : dewPoint // ignore: cast_nullable_to_non_nullable
as double?,windSpeed: freezed == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double?,windDeg: freezed == windDeg ? _self.windDeg : windDeg // ignore: cast_nullable_to_non_nullable
as int?,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<WeatherConditionModel>,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int?,precipitation: freezed == precipitation ? _self.precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as double?,uvi: freezed == uvi ? _self.uvi : uvi // ignore: cast_nullable_to_non_nullable
as double?,rain: freezed == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double?,snow: freezed == snow ? _self.snow : snow // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemperatureModelCopyWith<$Res> get temperature {
  
  return $TemperatureModelCopyWith<$Res>(_self.temperature, (value) {
    return _then(_self.copyWith(temperature: value));
  });
}/// Create a copy of DailyForecastModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeelsLikeModelCopyWith<$Res> get feelsLike {
  
  return $FeelsLikeModelCopyWith<$Res>(_self.feelsLike, (value) {
    return _then(_self.copyWith(feelsLike: value));
  });
}
}


/// @nodoc
mixin _$TemperatureModel {

 double get day; double get night; double get eve; double get morn; double get min; double get max;
/// Create a copy of TemperatureModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemperatureModelCopyWith<TemperatureModel> get copyWith => _$TemperatureModelCopyWithImpl<TemperatureModel>(this as TemperatureModel, _$identity);

  /// Serializes this TemperatureModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemperatureModel&&(identical(other.day, day) || other.day == day)&&(identical(other.night, night) || other.night == night)&&(identical(other.eve, eve) || other.eve == eve)&&(identical(other.morn, morn) || other.morn == morn)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,night,eve,morn,min,max);

@override
String toString() {
  return 'TemperatureModel(day: $day, night: $night, eve: $eve, morn: $morn, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $TemperatureModelCopyWith<$Res>  {
  factory $TemperatureModelCopyWith(TemperatureModel value, $Res Function(TemperatureModel) _then) = _$TemperatureModelCopyWithImpl;
@useResult
$Res call({
 double day, double night, double eve, double morn, double min, double max
});




}
/// @nodoc
class _$TemperatureModelCopyWithImpl<$Res>
    implements $TemperatureModelCopyWith<$Res> {
  _$TemperatureModelCopyWithImpl(this._self, this._then);

  final TemperatureModel _self;
  final $Res Function(TemperatureModel) _then;

/// Create a copy of TemperatureModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? night = null,Object? eve = null,Object? morn = null,Object? min = null,Object? max = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as double,night: null == night ? _self.night : night // ignore: cast_nullable_to_non_nullable
as double,eve: null == eve ? _self.eve : eve // ignore: cast_nullable_to_non_nullable
as double,morn: null == morn ? _self.morn : morn // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TemperatureModel extends TemperatureModel {
  const _TemperatureModel({required this.day, required this.night, required this.eve, required this.morn, required this.min, required this.max}): super._();
  factory _TemperatureModel.fromJson(Map<String, dynamic> json) => _$TemperatureModelFromJson(json);

@override final  double day;
@override final  double night;
@override final  double eve;
@override final  double morn;
@override final  double min;
@override final  double max;

/// Create a copy of TemperatureModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemperatureModelCopyWith<_TemperatureModel> get copyWith => __$TemperatureModelCopyWithImpl<_TemperatureModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemperatureModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemperatureModel&&(identical(other.day, day) || other.day == day)&&(identical(other.night, night) || other.night == night)&&(identical(other.eve, eve) || other.eve == eve)&&(identical(other.morn, morn) || other.morn == morn)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,night,eve,morn,min,max);

@override
String toString() {
  return 'TemperatureModel(day: $day, night: $night, eve: $eve, morn: $morn, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$TemperatureModelCopyWith<$Res> implements $TemperatureModelCopyWith<$Res> {
  factory _$TemperatureModelCopyWith(_TemperatureModel value, $Res Function(_TemperatureModel) _then) = __$TemperatureModelCopyWithImpl;
@override @useResult
$Res call({
 double day, double night, double eve, double morn, double min, double max
});




}
/// @nodoc
class __$TemperatureModelCopyWithImpl<$Res>
    implements _$TemperatureModelCopyWith<$Res> {
  __$TemperatureModelCopyWithImpl(this._self, this._then);

  final _TemperatureModel _self;
  final $Res Function(_TemperatureModel) _then;

/// Create a copy of TemperatureModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? night = null,Object? eve = null,Object? morn = null,Object? min = null,Object? max = null,}) {
  return _then(_TemperatureModel(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as double,night: null == night ? _self.night : night // ignore: cast_nullable_to_non_nullable
as double,eve: null == eve ? _self.eve : eve // ignore: cast_nullable_to_non_nullable
as double,morn: null == morn ? _self.morn : morn // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$FeelsLikeModel {

 double get day; double get night; double get eve; double get morn;
/// Create a copy of FeelsLikeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeelsLikeModelCopyWith<FeelsLikeModel> get copyWith => _$FeelsLikeModelCopyWithImpl<FeelsLikeModel>(this as FeelsLikeModel, _$identity);

  /// Serializes this FeelsLikeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeelsLikeModel&&(identical(other.day, day) || other.day == day)&&(identical(other.night, night) || other.night == night)&&(identical(other.eve, eve) || other.eve == eve)&&(identical(other.morn, morn) || other.morn == morn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,night,eve,morn);

@override
String toString() {
  return 'FeelsLikeModel(day: $day, night: $night, eve: $eve, morn: $morn)';
}


}

/// @nodoc
abstract mixin class $FeelsLikeModelCopyWith<$Res>  {
  factory $FeelsLikeModelCopyWith(FeelsLikeModel value, $Res Function(FeelsLikeModel) _then) = _$FeelsLikeModelCopyWithImpl;
@useResult
$Res call({
 double day, double night, double eve, double morn
});




}
/// @nodoc
class _$FeelsLikeModelCopyWithImpl<$Res>
    implements $FeelsLikeModelCopyWith<$Res> {
  _$FeelsLikeModelCopyWithImpl(this._self, this._then);

  final FeelsLikeModel _self;
  final $Res Function(FeelsLikeModel) _then;

/// Create a copy of FeelsLikeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? night = null,Object? eve = null,Object? morn = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as double,night: null == night ? _self.night : night // ignore: cast_nullable_to_non_nullable
as double,eve: null == eve ? _self.eve : eve // ignore: cast_nullable_to_non_nullable
as double,morn: null == morn ? _self.morn : morn // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FeelsLikeModel extends FeelsLikeModel {
  const _FeelsLikeModel({required this.day, required this.night, required this.eve, required this.morn}): super._();
  factory _FeelsLikeModel.fromJson(Map<String, dynamic> json) => _$FeelsLikeModelFromJson(json);

@override final  double day;
@override final  double night;
@override final  double eve;
@override final  double morn;

/// Create a copy of FeelsLikeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeelsLikeModelCopyWith<_FeelsLikeModel> get copyWith => __$FeelsLikeModelCopyWithImpl<_FeelsLikeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeelsLikeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeelsLikeModel&&(identical(other.day, day) || other.day == day)&&(identical(other.night, night) || other.night == night)&&(identical(other.eve, eve) || other.eve == eve)&&(identical(other.morn, morn) || other.morn == morn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,night,eve,morn);

@override
String toString() {
  return 'FeelsLikeModel(day: $day, night: $night, eve: $eve, morn: $morn)';
}


}

/// @nodoc
abstract mixin class _$FeelsLikeModelCopyWith<$Res> implements $FeelsLikeModelCopyWith<$Res> {
  factory _$FeelsLikeModelCopyWith(_FeelsLikeModel value, $Res Function(_FeelsLikeModel) _then) = __$FeelsLikeModelCopyWithImpl;
@override @useResult
$Res call({
 double day, double night, double eve, double morn
});




}
/// @nodoc
class __$FeelsLikeModelCopyWithImpl<$Res>
    implements _$FeelsLikeModelCopyWith<$Res> {
  __$FeelsLikeModelCopyWithImpl(this._self, this._then);

  final _FeelsLikeModel _self;
  final $Res Function(_FeelsLikeModel) _then;

/// Create a copy of FeelsLikeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? night = null,Object? eve = null,Object? morn = null,}) {
  return _then(_FeelsLikeModel(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as double,night: null == night ? _self.night : night // ignore: cast_nullable_to_non_nullable
as double,eve: null == eve ? _self.eve : eve // ignore: cast_nullable_to_non_nullable
as double,morn: null == morn ? _self.morn : morn // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AlertModel {

@JsonKey(name: 'sender_name') String get senderName; String get event;@JsonKey(name: 'start') int get startTimestamp;@JsonKey(name: 'end') int get endTimestamp; String get description; List<String> get tags;
/// Create a copy of AlertModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertModelCopyWith<AlertModel> get copyWith => _$AlertModelCopyWithImpl<AlertModel>(this as AlertModel, _$identity);

  /// Serializes this AlertModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertModel&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.event, event) || other.event == event)&&(identical(other.startTimestamp, startTimestamp) || other.startTimestamp == startTimestamp)&&(identical(other.endTimestamp, endTimestamp) || other.endTimestamp == endTimestamp)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderName,event,startTimestamp,endTimestamp,description,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'AlertModel(senderName: $senderName, event: $event, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $AlertModelCopyWith<$Res>  {
  factory $AlertModelCopyWith(AlertModel value, $Res Function(AlertModel) _then) = _$AlertModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sender_name') String senderName, String event,@JsonKey(name: 'start') int startTimestamp,@JsonKey(name: 'end') int endTimestamp, String description, List<String> tags
});




}
/// @nodoc
class _$AlertModelCopyWithImpl<$Res>
    implements $AlertModelCopyWith<$Res> {
  _$AlertModelCopyWithImpl(this._self, this._then);

  final AlertModel _self;
  final $Res Function(AlertModel) _then;

/// Create a copy of AlertModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderName = null,Object? event = null,Object? startTimestamp = null,Object? endTimestamp = null,Object? description = null,Object? tags = null,}) {
  return _then(_self.copyWith(
senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,startTimestamp: null == startTimestamp ? _self.startTimestamp : startTimestamp // ignore: cast_nullable_to_non_nullable
as int,endTimestamp: null == endTimestamp ? _self.endTimestamp : endTimestamp // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AlertModel extends AlertModel {
  const _AlertModel({@JsonKey(name: 'sender_name') required this.senderName, required this.event, @JsonKey(name: 'start') required this.startTimestamp, @JsonKey(name: 'end') required this.endTimestamp, required this.description, required final  List<String> tags}): _tags = tags,super._();
  factory _AlertModel.fromJson(Map<String, dynamic> json) => _$AlertModelFromJson(json);

@override@JsonKey(name: 'sender_name') final  String senderName;
@override final  String event;
@override@JsonKey(name: 'start') final  int startTimestamp;
@override@JsonKey(name: 'end') final  int endTimestamp;
@override final  String description;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of AlertModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertModelCopyWith<_AlertModel> get copyWith => __$AlertModelCopyWithImpl<_AlertModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlertModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertModel&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.event, event) || other.event == event)&&(identical(other.startTimestamp, startTimestamp) || other.startTimestamp == startTimestamp)&&(identical(other.endTimestamp, endTimestamp) || other.endTimestamp == endTimestamp)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,senderName,event,startTimestamp,endTimestamp,description,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'AlertModel(senderName: $senderName, event: $event, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$AlertModelCopyWith<$Res> implements $AlertModelCopyWith<$Res> {
  factory _$AlertModelCopyWith(_AlertModel value, $Res Function(_AlertModel) _then) = __$AlertModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sender_name') String senderName, String event,@JsonKey(name: 'start') int startTimestamp,@JsonKey(name: 'end') int endTimestamp, String description, List<String> tags
});




}
/// @nodoc
class __$AlertModelCopyWithImpl<$Res>
    implements _$AlertModelCopyWith<$Res> {
  __$AlertModelCopyWithImpl(this._self, this._then);

  final _AlertModel _self;
  final $Res Function(_AlertModel) _then;

/// Create a copy of AlertModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderName = null,Object? event = null,Object? startTimestamp = null,Object? endTimestamp = null,Object? description = null,Object? tags = null,}) {
  return _then(_AlertModel(
senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,startTimestamp: null == startTimestamp ? _self.startTimestamp : startTimestamp // ignore: cast_nullable_to_non_nullable
as int,endTimestamp: null == endTimestamp ? _self.endTimestamp : endTimestamp // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
