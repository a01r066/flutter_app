import 'package:flutter_app/core/utils/error_handler.dart';
import 'package:flutter_app/domain/repositories/weather_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../states/location_state.dart';
import '../../domain/entities/failure.dart';
import '../../infrastructure/services/location_service.dart';
import 'providers.dart';

final locationProvider = StateNotifierProvider<LocationNotifier, LocationState>((ref) {
  final locationService = ref.watch(locationServiceProvider);
  final weatherRepository = ref.watch(weatherRepositoryProvider);

  return LocationNotifier(locationService, weatherRepository);
});

class LocationNotifier extends StateNotifier<LocationState> {
  final LocationService _locationService;
  final WeatherRepository _weatherRepository;

  LocationNotifier(this._locationService, this._weatherRepository)
      : super(LocationState.initial()) {
    // Initialize with last saved location
    _initializeWithLastLocation();
  }

  Future<void> _initializeWithLastLocation() async {
    state = LocationState.loading();

    final locationResult = await _weatherRepository.getLastLocation();

    locationResult.fold(
          (failure) async {
        // If no saved location, try to get current location
        await getCurrentLocation();
      },
          (location) {
        state = LocationState.success(
          latitude: location.latitude,
          longitude: location.longitude,
          cityName: location.cityName ?? '',
        );
      },
    );
  }

  Future<void> getCurrentLocation() async {
    state = LocationState.loading();

    final locationResult = await _locationService.getCurrentLocation();

    locationResult.fold(
          (failure) {
        _handleFailure(failure);
      },
          (location) async {
        // Save location to repository
        await _weatherRepository.saveLocation(
          latitude: location.latitude,
          longitude: location.longitude,
          cityName: location.cityName,
        );

        // Update state
        state = LocationState.success(
          latitude: location.latitude,
          longitude: location.longitude,
          cityName: location.cityName,
        );
      },
    );
  }

  Future<void> searchLocation(String cityName) async {
    state = LocationState.loading();

    final coordinatesResult = await _locationService.getCoordinatesFromCityName(cityName);

    coordinatesResult.fold(
          (failure) {
        _handleFailure(failure);
      },
          (coordinates) async {
        // Get city name again to ensure consistency
        final cityNameResult = await _locationService.getCityNameFromCoordinates(
          coordinates.latitude,
          coordinates.longitude,
        );

        final validCityName = cityNameResult.fold(
              (failure) => cityName, // Use the search query if reverse geocoding fails
              (name) => name,
        );

        // Save location to repository
        await _weatherRepository.saveLocation(
          latitude: coordinates.latitude,
          longitude: coordinates.longitude,
          cityName: validCityName,
        );

        // Update state
        state = LocationState.success(
          latitude: coordinates.latitude,
          longitude: coordinates.longitude,
          cityName: validCityName,
        );
      },
    );
  }

  Future<void> setLocation({
    required double latitude,
    required double longitude,
    required String cityName,
  }) async {
    state = LocationState.loading();

    // Save location to repository
    await _weatherRepository.saveLocation(
      latitude: latitude,
      longitude: longitude,
      cityName: cityName,
    );

    // Update state
    state = LocationState.success(
      latitude: latitude,
      longitude: longitude,
      cityName: cityName,
    );
  }

  void _handleFailure(Failure failure) {
    final errorMessage = ErrorHandler.getLocationErrorMessage(failure);
    state = LocationState.error(errorMessage);
  }
}