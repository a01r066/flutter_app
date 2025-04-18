import 'package:dio/dio.dart';
import 'package:flutter_app/core/config/env_config.dart';

import '../constants/api_constants.dart';
import '../storage/secure_storage_service.dart';
import 'api_exceptions.dart';
import 'api_interceptors.dart';

class ApiClient {
  final Dio _dio;
  final SecureStorageService _secureStorage;
  final EnvConfig _envConfig;

  ApiClient(this._secureStorage, this._envConfig) : _dio = Dio() {
    _dio.options.baseUrl = _envConfig.baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.options.receiveTimeout = const Duration(seconds: 10);
    _dio.options.sendTimeout = const Duration(seconds: 10);

    // Add interceptors
    _dio.interceptors.addAll([
      ApiKeyInterceptor(_secureStorage),
      ConnectivityInterceptor(),
      CacheControlInterceptor(),
      LoggingInterceptor(isDebugMode: _envConfig.isDev), // Log only in dev mode
    ]);
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      if (response.data == null) {
        throw ServerException('API returned null data');
      }

      return response;
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } catch (e) {
      throw ServerException('An unexpected error occurred: $e');
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      throw ApiExceptionMapper.fromDioException(e);
    } catch (e) {
      throw ServerException('An unexpected error occurred: $e');
    }
  }

  Future<void> setApiKey(String apiKey) async {
    await _secureStorage.write(key: ApiConstants.apiKeyStorage, value: apiKey);
  }

  Future<String?> getApiKey() async {
    return await _secureStorage.read(key: ApiConstants.apiKeyStorage);
  }
}
