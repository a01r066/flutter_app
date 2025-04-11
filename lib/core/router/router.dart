import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/forecast.dart';
import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/search_location_screen.dart';
import '../../presentation/screens/settings_screen.dart';
import '../../presentation/screens/weather_details_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'search',
            builder: (context, state) => const SearchLocationScreen(),
          ),
          GoRoute(
            path: 'settings',
            builder: (context, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: 'details',
            builder: (context, state) {
              final forecast = state.extra as Map<String, dynamic>;
              return WeatherDetailsScreen(
                forecast: forecast['forecast'] as DailyForecast,
                units: forecast['units'] as String,
              );
            },
          ),
        ],
      ),
    ],
    errorBuilder:
        (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: Center(child: Text('Page not found: ${state.uri.path}')),
        ),
  );
}
