import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/language_selection_screen.dart';
import '../../presentation/screens/search_location_screen.dart';
import '../../presentation/screens/settings_screen.dart';
import '../../presentation/screens/theme_selection_screen.dart';
import '../../presentation/screens/weather_details_screen.dart';
import 'custom_transitions.dart';

// Router provider for Riverpod
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        pageBuilder:
            (context, state) => const MaterialPage(child: HomeScreen()),
        routes: [
          GoRoute(
            name: 'search',
            path: 'search',
            pageBuilder:
                (context, state) => CustomTransitions.slideTransition(
                  context: context,
                  state: state,
                  child: const SearchLocationScreen(),
                ),
          ),
          GoRoute(
            name: 'settings',
            path: 'settings',
            pageBuilder:
                (context, state) => CustomTransitions.slideTransition(
                  context: context,
                  state: state,
                  child: const SettingsScreen(),
                ),
          ),
          GoRoute(
            name: 'themes',
            path: 'themes',
            pageBuilder:
                (context, state) => CustomTransitions.slideTransition(
                  context: context,
                  state: state,
                  child: const ThemeSelectionScreen(),
                ),
          ),
          GoRoute(
            name: 'language',
            path: 'language',
            pageBuilder:
                (context, state) => CustomTransitions.slideTransition(
                  context: context,
                  state: state,
                  child: const LanguageSelectionScreen(),
                ),
          ),
          GoRoute(
            name: 'weatherDetails',
            path: 'details',
            pageBuilder: (context, state) {
              return CustomTransitions.scaleTransition(
                context: context,
                state: state,
                child: const WeatherDetailsScreen(),
              );
            },
          ),
        ],
      ),
    ],
    errorBuilder:
        (context, state) => Scaffold(
          body: Center(child: Text('Route not found: ${state.uri}')),
        ),
  );
});

// Route names as constants for easy reference
class AppRoutes {
  static const String home = 'home';
  static const String search = 'search';
  static const String settings = 'settings';
  static const String themes = 'themes';
  static const String language = 'language';
  static const String weatherDetails = 'weatherDetails';
}
