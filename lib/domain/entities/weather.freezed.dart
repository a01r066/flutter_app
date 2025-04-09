// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Weather {

 double get temperature; double get feelsLike; double get tempMin; double get tempMax; int get pressure; int get humidity; double get windSpeed; int get windDegree; int get clouds; String get main; String get description; String get icon; DateTime get dateTime; String get cityName; double get latitude; double get longitude; String? get units;
/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCopyWith<Weather> get copyWith => _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weather&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDegree, windDegree) || other.windDegree == windDegree)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.units, units) || other.units == units));
}


@override
int get hashCode => Object.hash(runtimeType,temperature,feelsLike,tempMin,tempMax,pressure,humidity,windSpeed,windDegree,clouds,main,description,icon,dateTime,cityName,latitude,longitude,units);

@override
String toString() {
  return 'Weather(temperature: $temperature, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, windDegree: $windDegree, clouds: $clouds, main: $main, description: $description, icon: $icon, dateTime: $dateTime, cityName: $cityName, latitude: $latitude, longitude: $longitude, units: $units)';
}


}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res>  {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) = _$WeatherCopyWithImpl;
@useResult
$Res call({
 double temperature, double feelsLike, double tempMin, double tempMax, int pressure, int humidity, double windSpeed, int windDegree, int clouds, String main, String description, String icon, DateTime dateTime, String cityName, double latitude, double longitude, String? units
});




}
/// @nodoc
class _$WeatherCopyWithImpl<$Res>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature = null,Object? feelsLike = null,Object? tempMin = null,Object? tempMax = null,Object? pressure = null,Object? humidity = null,Object? windSpeed = null,Object? windDegree = null,Object? clouds = null,Object? main = null,Object? description = null,Object? icon = null,Object? dateTime = null,Object? cityName = null,Object? latitude = null,Object? longitude = null,Object? units = freezed,}) {
  return _then(_self.copyWith(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDegree: null == windDegree ? _self.windDegree : windDegree // ignore: cast_nullable_to_non_nullable
as int,clouds: null == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _Weather extends Weather {
  const _Weather({required this.temperature, required this.feelsLike, required this.tempMin, required this.tempMax, required this.pressure, required this.humidity, required this.windSpeed, required this.windDegree, required this.clouds, required this.main, required this.description, required this.icon, required this.dateTime, required this.cityName, required this.latitude, required this.longitude, this.units}): super._();
  

@override final  double temperature;
@override final  double feelsLike;
@override final  double tempMin;
@override final  double tempMax;
@override final  int pressure;
@override final  int humidity;
@override final  double windSpeed;
@override final  int windDegree;
@override final  int clouds;
@override final  String main;
@override final  String description;
@override final  String icon;
@override final  DateTime dateTime;
@override final  String cityName;
@override final  double latitude;
@override final  double longitude;
@override final  String? units;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherCopyWith<_Weather> get copyWith => __$WeatherCopyWithImpl<_Weather>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weather&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDegree, windDegree) || other.windDegree == windDegree)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.units, units) || other.units == units));
}


@override
int get hashCode => Object.hash(runtimeType,temperature,feelsLike,tempMin,tempMax,pressure,humidity,windSpeed,windDegree,clouds,main,description,icon,dateTime,cityName,latitude,longitude,units);

@override
String toString() {
  return 'Weather(temperature: $temperature, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, windDegree: $windDegree, clouds: $clouds, main: $main, description: $description, icon: $icon, dateTime: $dateTime, cityName: $cityName, latitude: $latitude, longitude: $longitude, units: $units)';
}


}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) = __$WeatherCopyWithImpl;
@override @useResult
$Res call({
 double temperature, double feelsLike, double tempMin, double tempMax, int pressure, int humidity, double windSpeed, int windDegree, int clouds, String main, String description, String icon, DateTime dateTime, String cityName, double latitude, double longitude, String? units
});




}
/// @nodoc
class __$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature = null,Object? feelsLike = null,Object? tempMin = null,Object? tempMax = null,Object? pressure = null,Object? humidity = null,Object? windSpeed = null,Object? windDegree = null,Object? clouds = null,Object? main = null,Object? description = null,Object? icon = null,Object? dateTime = null,Object? cityName = null,Object? latitude = null,Object? longitude = null,Object? units = freezed,}) {
  return _then(_Weather(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,windDegree: null == windDegree ? _self.windDegree : windDegree // ignore: cast_nullable_to_non_nullable
as int,clouds: null == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
