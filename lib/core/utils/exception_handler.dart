import 'package:flutter/foundation.dart';
import '../api/api_exceptions.dart';
import '../constants/app_constants.dart';
import '../storage/secure_storage_service.dart';
import '../constants/api_constants.dart';
import 'connectivity_service.dart';

class ExceptionHandler {
  final ConnectivityService _connectivityService;
  final SecureStorageService _secureStorage;

  ExceptionHandler(this._connectivityService, this._secureStorage);

  Future<String> handleException(Exception exception) async {
    if (exception is ApiException) {
      return await _handleApiException(exception);
    } else {
      // For unknown exceptions, provide a generic message
      _logException('Unknown Exception', exception);
      return AppConstants.genericError;
    }
  }

  Future<String> _handleApiException(ApiException exception) async {
    if (exception is NetworkException) {
      final isConnected = await _connectivityService.isConnected();
      if (!isConnected) {
        return AppConstants.noInternetError;
      }
      return 'Network error: ${exception.message}';
    } else if (exception is ServerException) {
      return 'Server error: ${exception.message}';
    } else if (exception is CacheException) {
      return 'Cache error: ${exception.message}';
    } else if (exception is LocationException) {
      return 'Location error: ${exception.message}';
    } else if (exception is UnauthorizedException) {
      // Check if API key is missing
      final apiKey = await _secureStorage.read(key: ApiConstants.apiKeyStorage);
      if (apiKey == null || apiKey.isEmpty) {
        return AppConstants.apiKeyMissing;
      }
      return 'Authentication error: ${exception.message}';
    } else {
      return exception.message;
    }
  }

  void _logException(String type, Exception exception) {
    if (kDebugMode) {
      print('[$type] Exception: $exception');
      if (exception is Error) {
        print('Stacktrace: ${(exception as Error).stackTrace}');
      }
    }
  }
}