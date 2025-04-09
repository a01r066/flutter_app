// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherState {

// Current weather data
 Weather? get currentWeather;// Forecast data
 Forecast? get forecast;// Loading status
 bool get isLoading;// Error message
 String? get errorMessage;// Cache indicator
 bool get isFromCache;// Last update time
 DateTime? get lastUpdated;// Selected units (metric/imperial)
 String get units;
/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherStateCopyWith<WeatherState> get copyWith => _$WeatherStateCopyWithImpl<WeatherState>(this as WeatherState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherState&&(identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather)&&(identical(other.forecast, forecast) || other.forecast == forecast)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.units, units) || other.units == units));
}


@override
int get hashCode => Object.hash(runtimeType,currentWeather,forecast,isLoading,errorMessage,isFromCache,lastUpdated,units);

@override
String toString() {
  return 'WeatherState(currentWeather: $currentWeather, forecast: $forecast, isLoading: $isLoading, errorMessage: $errorMessage, isFromCache: $isFromCache, lastUpdated: $lastUpdated, units: $units)';
}


}

/// @nodoc
abstract mixin class $WeatherStateCopyWith<$Res>  {
  factory $WeatherStateCopyWith(WeatherState value, $Res Function(WeatherState) _then) = _$WeatherStateCopyWithImpl;
@useResult
$Res call({
 Weather? currentWeather, Forecast? forecast, bool isLoading, String? errorMessage, bool isFromCache, DateTime? lastUpdated, String units
});


$WeatherCopyWith<$Res>? get currentWeather;$ForecastCopyWith<$Res>? get forecast;

}
/// @nodoc
class _$WeatherStateCopyWithImpl<$Res>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._self, this._then);

  final WeatherState _self;
  final $Res Function(WeatherState) _then;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentWeather = freezed,Object? forecast = freezed,Object? isLoading = null,Object? errorMessage = freezed,Object? isFromCache = null,Object? lastUpdated = freezed,Object? units = null,}) {
  return _then(_self.copyWith(
currentWeather: freezed == currentWeather ? _self.currentWeather : currentWeather // ignore: cast_nullable_to_non_nullable
as Weather?,forecast: freezed == forecast ? _self.forecast : forecast // ignore: cast_nullable_to_non_nullable
as Forecast?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherCopyWith<$Res>? get currentWeather {
    if (_self.currentWeather == null) {
    return null;
  }

  return $WeatherCopyWith<$Res>(_self.currentWeather!, (value) {
    return _then(_self.copyWith(currentWeather: value));
  });
}/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastCopyWith<$Res>? get forecast {
    if (_self.forecast == null) {
    return null;
  }

  return $ForecastCopyWith<$Res>(_self.forecast!, (value) {
    return _then(_self.copyWith(forecast: value));
  });
}
}


/// @nodoc


class _WeatherState extends WeatherState {
  const _WeatherState({this.currentWeather, this.forecast, this.isLoading = false, this.errorMessage, this.isFromCache = false, this.lastUpdated, this.units = 'metric'}): super._();
  

// Current weather data
@override final  Weather? currentWeather;
// Forecast data
@override final  Forecast? forecast;
// Loading status
@override@JsonKey() final  bool isLoading;
// Error message
@override final  String? errorMessage;
// Cache indicator
@override@JsonKey() final  bool isFromCache;
// Last update time
@override final  DateTime? lastUpdated;
// Selected units (metric/imperial)
@override@JsonKey() final  String units;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherStateCopyWith<_WeatherState> get copyWith => __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherState&&(identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather)&&(identical(other.forecast, forecast) || other.forecast == forecast)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.units, units) || other.units == units));
}


@override
int get hashCode => Object.hash(runtimeType,currentWeather,forecast,isLoading,errorMessage,isFromCache,lastUpdated,units);

@override
String toString() {
  return 'WeatherState(currentWeather: $currentWeather, forecast: $forecast, isLoading: $isLoading, errorMessage: $errorMessage, isFromCache: $isFromCache, lastUpdated: $lastUpdated, units: $units)';
}


}

/// @nodoc
abstract mixin class _$WeatherStateCopyWith<$Res> implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(_WeatherState value, $Res Function(_WeatherState) _then) = __$WeatherStateCopyWithImpl;
@override @useResult
$Res call({
 Weather? currentWeather, Forecast? forecast, bool isLoading, String? errorMessage, bool isFromCache, DateTime? lastUpdated, String units
});


@override $WeatherCopyWith<$Res>? get currentWeather;@override $ForecastCopyWith<$Res>? get forecast;

}
/// @nodoc
class __$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(this._self, this._then);

  final _WeatherState _self;
  final $Res Function(_WeatherState) _then;

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentWeather = freezed,Object? forecast = freezed,Object? isLoading = null,Object? errorMessage = freezed,Object? isFromCache = null,Object? lastUpdated = freezed,Object? units = null,}) {
  return _then(_WeatherState(
currentWeather: freezed == currentWeather ? _self.currentWeather : currentWeather // ignore: cast_nullable_to_non_nullable
as Weather?,forecast: freezed == forecast ? _self.forecast : forecast // ignore: cast_nullable_to_non_nullable
as Forecast?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherCopyWith<$Res>? get currentWeather {
    if (_self.currentWeather == null) {
    return null;
  }

  return $WeatherCopyWith<$Res>(_self.currentWeather!, (value) {
    return _then(_self.copyWith(currentWeather: value));
  });
}/// Create a copy of WeatherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastCopyWith<$Res>? get forecast {
    if (_self.forecast == null) {
    return null;
  }

  return $ForecastCopyWith<$Res>(_self.forecast!, (value) {
    return _then(_self.copyWith(forecast: value));
  });
}
}

// dart format on
