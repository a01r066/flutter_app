import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/services/firebase_service.dart';

/// Provider for analytics events
final analyticsProvider = Provider<Analytics>((ref) {
  final firebaseService = ref.watch(firebaseServiceProvider);
  return Analytics(firebaseService);
});

/// Helper class for tracking analytic events
class Analytics {
  final FirebaseService _firebaseService;

  Analytics(this._firebaseService);

  /// Track a screen view
  Future<void> trackScreenView(String screenName) async {
    await _firebaseService.logEvent(
      name: 'screen_view',
      parameters: {'screen_name': screenName},
    );
  }

  /// Track a user action
  Future<void> trackUserAction(
    String action, {
    Map<String, dynamic>? parameters,
  }) async {
    await _firebaseService.logEvent(
      name: 'user_action',
      parameters: {'action': action, ...?parameters},
    );
  }

  /// Track a search action
  Future<void> trackSearch(String searchTerm) async {
    await _firebaseService.logEvent(
      name: 'search',
      parameters: {'search_term': searchTerm},
    );
  }

  /// Track a weather fetch
  Future<void> trackWeatherFetch({
    required String location,
    required String source,
    bool isSuccess = true,
  }) async {
    await _firebaseService.logEvent(
      name: 'weather_fetch',
      parameters: {
        'location': location,
        'source': source, // api, cache, etc.
        'status': isSuccess ? 'success' : 'failure',
      },
    );
  }

  /// Track a settings change
  Future<void> trackSettingsChange(String setting, String value) async {
    await _firebaseService.logEvent(
      name: 'settings_change',
      parameters: {'setting': setting, 'value': value},
    );
  }

  /// Track an error
  Future<void> trackError(String errorType, String errorMessage) async {
    await _firebaseService.logEvent(
      name: 'app_error',
      parameters: {'error_type': errorType, 'error_message': errorMessage},
    );

    // Also log to Crashlytics
    await _firebaseService.logError(
      errorMessage,
      StackTrace.current,
      reason: errorType,
      fatal: false,
    );
  }
}
