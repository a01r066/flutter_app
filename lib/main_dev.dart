import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'core/config/env_config.dart';
import 'core/services/firebase_service.dart';
import 'presentation/providers/providers.dart';

void main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Initialize environment configuration
  final envConfig = EnvConfig();
  await envConfig.initialize(Flavor.dev);

  // Initialize Firebase
  final firebaseService = await FirebaseService.initialize(envConfig);

  // Initialize SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();

  // Run the app with ProviderScope
  runApp(
    ProviderScope(
      overrides: [
        // Override the SharedPreferences provider with the instance
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        // Override the Firebase service provider
        firebaseServiceProvider.overrideWithValue(firebaseService),
      ],
      child: const WeatherApp(),
    ),
  );
}
