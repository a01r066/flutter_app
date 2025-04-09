import 'package:dio/dio.dart';

abstract class ApiException implements Exception {
  final String message;
  final String? code;
  final dynamic data;

  ApiException(this.message, {this.code, this.data});

  @override
  String toString() => 'ApiException: $message${code != null ? ' (Code: $code)' : ''}';
}

class NetworkException extends ApiException {
  NetworkException(String message, {String? code, dynamic data})
      : super(message, code: code, data: data);
}

class ServerException extends ApiException {
  ServerException(String message, {String? code, dynamic data})
      : super(message, code: code, data: data);
}

class CacheException extends ApiException {
  CacheException(String message, {String? code, dynamic data})
      : super(message, code: code, data: data);
}

class LocationException extends ApiException {
  LocationException(String message, {String? code, dynamic data})
      : super(message, code: code, data: data);
}

class UnauthorizedException extends ApiException {
  UnauthorizedException(String message, {String? code, dynamic data})
      : super(message, code: code, data: data);
}

class ApiExceptionMapper {
  static ApiException fromDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException(
          'Connection timeout. Please check your internet connection.',
          code: exception.response?.statusCode?.toString(),
          data: exception.response?.data,
        );

      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;

        if (statusCode == 401) {
          return UnauthorizedException(
            'Invalid API key. Please check your API key in settings.',
            code: statusCode.toString(),
            data: exception.response?.data,
          );
        } else if (statusCode == 404) {
          return ServerException(
            'Resource not found. Please try again later.',
            code: statusCode.toString(),
            data: exception.response?.data,
          );
        } else if (statusCode == 429) {
          return ServerException(
            'API rate limit exceeded. Please try again later.',
            code: statusCode.toString(),
            data: exception.response?.data,
          );
        } else if (statusCode != null && statusCode >= 500) {
          return ServerException(
            'Server error. Please try again later.',
            code: statusCode.toString(),
            data: exception.response?.data,
          );
        } else {
          return ServerException(
            'Server returned an error: ${exception.message}',
            code: statusCode?.toString(),
            data: exception.response?.data,
          );
        }

      case DioExceptionType.cancel:
        return NetworkException(
          'Request was cancelled',
          code: exception.response?.statusCode?.toString(),
          data: exception.response?.data,
        );

      case DioExceptionType.unknown:
        if (exception.error != null && exception.error.toString().contains('SocketException')) {
          return NetworkException(
            'No internet connection. Please check your network.',
            code: 'SOCKET_EXCEPTION',
            data: exception.response?.data,
          );
        }
        return ServerException(
          'An unexpected error occurred: ${exception.message}',
          code: exception.response?.statusCode?.toString(),
          data: exception.response?.data,
        );

      default:
        return ServerException(
          'An unexpected error occurred: ${exception.message}',
          code: exception.response?.statusCode?.toString(),
          data: exception.response?.data,
        );
    }
  }
}