import 'package:flutter/material.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/presentation/providers/location_provider.dart';
import 'package:flutter_app/presentation/providers/providers.dart';
import 'package:flutter_app/presentation/providers/weather_providers.dart';
import 'package:flutter_app/presentation/states/weather_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/constants/app_constants.dart';
import '../../core/router/router_config.dart';
import '../widgets/error_widget.dart';
import '../widgets/forecast_list.dart';
import '../widgets/loading_widget.dart';
import '../widgets/weather_card.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get weather state
    final weatherState = ref.watch(weatherStateProvider);
    final weatherNotifier = ref.watch(weatherStateProvider.notifier);
    final locationState = ref.watch(locationProvider);

    // Get the environment configuration
    final envConfig = ref.watch(envConfigProvider);

    // Effect to fetch weather on first load
    useEffect(() {
      // Delay the provider update with a microtask to avoid the "Modifying a provider during build" error
      Future.microtask(() {
        // Check if we need to load data (either no data or data is from cache)
        if (weatherState.currentWeather == null ||
            (weatherState.isFromCache && !weatherState.isLoading)) {
          weatherNotifier.fetchWeatherAndForecast();
        }
      });
      return null;
    }, const []);

    // Refresh control hook
    final refreshKey = useRef(GlobalKey<RefreshIndicatorState>());

    // Get the unit label for display
    final unitLabel =
        AppConstants.unitLabels[weatherState.units] ?? 'Celsius (°C)';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).appTitle + (envConfig.isDev ? ' Dev' : ' Prod'),
        ),
        actions: [
          // Theme button
          IconButton(
            icon: const Icon(Icons.color_lens),
            tooltip: S.of(context).customizeTheme,
            onPressed: () {
              context.pushNamed(AppRoutes.themes);
            },
          ),
          // Search button
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              final result = await context.pushNamed(AppRoutes.search);

              // If we got a location back, refresh weather
              if (result == true) {
                weatherNotifier.fetchWeatherAndForecast();
              }
            },
          ),
          // Settings button
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () async {
              final result = await context.pushNamed(AppRoutes.settings);

              // If we updated settings, refresh weather
              if (result == true) {
                weatherNotifier.fetchWeatherAndForecast();
              }
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        key: refreshKey.value,
        onRefresh: () => weatherNotifier.refreshWeather(),
        child: _buildBody(context, weatherState, weatherNotifier),
      ),
      // Show snackbar if there's an error but we're showing cached data
      bottomSheet:
          (weatherState.errorMessage != null &&
                  weatherState.isFromCache &&
                  weatherState.currentWeather != null)
              ? Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.errorContainer,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Theme.of(context).colorScheme.onErrorContainer,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        weatherState.errorMessage!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onErrorContainer,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => weatherNotifier.refreshWeather(),
                      style: TextButton.styleFrom(
                        foregroundColor:
                            Theme.of(context).colorScheme.onErrorContainer,
                      ),
                      child: Text(S.of(context).retry),
                    ),
                  ],
                ),
              )
              : null,
    );
  }

  Widget _buildBody(
    BuildContext context,
    WeatherState weatherState,
    WeatherNotifier weatherNotifier,
  ) {
    // Show loading state
    if (weatherState.isLoading && weatherState.currentWeather == null) {
      return const LoadingWidget();
    }

    // Show error state
    if (weatherState.errorMessage != null &&
        weatherState.currentWeather == null) {
      return ErrorDisplayWidget(
        message: weatherState.errorMessage!,
        onRetry: () => weatherNotifier.refreshWeather(),
      );
    }

    // Show weather data
    if (weatherState.currentWeather != null) {
      return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Current weather card - now tappable to view details
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRoutes.weatherDetails);
              },
              child: WeatherCard(
                weather: weatherState.currentWeather!,
                isFromCache: weatherState.isFromCache,
              ),
            ),

            // Tap to see more details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton.icon(
                icon: const Icon(Icons.info_outline),
                label: const Text('View detailed weather information'),
                onPressed: () {
                  context.pushNamed(AppRoutes.weatherDetails);
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
              ),
            ),

            // Forecast data
            if (weatherState.forecast != null) ...[
              // Hourly forecast
              if (weatherState.forecast!.hourly.isNotEmpty)
                HourlyForecastList(
                  hourlyForecasts: weatherState.forecast!.hourly,
                  units: weatherState.units,
                ),

              const SizedBox(height: 16),

              // Daily forecast
              if (weatherState.forecast!.daily.isNotEmpty)
                DailyForecastList(
                  dailyForecasts: weatherState.forecast!.daily,
                  units: weatherState.units,
                ),

              const SizedBox(height: 16),

              // Weather alerts if any
              if (weatherState.forecast!.alerts != null &&
                  weatherState.forecast!.alerts!.isNotEmpty)
                AlertsList(alerts: weatherState.forecast!.alerts!),

              const SizedBox(height: 32),
            ],

            // Last updated info
            if (weatherState.lastUpdated != null)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Text(
                  S
                      .of(context)
                      .lastUpdated(
                        _formatLastUpdated(weatherState.lastUpdated!),
                      ),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

            const SizedBox(height: 16),
          ],
        ),
      );
    }

    // Fallback loading state
    return const LoadingWidget();
  }

  String _formatLastUpdated(DateTime lastUpdated) {
    final now = DateTime.now();
    final difference = now.difference(lastUpdated);
    final s = S.current;

    if (difference.inMinutes < 1) {
      return s.justNow;
    } else if (difference.inMinutes < 60) {
      return s.minutesAgo(difference.inMinutes);
    } else if (difference.inHours < 24) {
      return s.hoursAgo(difference.inHours);
    } else {
      return s.daysAgo(difference.inDays);
    }
  }
}
