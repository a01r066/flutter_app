import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_state.freezed.dart';

@freezed
abstract class LocationState with _$LocationState {
  const LocationState._();

  const factory LocationState({
    double? latitude,
    double? longitude,
    String? cityName,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _LocationState;

  factory LocationState.initial() => const LocationState(
    isLoading: false,
  );

  factory LocationState.loading() => const LocationState(
    isLoading: true,
  );

  factory LocationState.error(String message) => LocationState(
    isLoading: false,
    errorMessage: message,
  );

  factory LocationState.success({
    required double latitude,
    required double longitude,
    required String cityName,
  }) => LocationState(
    latitude: latitude,
    longitude: longitude,
    cityName: cityName,
    isLoading: false,
  );
}