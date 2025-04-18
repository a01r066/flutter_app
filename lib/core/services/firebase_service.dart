import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/env_config.dart';

/// Firebase configurations for each flavor
class CustomFirebaseOption {
  /// Firebase options for development environment
  static FirebaseOptions get devOptions => const FirebaseOptions(
    apiKey: "AIzaSyD8AXZeF3DaCS0KO2_AgzCflBLAvF7QrMI",
    appId: "1:877281649166:ios:9416768ae681096008925f",
    messagingSenderId: "877281649166",
    projectId: "owa-dev-d44d3",
    storageBucket: "owa-dev-d44d3.firebasestorage.app",
  );

  /// Firebase options for production environment
  static FirebaseOptions get prodOptions => const FirebaseOptions(
    apiKey: "AIzaSyCvkCDJZV4Adjvog2pTTlffFeV1lrr5QlY",
    appId: "1:899931857387:android:7b3257107283bc0a2bf9ae",
    messagingSenderId: "899931857387",
    projectId: "owa-prod-ffed3",
    storageBucket: "owa-prod-ffed3.firebasestorage.app",
  );
}

/// Service class for Firebase
class FirebaseService {
  final FirebaseAnalytics _analytics;
  final FirebaseCrashlytics _crashlytics;

  FirebaseService(this._analytics, this._crashlytics);

  /// Initialize Firebase based on the current flavor
  static Future<FirebaseService> initialize(EnvConfig config) async {
    // Get the appropriate Firebase options based on the current flavor
    final options =
        config.isDev
            ? CustomFirebaseOption.devOptions
            : CustomFirebaseOption.prodOptions;

    // Initialize Firebase with the options
    await Firebase.initializeApp(options: options);

    // Initialize Firebase Analytics
    final analytics = FirebaseAnalytics.instance;

    // Initialize Firebase Crashlytics
    final crashlytics = FirebaseCrashlytics.instance;

    // Set collection enabled based on flavor
    await crashlytics.setCrashlyticsCollectionEnabled(!config.isDev);

    // Set user identifier for both analytics and crashlytics
    await analytics.setAnalyticsCollectionEnabled(!config.isDev);

    // Pass all uncaught errors to Crashlytics
    FlutterError.onError = (errorDetails) {
      crashlytics.recordFlutterFatalError(errorDetails);
    };

    // Pass all uncaught asynchronous errors to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      crashlytics.recordError(error, stack, fatal: true);
      return true;
    };

    // Log app open event
    await analytics.logAppOpen();

    // Set user properties
    await analytics.setUserProperty(
      name: 'app_version',
      value: config.versionWithBuild,
    );

    await analytics.setUserProperty(
      name: 'environment',
      value: config.flavor.name,
    );

    return FirebaseService(analytics, crashlytics);
  }

  /// Log a custom event in Firebase Analytics
  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    await _analytics.logEvent(name: name, parameters: parameters);
  }

  /// Log a custom error to Crashlytics
  Future<void> logError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<Object> information = const [],
    bool fatal = false,
  }) async {
    await _crashlytics.recordError(
      exception,
      stack,
      reason: reason,
      information: information,
      fatal: fatal,
    );
  }

  /// Set a user ID for both Analytics and Crashlytics
  Future<void> setUserId(String userId) async {
    await _analytics.setUserId(id: userId);
    await _crashlytics.setUserIdentifier(userId);
  }

  /// Reset the user ID
  Future<void> resetUserId() async {
    await _analytics.setUserId(id: null);
    await _crashlytics.setUserIdentifier('');
  }
}

/// Provider for Firebase service
final firebaseServiceProvider = Provider<FirebaseService>((ref) {
  throw UnimplementedError('Firebase service must be initialized before use');
});
