import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/api/api_client.dart';
import '../../core/constants/api_constants.dart';
import '../../core/constants/app_constants.dart';
import '../../core/storage/secure_storage_service.dart';
import '../../core/utils/connectivity_service.dart';
import '../../core/utils/exception_handler.dart';
import '../../domain/repositories/weather_repository.dart';
import '../../domain/usecases/get_current_weather_usecase.dart';
import '../../domain/usecases/get_forecast_usecase.dart';
import '../../infrastructure/datasources/local/weather_local_datasource.dart';
import '../../infrastructure/datasources/remote/weather_remote_datasource.dart';
import '../../infrastructure/repositories/weather_repository_impl.dart';
import '../../infrastructure/services/location_service.dart';

// Core Providers
final secureStorageProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService();
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Shared Preferences must be initialized in main.dart');
});

final apiClientProvider = Provider<ApiClient>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  return ApiClient(secureStorage);
});

final connectivityServiceProvider = Provider<ConnectivityService>((ref) {
  return ConnectivityService();
});

final exceptionHandlerProvider = Provider<ExceptionHandler>((ref) {
  final connectivityService = ref.watch(connectivityServiceProvider);
  final secureStorage = ref.watch(secureStorageProvider);
  return ExceptionHandler(connectivityService, secureStorage);
});

// Service Providers
final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService();
});

// Data Source Providers
final weatherRemoteDatasourceProvider = Provider<WeatherRemoteDatasource>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return WeatherRemoteDatasourceImpl(apiClient);
});

final weatherLocalDatasourceProvider = Provider<WeatherLocalDatasource>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return WeatherLocalDatasourceImpl(prefs);
});

// Repository Providers
final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  final remoteDatasource = ref.watch(weatherRemoteDatasourceProvider);
  final localDatasource = ref.watch(weatherLocalDatasourceProvider);
  final connectivityService = ref.watch(connectivityServiceProvider);
  final locationService = ref.watch(locationServiceProvider);

  return WeatherRepositoryImpl(
    remoteDatasource,
    localDatasource,
    connectivityService,
    locationService,
  );
});

// Use Case Providers
final getCurrentWeatherUseCaseProvider = Provider<GetCurrentWeatherUseCase>((ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  return GetCurrentWeatherUseCase(repository);
});

final getForecastUseCaseProvider = Provider<GetForecastUseCase>((ref) {
  final repository = ref.watch(weatherRepositoryProvider);
  return GetForecastUseCase(repository);
});

// Settings Providers
final unitPreferenceProvider = StateProvider<String>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return prefs.getString(ApiConstants.unitPreference) ?? AppConstants.availableUnits.first;
});

// API Key Provider
final apiKeyProvider = FutureProvider<String?>((ref) async {
  final secureStorage = ref.watch(secureStorageProvider);
  return await secureStorage.read(key: ApiConstants.apiKeyStorage);
});