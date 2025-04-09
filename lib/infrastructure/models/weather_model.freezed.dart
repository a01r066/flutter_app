// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherModel {

 double? get temp;@JsonKey(name: 'feels_like') double? get feelsLike;@JsonKey(name: 'temp_min') double? get tempMin;@JsonKey(name: 'temp_max') double? get tempMax; int? get pressure; int? get humidity;@JsonKey(name: 'wind_speed') double? get windSpeed;@JsonKey(name: 'wind_deg') int? get windDeg; int? get clouds;@JsonKey(name: 'weather') List<WeatherConditionModel> get conditions;@JsonKey(name: 'dt') int get timestamp; String? get name; double? get lat; double? get lon; String? get units;
/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherModelCopyWith<WeatherModel> get copyWith => _$WeatherModelCopyWithImpl<WeatherModel>(this as WeatherModel, _$identity);

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherModel&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDeg, windDeg) || other.windDeg == windDeg)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.name, name) || other.name == name)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.units, units) || other.units == units));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,tempMin,tempMax,pressure,humidity,windSpeed,windDeg,clouds,const DeepCollectionEquality().hash(conditions),timestamp,name,lat,lon,units);

@override
String toString() {
  return 'WeatherModel(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, windDeg: $windDeg, clouds: $clouds, conditions: $conditions, timestamp: $timestamp, name: $name, lat: $lat, lon: $lon, units: $units)';
}


}

/// @nodoc
abstract mixin class $WeatherModelCopyWith<$Res>  {
  factory $WeatherModelCopyWith(WeatherModel value, $Res Function(WeatherModel) _then) = _$WeatherModelCopyWithImpl;
@useResult
$Res call({
 double? temp,@JsonKey(name: 'feels_like') double? feelsLike,@JsonKey(name: 'temp_min') double? tempMin,@JsonKey(name: 'temp_max') double? tempMax, int? pressure, int? humidity,@JsonKey(name: 'wind_speed') double? windSpeed,@JsonKey(name: 'wind_deg') int? windDeg, int? clouds,@JsonKey(name: 'weather') List<WeatherConditionModel> conditions,@JsonKey(name: 'dt') int timestamp, String? name, double? lat, double? lon, String? units
});




}
/// @nodoc
class _$WeatherModelCopyWithImpl<$Res>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._self, this._then);

  final WeatherModel _self;
  final $Res Function(WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = freezed,Object? feelsLike = freezed,Object? tempMin = freezed,Object? tempMax = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? windSpeed = freezed,Object? windDeg = freezed,Object? clouds = freezed,Object? conditions = null,Object? timestamp = null,Object? name = freezed,Object? lat = freezed,Object? lon = freezed,Object? units = freezed,}) {
  return _then(_self.copyWith(
temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,tempMin: freezed == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double?,tempMax: freezed == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,windSpeed: freezed == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double?,windDeg: freezed == windDeg ? _self.windDeg : windDeg // ignore: cast_nullable_to_non_nullable
as int?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int?,conditions: null == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<WeatherConditionModel>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherModel extends WeatherModel {
  const _WeatherModel({required this.temp, @JsonKey(name: 'feels_like') required this.feelsLike, @JsonKey(name: 'temp_min') required this.tempMin, @JsonKey(name: 'temp_max') required this.tempMax, required this.pressure, required this.humidity, @JsonKey(name: 'wind_speed') required this.windSpeed, @JsonKey(name: 'wind_deg') required this.windDeg, required this.clouds, @JsonKey(name: 'weather') required final  List<WeatherConditionModel> conditions, @JsonKey(name: 'dt') required this.timestamp, this.name, this.lat, this.lon, this.units}): _conditions = conditions,super._();
  factory _WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

@override final  double? temp;
@override@JsonKey(name: 'feels_like') final  double? feelsLike;
@override@JsonKey(name: 'temp_min') final  double? tempMin;
@override@JsonKey(name: 'temp_max') final  double? tempMax;
@override final  int? pressure;
@override final  int? humidity;
@override@JsonKey(name: 'wind_speed') final  double? windSpeed;
@override@JsonKey(name: 'wind_deg') final  int? windDeg;
@override final  int? clouds;
 final  List<WeatherConditionModel> _conditions;
@override@JsonKey(name: 'weather') List<WeatherConditionModel> get conditions {
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conditions);
}

@override@JsonKey(name: 'dt') final  int timestamp;
@override final  String? name;
@override final  double? lat;
@override final  double? lon;
@override final  String? units;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherModelCopyWith<_WeatherModel> get copyWith => __$WeatherModelCopyWithImpl<_WeatherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherModel&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.windDeg, windDeg) || other.windDeg == windDeg)&&(identical(other.clouds, clouds) || other.clouds == clouds)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.name, name) || other.name == name)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.units, units) || other.units == units));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,tempMin,tempMax,pressure,humidity,windSpeed,windDeg,clouds,const DeepCollectionEquality().hash(_conditions),timestamp,name,lat,lon,units);

@override
String toString() {
  return 'WeatherModel(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, windDeg: $windDeg, clouds: $clouds, conditions: $conditions, timestamp: $timestamp, name: $name, lat: $lat, lon: $lon, units: $units)';
}


}

/// @nodoc
abstract mixin class _$WeatherModelCopyWith<$Res> implements $WeatherModelCopyWith<$Res> {
  factory _$WeatherModelCopyWith(_WeatherModel value, $Res Function(_WeatherModel) _then) = __$WeatherModelCopyWithImpl;
@override @useResult
$Res call({
 double? temp,@JsonKey(name: 'feels_like') double? feelsLike,@JsonKey(name: 'temp_min') double? tempMin,@JsonKey(name: 'temp_max') double? tempMax, int? pressure, int? humidity,@JsonKey(name: 'wind_speed') double? windSpeed,@JsonKey(name: 'wind_deg') int? windDeg, int? clouds,@JsonKey(name: 'weather') List<WeatherConditionModel> conditions,@JsonKey(name: 'dt') int timestamp, String? name, double? lat, double? lon, String? units
});




}
/// @nodoc
class __$WeatherModelCopyWithImpl<$Res>
    implements _$WeatherModelCopyWith<$Res> {
  __$WeatherModelCopyWithImpl(this._self, this._then);

  final _WeatherModel _self;
  final $Res Function(_WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = freezed,Object? feelsLike = freezed,Object? tempMin = freezed,Object? tempMax = freezed,Object? pressure = freezed,Object? humidity = freezed,Object? windSpeed = freezed,Object? windDeg = freezed,Object? clouds = freezed,Object? conditions = null,Object? timestamp = null,Object? name = freezed,Object? lat = freezed,Object? lon = freezed,Object? units = freezed,}) {
  return _then(_WeatherModel(
temp: freezed == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double?,feelsLike: freezed == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double?,tempMin: freezed == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double?,tempMax: freezed == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as int?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int?,windSpeed: freezed == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double?,windDeg: freezed == windDeg ? _self.windDeg : windDeg // ignore: cast_nullable_to_non_nullable
as int?,clouds: freezed == clouds ? _self.clouds : clouds // ignore: cast_nullable_to_non_nullable
as int?,conditions: null == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<WeatherConditionModel>,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WeatherConditionModel {

 int get id; String get main; String get description; String get icon;
/// Create a copy of WeatherConditionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherConditionModelCopyWith<WeatherConditionModel> get copyWith => _$WeatherConditionModelCopyWithImpl<WeatherConditionModel>(this as WeatherConditionModel, _$identity);

  /// Serializes this WeatherConditionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherConditionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'WeatherConditionModel(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WeatherConditionModelCopyWith<$Res>  {
  factory $WeatherConditionModelCopyWith(WeatherConditionModel value, $Res Function(WeatherConditionModel) _then) = _$WeatherConditionModelCopyWithImpl;
@useResult
$Res call({
 int id, String main, String description, String icon
});




}
/// @nodoc
class _$WeatherConditionModelCopyWithImpl<$Res>
    implements $WeatherConditionModelCopyWith<$Res> {
  _$WeatherConditionModelCopyWithImpl(this._self, this._then);

  final WeatherConditionModel _self;
  final $Res Function(WeatherConditionModel) _then;

/// Create a copy of WeatherConditionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherConditionModel implements WeatherConditionModel {
  const _WeatherConditionModel({required this.id, required this.main, required this.description, required this.icon});
  factory _WeatherConditionModel.fromJson(Map<String, dynamic> json) => _$WeatherConditionModelFromJson(json);

@override final  int id;
@override final  String main;
@override final  String description;
@override final  String icon;

/// Create a copy of WeatherConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherConditionModelCopyWith<_WeatherConditionModel> get copyWith => __$WeatherConditionModelCopyWithImpl<_WeatherConditionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherConditionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherConditionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,main,description,icon);

@override
String toString() {
  return 'WeatherConditionModel(id: $id, main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WeatherConditionModelCopyWith<$Res> implements $WeatherConditionModelCopyWith<$Res> {
  factory _$WeatherConditionModelCopyWith(_WeatherConditionModel value, $Res Function(_WeatherConditionModel) _then) = __$WeatherConditionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String main, String description, String icon
});




}
/// @nodoc
class __$WeatherConditionModelCopyWithImpl<$Res>
    implements _$WeatherConditionModelCopyWith<$Res> {
  __$WeatherConditionModelCopyWithImpl(this._self, this._then);

  final _WeatherConditionModel _self;
  final $Res Function(_WeatherConditionModel) _then;

/// Create a copy of WeatherConditionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_WeatherConditionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
