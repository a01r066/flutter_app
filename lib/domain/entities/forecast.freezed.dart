// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Forecast {

 Weather get current; List<HourlyForecast> get hourly; List<DailyForecast> get daily; List<Alert>? get alerts;
/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastCopyWith<Forecast> get copyWith => _$ForecastCopyWithImpl<Forecast>(this as Forecast, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Forecast&&(identical(other.current, current) || other.current == current)&&const DeepCollectionEquality().equals(other.hourly, hourly)&&const DeepCollectionEquality().equals(other.daily, daily)&&const DeepCollectionEquality().equals(other.alerts, alerts));
}


@override
int get hashCode => Object.hash(runtimeType,current,const DeepCollectionEquality().hash(hourly),const DeepCollectionEquality().hash(daily),const DeepCollectionEquality().hash(alerts));

@override
String toString() {
  return 'Forecast(current: $current, hourly: $hourly, daily: $daily, alerts: $alerts)';
}


}

/// @nodoc
abstract mixin class $ForecastCopyWith<$Res>  {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) _then) = _$ForecastCopyWithImpl;
@useResult
$Res call({
 Weather current, List<HourlyForecast> hourly, List<DailyForecast> daily, List<Alert>? alerts
});


$WeatherCopyWith<$Res> get current;

}
/// @nodoc
class _$ForecastCopyWithImpl<$Res>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._self, this._then);

  final Forecast _self;
  final $Res Function(Forecast) _then;

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? hourly = null,Object? daily = null,Object? alerts = freezed,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Weather,hourly: null == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as List<HourlyForecast>,daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as List<DailyForecast>,alerts: freezed == alerts ? _self.alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<Alert>?,
  ));
}
/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherCopyWith<$Res> get current {
  
  return $WeatherCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// @nodoc


class _Forecast extends Forecast {
  const _Forecast({required this.current, required final  List<HourlyForecast> hourly, required final  List<DailyForecast> daily, required final  List<Alert>? alerts}): _hourly = hourly,_daily = daily,_alerts = alerts,super._();
  

@override final  Weather current;
 final  List<HourlyForecast> _hourly;
@override List<HourlyForecast> get hourly {
  if (_hourly is EqualUnmodifiableListView) return _hourly;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hourly);
}

 final  List<DailyForecast> _daily;
@override List<DailyForecast> get daily {
  if (_daily is EqualUnmodifiableListView) return _daily;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_daily);
}

 final  List<Alert>? _alerts;
@override List<Alert>? get alerts {
  final value = _alerts;
  if (value == null) return null;
  if (_alerts is EqualUnmodifiableListView) return _alerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastCopyWith<_Forecast> get copyWith => __$ForecastCopyWithImpl<_Forecast>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Forecast&&(identical(other.current, current) || other.current == current)&&const DeepCollectionEquality().equals(other._hourly, _hourly)&&const DeepCollectionEquality().equals(other._daily, _daily)&&const DeepCollectionEquality().equals(other._alerts, _alerts));
}


@override
int get hashCode => Object.hash(runtimeType,current,const DeepCollectionEquality().hash(_hourly),const DeepCollectionEquality().hash(_daily),const DeepCollectionEquality().hash(_alerts));

@override
String toString() {
  return 'Forecast(current: $current, hourly: $hourly, daily: $daily, alerts: $alerts)';
}


}

/// @nodoc
abstract mixin class _$ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) _then) = __$ForecastCopyWithImpl;
@override @useResult
$Res call({
 Weather current, List<HourlyForecast> hourly, List<DailyForecast> daily, List<Alert>? alerts
});


@override $WeatherCopyWith<$Res> get current;

}
/// @nodoc
class __$ForecastCopyWithImpl<$Res>
    implements _$ForecastCopyWith<$Res> {
  __$ForecastCopyWithImpl(this._self, this._then);

  final _Forecast _self;
  final $Res Function(_Forecast) _then;

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? hourly = null,Object? daily = null,Object? alerts = freezed,}) {
  return _then(_Forecast(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as Weather,hourly: null == hourly ? _self._hourly : hourly // ignore: cast_nullable_to_non_nullable
as List<HourlyForecast>,daily: null == daily ? _self._daily : daily // ignore: cast_nullable_to_non_nullable
as List<DailyForecast>,alerts: freezed == alerts ? _self._alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<Alert>?,
  ));
}

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherCopyWith<$Res> get current {
  
  return $WeatherCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

/// @nodoc
mixin _$HourlyForecast {

 DateTime get dateTime; double get temperature; double get feelsLike; int get pressure; int get humidity; double get windSpeed; int get windDegree; int get clouds; double get pop;// Probability of precipitation
 String get main; String get description; String get icon;
/// Create a copy of HourlyForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyForecastCopyWith<HourlyForecast> get copyWith => _$HourlyForecastCopyWithImpl<HourlyForecast>(this as HourlyForecast, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyForecast&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDegree, windDegree) || other.windDegree == windDegree)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.pop, pop) || other.pop == pop)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,feelsLike,pressure,humidity,windSpeed,windDegree,clouds,pop,main,description,icon);

@override
String toString() {
  return 'HourlyForecast(dateTime: $dateTime, temperature: $temperature, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, windDegree: $windDegree, clouds: $clouds, pop: $pop, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $HourlyForecastCopyWith<$Res>  {
  factory $HourlyForecastCopyWith(HourlyForecast value, $Res Function(HourlyForecast) _then) = _$HourlyForecastCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime, double temperature, double feelsLike, int pressure, int humidity, double windSpeed, int windDegree, int clouds, double pop, String main, String description, String icon
});




}
/// @nodoc
class _$HourlyForecastCopyWithImpl<$Res>
    implements $HourlyForecastCopyWith<$Res> {
  _$HourlyForecastCopyWithImpl(this._self, this._then);

  final HourlyForecast _self;
  final $Res Function(HourlyForecast) _then;

/// Create a copy of HourlyForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateTime = null,Object? temperature = null,Object? feelsLike = null,Object? pressure = null,Object? humidity = null,Object? windSpeed = null,Object? windDegree = null,Object? clouds = null,Object? pop = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_self.copyWith(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDegree: null == windDegree ? _self.windDegree : windDegree // ignore: cast_nullable_to_non_nullable
as int,clouds: null == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int,pop: null == pop ? _self.pop : pop // ignore: cast_nullable_to_non_nullable
as double,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _HourlyForecast extends HourlyForecast {
  const _HourlyForecast({required this.dateTime, required this.temperature, required this.feelsLike, required this.pressure, required this.humidity, required this.windSpeed, required this.windDegree, required this.clouds, required this.pop, required this.main, required this.description, required this.icon}): super._();
  

@override final  DateTime dateTime;
@override final  double temperature;
@override final  double feelsLike;
@override final  int pressure;
@override final  int humidity;
@override final  double windSpeed;
@override final  int windDegree;
@override final  int clouds;
@override final  double pop;
// Probability of precipitation
@override final  String main;
@override final  String description;
@override final  String icon;

/// Create a copy of HourlyForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyForecastCopyWith<_HourlyForecast> get copyWith => __$HourlyForecastCopyWithImpl<_HourlyForecast>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyForecast&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDegree, windDegree) || other.windDegree == windDegree)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.pop, pop) || other.pop == pop)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,feelsLike,pressure,humidity,windSpeed,windDegree,clouds,pop,main,description,icon);

@override
String toString() {
  return 'HourlyForecast(dateTime: $dateTime, temperature: $temperature, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, windDegree: $windDegree, clouds: $clouds, pop: $pop, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$HourlyForecastCopyWith<$Res> implements $HourlyForecastCopyWith<$Res> {
  factory _$HourlyForecastCopyWith(_HourlyForecast value, $Res Function(_HourlyForecast) _then) = __$HourlyForecastCopyWithImpl;
@override @useResult
$Res call({
 DateTime dateTime, double temperature, double feelsLike, int pressure, int humidity, double windSpeed, int windDegree, int clouds, double pop, String main, String description, String icon
});




}
/// @nodoc
class __$HourlyForecastCopyWithImpl<$Res>
    implements _$HourlyForecastCopyWith<$Res> {
  __$HourlyForecastCopyWithImpl(this._self, this._then);

  final _HourlyForecast _self;
  final $Res Function(_HourlyForecast) _then;

/// Create a copy of HourlyForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateTime = null,Object? temperature = null,Object? feelsLike = null,Object? pressure = null,Object? humidity = null,Object? windSpeed = null,Object? windDegree = null,Object? clouds = null,Object? pop = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_HourlyForecast(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDegree: null == windDegree ? _self.windDegree : windDegree // ignore: cast_nullable_to_non_nullable
as int,clouds: null == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int,pop: null == pop ? _self.pop : pop // ignore: cast_nullable_to_non_nullable
as double,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DailyForecast {

 DateTime get dateTime; Temperature get temperature; Temperature get feelsLike; int get pressure; int get humidity; double get windSpeed; int get windDegree; int get clouds; double get pop;// Probability of precipitation
 double get rain; double get uvi;// UV Index
 String get main; String get description; String get icon; DateTime get sunrise; DateTime get sunset;
/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyForecastCopyWith<DailyForecast> get copyWith => _$DailyForecastCopyWithImpl<DailyForecast>(this as DailyForecast, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyForecast&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDegree, windDegree) || other.windDegree == windDegree)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.pop, pop) || other.pop == pop)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.uvi, uvi) || other.uvi == uvi)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,feelsLike,pressure,humidity,windSpeed,windDegree,clouds,pop,rain,uvi,main,description,icon,sunrise,sunset);

@override
String toString() {
  return 'DailyForecast(dateTime: $dateTime, temperature: $temperature, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, windDegree: $windDegree, clouds: $clouds, pop: $pop, rain: $rain, uvi: $uvi, main: $main, description: $description, icon: $icon, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class $DailyForecastCopyWith<$Res>  {
  factory $DailyForecastCopyWith(DailyForecast value, $Res Function(DailyForecast) _then) = _$DailyForecastCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime, Temperature temperature, Temperature feelsLike, int pressure, int humidity, double windSpeed, int windDegree, int clouds, double pop, double rain, double uvi, String main, String description, String icon, DateTime sunrise, DateTime sunset
});


$TemperatureCopyWith<$Res> get temperature;$TemperatureCopyWith<$Res> get feelsLike;

}
/// @nodoc
class _$DailyForecastCopyWithImpl<$Res>
    implements $DailyForecastCopyWith<$Res> {
  _$DailyForecastCopyWithImpl(this._self, this._then);

  final DailyForecast _self;
  final $Res Function(DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateTime = null,Object? temperature = null,Object? feelsLike = null,Object? pressure = null,Object? humidity = null,Object? windSpeed = null,Object? windDegree = null,Object? clouds = null,Object? pop = null,Object? rain = null,Object? uvi = null,Object? main = null,Object? description = null,Object? icon = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_self.copyWith(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as Temperature,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as Temperature,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDegree: null == windDegree ? _self.windDegree : windDegree // ignore: cast_nullable_to_non_nullable
as int,clouds: null == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int,pop: null == pop ? _self.pop : pop // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,uvi: null == uvi ? _self.uvi : uvi // ignore: cast_nullable_to_non_nullable
as double,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as DateTime,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemperatureCopyWith<$Res> get temperature {
  
  return $TemperatureCopyWith<$Res>(_self.temperature, (value) {
    return _then(_self.copyWith(temperature: value));
  });
}/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemperatureCopyWith<$Res> get feelsLike {
  
  return $TemperatureCopyWith<$Res>(_self.feelsLike, (value) {
    return _then(_self.copyWith(feelsLike: value));
  });
}
}


/// @nodoc


class _DailyForecast extends DailyForecast {
  const _DailyForecast({required this.dateTime, required this.temperature, required this.feelsLike, required this.pressure, required this.humidity, required this.windSpeed, required this.windDegree, required this.clouds, required this.pop, required this.rain, required this.uvi, required this.main, required this.description, required this.icon, required this.sunrise, required this.sunset}): super._();
  

@override final  DateTime dateTime;
@override final  Temperature temperature;
@override final  Temperature feelsLike;
@override final  int pressure;
@override final  int humidity;
@override final  double windSpeed;
@override final  int windDegree;
@override final  int clouds;
@override final  double pop;
// Probability of precipitation
@override final  double rain;
@override final  double uvi;
// UV Index
@override final  String main;
@override final  String description;
@override final  String icon;
@override final  DateTime sunrise;
@override final  DateTime sunset;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyForecastCopyWith<_DailyForecast> get copyWith => __$DailyForecastCopyWithImpl<_DailyForecast>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyForecast&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDegree, windDegree) || other.windDegree == windDegree)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.pop, pop) || other.pop == pop)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.uvi, uvi) || other.uvi == uvi)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.sunrise, sunrise) || other.sunrise == sunrise)&&(identical(other.sunset, sunset) || other.sunset == sunset));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,temperature,feelsLike,pressure,humidity,windSpeed,windDegree,clouds,pop,rain,uvi,main,description,icon,sunrise,sunset);

@override
String toString() {
  return 'DailyForecast(dateTime: $dateTime, temperature: $temperature, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, windDegree: $windDegree, clouds: $clouds, pop: $pop, rain: $rain, uvi: $uvi, main: $main, description: $description, icon: $icon, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class _$DailyForecastCopyWith<$Res> implements $DailyForecastCopyWith<$Res> {
  factory _$DailyForecastCopyWith(_DailyForecast value, $Res Function(_DailyForecast) _then) = __$DailyForecastCopyWithImpl;
@override @useResult
$Res call({
 DateTime dateTime, Temperature temperature, Temperature feelsLike, int pressure, int humidity, double windSpeed, int windDegree, int clouds, double pop, double rain, double uvi, String main, String description, String icon, DateTime sunrise, DateTime sunset
});


@override $TemperatureCopyWith<$Res> get temperature;@override $TemperatureCopyWith<$Res> get feelsLike;

}
/// @nodoc
class __$DailyForecastCopyWithImpl<$Res>
    implements _$DailyForecastCopyWith<$Res> {
  __$DailyForecastCopyWithImpl(this._self, this._then);

  final _DailyForecast _self;
  final $Res Function(_DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateTime = null,Object? temperature = null,Object? feelsLike = null,Object? pressure = null,Object? humidity = null,Object? windSpeed = null,Object? windDegree = null,Object? clouds = null,Object? pop = null,Object? rain = null,Object? uvi = null,Object? main = null,Object? description = null,Object? icon = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_DailyForecast(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as Temperature,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as Temperature,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDegree: null == windDegree ? _self.windDegree : windDegree // ignore: cast_nullable_to_non_nullable
as int,clouds: null == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int,pop: null == pop ? _self.pop : pop // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,uvi: null == uvi ? _self.uvi : uvi // ignore: cast_nullable_to_non_nullable
as double,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as DateTime,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemperatureCopyWith<$Res> get temperature {
  
  return $TemperatureCopyWith<$Res>(_self.temperature, (value) {
    return _then(_self.copyWith(temperature: value));
  });
}/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TemperatureCopyWith<$Res> get feelsLike {
  
  return $TemperatureCopyWith<$Res>(_self.feelsLike, (value) {
    return _then(_self.copyWith(feelsLike: value));
  });
}
}

/// @nodoc
mixin _$Temperature {

 double get day; double get night; double get evening; double get morning; double get min; double get max;
/// Create a copy of Temperature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemperatureCopyWith<Temperature> get copyWith => _$TemperatureCopyWithImpl<Temperature>(this as Temperature, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Temperature&&(identical(other.day, day) || other.day == day)&&(identical(other.night, night) || other.night == night)&&(identical(other.evening, evening) || other.evening == evening)&&(identical(other.morning, morning) || other.morning == morning)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,day,night,evening,morning,min,max);

@override
String toString() {
  return 'Temperature(day: $day, night: $night, evening: $evening, morning: $morning, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $TemperatureCopyWith<$Res>  {
  factory $TemperatureCopyWith(Temperature value, $Res Function(Temperature) _then) = _$TemperatureCopyWithImpl;
@useResult
$Res call({
 double day, double night, double evening, double morning, double min, double max
});




}
/// @nodoc
class _$TemperatureCopyWithImpl<$Res>
    implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._self, this._then);

  final Temperature _self;
  final $Res Function(Temperature) _then;

/// Create a copy of Temperature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? night = null,Object? evening = null,Object? morning = null,Object? min = null,Object? max = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as double,night: null == night ? _self.night : night // ignore: cast_nullable_to_non_nullable
as double,evening: null == evening ? _self.evening : evening // ignore: cast_nullable_to_non_nullable
as double,morning: null == morning ? _self.morning : morning // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc


class _Temperature extends Temperature {
  const _Temperature({required this.day, required this.night, required this.evening, required this.morning, required this.min, required this.max}): super._();
  

@override final  double day;
@override final  double night;
@override final  double evening;
@override final  double morning;
@override final  double min;
@override final  double max;

/// Create a copy of Temperature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemperatureCopyWith<_Temperature> get copyWith => __$TemperatureCopyWithImpl<_Temperature>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Temperature&&(identical(other.day, day) || other.day == day)&&(identical(other.night, night) || other.night == night)&&(identical(other.evening, evening) || other.evening == evening)&&(identical(other.morning, morning) || other.morning == morning)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,day,night,evening,morning,min,max);

@override
String toString() {
  return 'Temperature(day: $day, night: $night, evening: $evening, morning: $morning, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$TemperatureCopyWith<$Res> implements $TemperatureCopyWith<$Res> {
  factory _$TemperatureCopyWith(_Temperature value, $Res Function(_Temperature) _then) = __$TemperatureCopyWithImpl;
@override @useResult
$Res call({
 double day, double night, double evening, double morning, double min, double max
});




}
/// @nodoc
class __$TemperatureCopyWithImpl<$Res>
    implements _$TemperatureCopyWith<$Res> {
  __$TemperatureCopyWithImpl(this._self, this._then);

  final _Temperature _self;
  final $Res Function(_Temperature) _then;

/// Create a copy of Temperature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? night = null,Object? evening = null,Object? morning = null,Object? min = null,Object? max = null,}) {
  return _then(_Temperature(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as double,night: null == night ? _self.night : night // ignore: cast_nullable_to_non_nullable
as double,evening: null == evening ? _self.evening : evening // ignore: cast_nullable_to_non_nullable
as double,morning: null == morning ? _self.morning : morning // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$Alert {

 String get senderName; String get event; DateTime get start; DateTime get end; String get description; List<String> get tags;
/// Create a copy of Alert
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertCopyWith<Alert> get copyWith => _$AlertCopyWithImpl<Alert>(this as Alert, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Alert&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.event, event) || other.event == event)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags));
}


@override
int get hashCode => Object.hash(runtimeType,senderName,event,start,end,description,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'Alert(senderName: $senderName, event: $event, start: $start, end: $end, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $AlertCopyWith<$Res>  {
  factory $AlertCopyWith(Alert value, $Res Function(Alert) _then) = _$AlertCopyWithImpl;
@useResult
$Res call({
 String senderName, String event, DateTime start, DateTime end, String description, List<String> tags
});




}
/// @nodoc
class _$AlertCopyWithImpl<$Res>
    implements $AlertCopyWith<$Res> {
  _$AlertCopyWithImpl(this._self, this._then);

  final Alert _self;
  final $Res Function(Alert) _then;

/// Create a copy of Alert
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderName = null,Object? event = null,Object? start = null,Object? end = null,Object? description = null,Object? tags = null,}) {
  return _then(_self.copyWith(
senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc


class _Alert extends Alert {
  const _Alert({required this.senderName, required this.event, required this.start, required this.end, required this.description, required final  List<String> tags}): _tags = tags,super._();
  

@override final  String senderName;
@override final  String event;
@override final  DateTime start;
@override final  DateTime end;
@override final  String description;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of Alert
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertCopyWith<_Alert> get copyWith => __$AlertCopyWithImpl<_Alert>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Alert&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.event, event) || other.event == event)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags));
}


@override
int get hashCode => Object.hash(runtimeType,senderName,event,start,end,description,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'Alert(senderName: $senderName, event: $event, start: $start, end: $end, description: $description, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$AlertCopyWith<$Res> implements $AlertCopyWith<$Res> {
  factory _$AlertCopyWith(_Alert value, $Res Function(_Alert) _then) = __$AlertCopyWithImpl;
@override @useResult
$Res call({
 String senderName, String event, DateTime start, DateTime end, String description, List<String> tags
});




}
/// @nodoc
class __$AlertCopyWithImpl<$Res>
    implements _$AlertCopyWith<$Res> {
  __$AlertCopyWithImpl(this._self, this._then);

  final _Alert _self;
  final $Res Function(_Alert) _then;

/// Create a copy of Alert
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderName = null,Object? event = null,Object? start = null,Object? end = null,Object? description = null,Object? tags = null,}) {
  return _then(_Alert(
senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
