import 'dart:convert';

import 'package:dio/dio.dart';

import '../constants/api_constants.dart';
import '../storage/secure_storage_service.dart';

class ApiKeyInterceptor extends Interceptor {
  final SecureStorageService _secureStorage;

  ApiKeyInterceptor(this._secureStorage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final apiKey =
        await _secureStorage.read(key: ApiConstants.apiKeyStorage) ??
        ApiConstants.apiKeyStorage;

    if (apiKey.isNotEmpty) {
      options.queryParameters[ApiConstants.apiKey] = apiKey;
    }

    return super.onRequest(options, handler);
  }
}

class LoggingInterceptor extends Interceptor {
  final bool isDebugMode;

  LoggingInterceptor({this.isDebugMode = true});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (isDebugMode) {
      print(
        '┌─────────────────────────────────────────────────────────────────────',
      );
      print('│ 🌐 REQUEST: ${options.method} ${options.uri}');
      print('│ 📃 HEADERS: ${_formatHeaders(options.headers)}');
      print('│ 📦 PARAMETERS: ${_formatParams(options.queryParameters)}');
      if (options.data != null) {
        print('│ 📄 BODY: ${_formatData(options.data)}');
      }
      print(
        '└─────────────────────────────────────────────────────────────────────',
      );
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (isDebugMode) {
      print(
        '┌─────────────────────────────────────────────────────────────────────',
      );
      print(
        '│ ✅ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}',
      );
      print(
        '│ ⏱️ TIME: ${response.requestOptions.extra['time'] ?? 'unknown'} ms',
      );
      print('│ 📃 HEADERS: ${_formatHeaders(response.headers.map)}');
      if (response.data != null) {
        print('│ 📄 BODY: ${_formatData(response.data)}');
      }
      print(
        '└─────────────────────────────────────────────────────────────────────',
      );
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (isDebugMode) {
      print(
        '┌─────────────────────────────────────────────────────────────────────',
      );
      print('│ ❌ ERROR: ${err.type} - ${err.message}');
      print(
        '│ 🔄 REQUEST: ${err.requestOptions.method} ${err.requestOptions.uri}',
      );
      if (err.response != null) {
        print('│ 📊 STATUS: ${err.response?.statusCode}');
        print('│ 📄 BODY: ${_formatData(err.response?.data)}');
      }
      print(
        '└─────────────────────────────────────────────────────────────────────',
      );
    }
    super.onError(err, handler);
  }

  String _formatHeaders(Map<String, dynamic> headers) {
    final sanitizedHeaders = Map<String, dynamic>.from(headers);

    // Remove sensitive information (like auth tokens)
    if (sanitizedHeaders.containsKey('authorization')) {
      sanitizedHeaders['authorization'] = '******';
    }

    return jsonEncode(sanitizedHeaders);
  }

  String _formatParams(Map<String, dynamic> params) {
    final sanitizedParams = Map<String, dynamic>.from(params);

    // Hide API key
    if (sanitizedParams.containsKey(ApiConstants.apiKey)) {
      sanitizedParams[ApiConstants.apiKey] = '******';
    }

    return jsonEncode(sanitizedParams);
  }

  String _formatData(dynamic data) {
    if (data is Map || data is List) {
      try {
        // Try to encode as JSON with indentation for better readability
        const encoder = JsonEncoder.withIndent('  ');
        return encoder.convert(data);
      } catch (e) {
        return data.toString();
      }
    } else if (data is String) {
      // Try to parse as JSON for better formatting
      try {
        final jsonData = jsonDecode(data);
        const encoder = JsonEncoder.withIndent('  ');
        return encoder.convert(jsonData);
      } catch (e) {
        return data;
      }
    }
    return data.toString();
  }
}

class ConnectivityInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Start timer for request
    options.extra['startTime'] = DateTime.now().millisecondsSinceEpoch;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Calculate request time
    final startTime = response.requestOptions.extra['startTime'] as int?;
    if (startTime != null) {
      final endTime = DateTime.now().millisecondsSinceEpoch;
      response.requestOptions.extra['time'] = endTime - startTime;
    }
    super.onResponse(response, handler);
  }
}

class CacheControlInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add cache control headers if needed
    if (!options.headers.containsKey('Cache-Control')) {
      options.headers['Cache-Control'] = 'public, max-age=1800'; // 30 minutes
    }
    super.onRequest(options, handler);
  }
}
