import 'package:flutter_app/core/utils/error_handler.dart';
import 'package:flutter_app/domain/usecases/get_current_weather_usecase.dart';
import 'package:flutter_app/domain/usecases/get_forecast_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../states/weather_state.dart';
import '../../domain/entities/failure.dart';
import '../../core/utils/exception_handler.dart';
import 'providers.dart';
import 'location_provider.dart';

final weatherStateProvider = StateNotifierProvider<WeatherNotifier, WeatherState>((ref) {
  final getCurrentWeatherUseCase = ref.watch(getCurrentWeatherUseCaseProvider);
  final getForecastUseCase = ref.watch(getForecastUseCaseProvider);
  final exceptionHandler = ref.watch(exceptionHandlerProvider);
  final locProvider = ref.watch(locationProvider.notifier);
  final unitPreference = ref.watch(unitPreferenceProvider);

  return WeatherNotifier(
    getCurrentWeatherUseCase,
    getForecastUseCase,
    exceptionHandler,
    locProvider,
    unitPreference,
  );
});

class WeatherNotifier extends StateNotifier<WeatherState> {
  final GetCurrentWeatherUseCase _getCurrentWeatherUseCase;
  final GetForecastUseCase _getForecastUseCase;
  final ExceptionHandler _exceptionHandler;
  final LocationNotifier _locationNotifier;
  final String _units;

  WeatherNotifier(
      this._getCurrentWeatherUseCase,
      this._getForecastUseCase,
      this._exceptionHandler,
      this._locationNotifier,
      this._units,
      ) : super(WeatherState.initial().copyWith(units: _units));

  Future<void> fetchWeatherAndForecast() async {
    // Set loading state
    state = WeatherState.loading().copyWith(units: _units);

    // Get current location
    final locationState = _locationNotifier.state;

    if (locationState.latitude == null || locationState.longitude == null) {
      await _locationNotifier.getCurrentLocation();
    }

    final updatedLocationState = _locationNotifier.state;

    // Check if location is available
    if (updatedLocationState.latitude == null || updatedLocationState.longitude == null) {
      state = WeatherState.error('Location is not available');
      return;
    }

    // Get current weather
    final weatherResult = await _getCurrentWeatherUseCase(
      latitude: updatedLocationState.latitude!,
      longitude: updatedLocationState.longitude!,
      units: _units,
    );

    weatherResult.fold(
          (failure) async {
        // Handle failure by trying to get cached data
        final errorMessage = await _handleFailure(failure);
        state = state.copyWith(errorMessage: errorMessage, isLoading: false);
      },
          (weather) async {
        // Get forecast data
        final forecastResult = await _getForecastUseCase(
          latitude: updatedLocationState.latitude!,
          longitude: updatedLocationState.longitude!,
          units: _units,
        );

        forecastResult.fold(
              (failure) {
            // Set success state with weather only
            state = WeatherState.success(
              currentWeather: weather,
              units: _units,
            );
          },
              (forecast) {
            // Set success state with weather and forecast
            state = WeatherState.success(
              currentWeather: weather,
              forecast: forecast,
              units: _units,
            );
          },
        );
      },
    );
  }

  Future<void> refreshWeather() async {
    // Keep current state data while loading
    state = state.copyWith(isLoading: true);

    // Fetch new data
    await fetchWeatherAndForecast();
  }

  Future<void> fetchWeatherForLocation({
    required double latitude,
    required double longitude,
    required String cityName,
  }) async {
    // Set loading state
    state = WeatherState.loading().copyWith(units: _units);

    // Update location
    await _locationNotifier.setLocation(
      latitude: latitude,
      longitude: longitude,
      cityName: cityName,
    );

    // Get current weather
    final weatherResult = await _getCurrentWeatherUseCase(
      latitude: latitude,
      longitude: longitude,
      units: _units,
    );

    weatherResult.fold(
          (failure) async {
        // Handle failure by trying to get cached data
        final errorMessage = await _handleFailure(failure);
        state = state.copyWith(errorMessage: errorMessage, isLoading: false);
      },
          (weather) async {
        // Get forecast data
        final forecastResult = await _getForecastUseCase(
          latitude: latitude,
          longitude: longitude,
          units: _units,
        );

        forecastResult.fold(
              (failure) {
            // Set success state with weather only
            state = WeatherState.success(
              currentWeather: weather,
              units: _units,
            );
          },
              (forecast) {
            // Set success state with weather and forecast
            state = WeatherState.success(
              currentWeather: weather,
              forecast: forecast,
              units: _units,
            );
          },
        );
      },
    );
  }

  Future<void> getCachedWeather() async {
    // Try to get cached weather
    final weatherResult = await _getCurrentWeatherUseCase.getCached();

    weatherResult.fold(
          (failure) {
        // No cached data available
        state = WeatherState.error('No cached weather data available');
      },
          (weather) async {
        // Try to get cached forecast
        final forecastResult = await _getForecastUseCase.getCached();

        forecastResult.fold(
              (failure) {
            // Set success state with weather only from cache
            state = WeatherState.success(
              currentWeather: weather,
              isFromCache: true,
              units: _units,
            );
          },
              (forecast) {
            // Set success state with weather and forecast from cache
            state = WeatherState.success(
              currentWeather: weather,
              forecast: forecast,
              isFromCache: true,
              units: _units,
            );
          },
        );
      },
    );
  }

  Future<String> _handleFailure(Failure failure) async {
    // Try to get cached data
    await getCachedWeather();

    // Return appropriate error message
    return ErrorHandler.getErrorMessage(failure);
  }
}