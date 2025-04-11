import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/constants/app_constants.dart';
import 'core/router/router_config.dart';
import 'core/theme/theme_config.dart';
import 'presentation/providers/theme_provider.dart';
import 'presentation/states/theme_state.dart';

class WeatherApp extends ConsumerWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the router from the provider
    final router = ref.watch(routerProvider);

    // Get theme state from provider
    final themeState = ref.watch(themeStateProvider);

    // Determine which theme to use based on theme state
    ThemeData lightTheme;
    ThemeData darkTheme;

    switch (themeState.themeType) {
      case ThemeType.vibrant:
        lightTheme = ThemeConfig.vibrantLightTheme();
        darkTheme = ThemeConfig.vibrantDarkTheme();
        break;
      case ThemeType.professional:
        lightTheme = ThemeConfig.professionalLightTheme();
        darkTheme = ThemeConfig.professionalDarkTheme();
        break;
      case ThemeType.system:
      default:
        // Use default Material 3 themes for system mode
        final colorScheme = ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        );

        lightTheme = ThemeData(colorScheme: colorScheme, useMaterial3: true);

        darkTheme = ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        );
        break;
    }

    // Determine theme mode
    ThemeMode themeMode;
    if (themeState.themeType == ThemeType.system) {
      themeMode = ThemeMode.system;
    } else {
      themeMode = themeState.isDarkMode ? ThemeMode.dark : ThemeMode.light;
    }

    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
