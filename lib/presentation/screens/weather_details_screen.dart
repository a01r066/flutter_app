import 'package:flutter/material.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/presentation/providers/weather_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_constants.dart';
import '../../domain/entities/weather.dart';

class WeatherDetailsScreen extends HookConsumerWidget {
  const WeatherDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherStateProvider);
    final currentWeather = weatherState.currentWeather;

    if (currentWeather == null) {
      return Scaffold(
        appBar: AppBar(title: Text(S.of(context).weatherDetails)),
        body: const Center(child: Text('No weather data available')),
      );
    }

    final theme = Theme.of(context);
    final tempUnit = AppConstants.temperatureUnits[weatherState.units] ?? '°C';
    final speedUnit = AppConstants.speedUnits[weatherState.units] ?? 'm/s';

    return Scaffold(
      appBar: AppBar(title: Text(currentWeather.cityName)),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
            // Added more bottom padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Weather Header
                _buildWeatherHeader(context, currentWeather, tempUnit),

                const SizedBox(height: 24),

                // Detailed stats
                Text(
                  S.of(context).detailedInformation,
                  style: theme.textTheme.titleLarge,
                ),
                const SizedBox(height: 12),

                // Weather details grid
                _buildDetailedWeatherGrid(
                  context,
                  currentWeather,
                  tempUnit,
                  speedUnit,
                ),

                const SizedBox(height: 20),

                // Sun timing section
                _buildSunTimingSection(context, currentWeather),

                const SizedBox(height: 20),

                // Weather description
                _buildWeatherDescription(context, currentWeather),

                const SizedBox(height: 20),

                // Location info
                _buildLocationInfo(context, currentWeather),

                const SizedBox(height: 32),

                // Last updated info
                if (weatherState.lastUpdated != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      'Last updated: ${DateFormat('E, dd MMM yyyy - hh:mm a').format(weatherState.lastUpdated!)}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherHeader(
    BuildContext context,
    Weather weather,
    String tempUnit,
  ) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 340;

        if (isNarrow) {
          // Vertical layout for narrow screens
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Weather Icon
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Image.network(
                    'https://openweathermap.org/img/wn/${weather.icon}@2x.png',
                    width: 80,
                    height: 80,
                    errorBuilder:
                        (context, error, stackTrace) =>
                            const Icon(Icons.cloud, size: 60),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Temperature and condition
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Main temperature
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${weather.temperature.toStringAsFixed(1)}',
                        style: theme.textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(tempUnit, style: theme.textTheme.titleLarge),
                    ],
                  ),

                  // Weather condition
                  Text(
                    _capitalizeEachWord(weather.description),
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8),

                  // Feels like
                  Text(
                    'Feels like ${weather.feelsLike.toStringAsFixed(1)}$tempUnit',
                    style: theme.textTheme.bodyMedium,
                  ),

                  // Min-Max
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.arrow_downward, size: 14),
                      Text(
                        ' ${weather.tempMin.toStringAsFixed(1)}$tempUnit',
                        style: theme.textTheme.bodySmall,
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_upward, size: 14),
                      Text(
                        ' ${weather.tempMax.toStringAsFixed(1)}$tempUnit',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        } else {
          // Horizontal layout for wider screens
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Weather Icon
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Image.network(
                    'https://openweathermap.org/img/wn/${weather.icon}@2x.png',
                    width: 80,
                    height: 80,
                    errorBuilder:
                        (context, error, stackTrace) =>
                            const Icon(Icons.cloud, size: 60),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // Temperature and condition
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Main temperature
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${weather.temperature.toStringAsFixed(1)}',
                          style: theme.textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(tempUnit, style: theme.textTheme.titleLarge),
                      ],
                    ),

                    // Weather condition
                    Text(
                      _capitalizeEachWord(weather.description),
                      style: theme.textTheme.titleMedium,
                    ),

                    const SizedBox(height: 8),

                    // Feels like
                    Text(
                      'Feels like ${weather.feelsLike.toStringAsFixed(1)}$tempUnit',
                      style: theme.textTheme.bodyMedium,
                    ),

                    // Min-Max
                    Row(
                      children: [
                        const Icon(Icons.arrow_downward, size: 14),
                        Text(
                          ' ${weather.tempMin.toStringAsFixed(1)}$tempUnit',
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_upward, size: 14),
                        Text(
                          ' ${weather.tempMax.toStringAsFixed(1)}$tempUnit',
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buildDetailedWeatherGrid(
    BuildContext context,
    Weather weather,
    String tempUnit,
    String speedUnit,
  ) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        // Adjust the cross axis count based on available width
        final crossAxisCount = constraints.maxWidth > 500 ? 3 : 2;

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: 1.5,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 8,
          // 8 detail cards
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return _buildDetailCard(
                  context,
                  icon: Icons.thermostat,
                  title: S.of(context).temperatureDetail,
                  value: '${weather.temperature.toStringAsFixed(1)}$tempUnit',
                  subtitle: S.of(context).currentLabel,
                );
              case 1:
                return _buildDetailCard(
                  context,
                  icon: Icons.device_thermostat,
                  title: S.of(context).feelsLikeDetail,
                  value: '${weather.feelsLike.toStringAsFixed(1)}$tempUnit',
                  subtitle: S.of(context).perceivedLabel,
                );
              case 2:
                return _buildDetailCard(
                  context,
                  icon: Icons.water_drop,
                  title: S.of(context).humidityDetail,
                  value: '${weather.humidity}%',
                  subtitle: S.of(context).relativeLabel,
                );
              case 3:
                return _buildDetailCard(
                  context,
                  icon: Icons.compress,
                  title: S.of(context).pressureDetail,
                  value: '${weather.pressure} hPa',
                  subtitle: S.of(context).seaLevelLabel,
                );
              case 4:
                return _buildDetailCard(
                  context,
                  icon: Icons.air,
                  title: S.of(context).windSpeedDetail,
                  value: '${weather.windSpeed.toStringAsFixed(1)} $speedUnit',
                  subtitle: S.of(context).currentLabel,
                );
              case 5:
                return _buildDetailCard(
                  context,
                  icon: Icons.explore,
                  title: S.of(context).windDirectionDetail,
                  value: _getWindDirection(weather.windDegree),
                  subtitle: '${weather.windDegree}°',
                );
              case 6:
                return _buildDetailCard(
                  context,
                  icon: Icons.cloud,
                  title: S.of(context).cloudinessDetail,
                  value: '${weather.clouds}%',
                  subtitle: S.of(context).coverageLabel,
                );
              case 7:
                return _buildDetailCard(
                  context,
                  icon: Icons.visibility,
                  title: S.of(context).visibilityDetail,
                  value: '${(weather.pressure / 10).toStringAsFixed(1)} km',
                  subtitle: S.of(context).approximateLabel,
                );
              default:
                return const SizedBox();
            }
          },
        );
      },
    );
  }

  Widget _buildDetailCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
    required String subtitle,
  }) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 16, color: theme.colorScheme.primary),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  title,
                  style: theme.textTheme.titleSmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subtitle,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withOpacity(0.7),
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildSunTimingSection(BuildContext context, Weather weather) {
    final theme = Theme.of(context);

    // Since the Weather entity doesn't have sunrise/sunset data,
    // we'll show the local time instead and leave a note
    final now = DateTime.now();
    final hours = now.hour;
    final isDaytime = hours >= 6 && hours < 18;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Time of Day', style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        LayoutBuilder(
          builder: (context, constraints) {
            // Check for narrow screen
            final isNarrow = constraints.maxWidth < 340;

            if (isNarrow) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    isDaytime ? Icons.wb_sunny : Icons.nightlight_round,
                    size: 48,
                    color:
                        isDaytime
                            ? theme.colorScheme.primary
                            : theme.colorScheme.secondary,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    isDaytime ? 'Daytime' : 'Nighttime',
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Current local time:',
                    style: theme.textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    DateFormat('hh:mm a').format(now),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            } else {
              return Row(
                children: [
                  Icon(
                    isDaytime ? Icons.wb_sunny : Icons.nightlight_round,
                    size: 48,
                    color:
                        isDaytime
                            ? theme.colorScheme.primary
                            : theme.colorScheme.secondary,
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isDaytime ? 'Daytime' : 'Nighttime',
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          'Current local time:',
                          style: theme.textTheme.bodySmall,
                        ),
                        Text(
                          DateFormat('hh:mm a').format(now),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
        const SizedBox(height: 12),
        Text(
          'Note: Sunrise and sunset data is available in the forecast view',
          style: theme.textTheme.bodySmall?.copyWith(
            fontStyle: FontStyle.italic,
            fontSize: 11,
          ),
        ),
      ],
    );
  }

  Widget _buildWeatherDescription(BuildContext context, Weather weather) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Weather Condition', style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withOpacity(0.3),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    _getWeatherIcon(weather.main),
                    size: 24,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    child: Text(
                      weather.main,
                      style: theme.textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                _getWeatherDescription(weather.main, weather.description),
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLocationInfo(BuildContext context, Weather weather) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Location', style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: theme.colorScheme.outline.withOpacity(0.3),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: theme.colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      weather.cityName,
                      style: theme.textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Lat: ${weather.latitude.toStringAsFixed(4)}, '
                      'Lon: ${weather.longitude.toStringAsFixed(4)}',
                      style: theme.textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Helper methods
  String _getWindDirection(int degrees) {
    const directions = ['N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW', 'N'];
    return directions[(degrees / 45).round() % 8];
  }

  String _capitalizeEachWord(String text) {
    if (text.isEmpty) return text;
    return text
        .split(' ')
        .map(
          (word) =>
              word.isEmpty
                  ? ''
                  : '${word[0].toUpperCase()}${word.substring(1)}',
        )
        .join(' ');
  }

  IconData _getWeatherIcon(String main) {
    switch (main.toLowerCase()) {
      case 'clear':
        return Icons.wb_sunny;
      case 'clouds':
        return Icons.cloud;
      case 'rain':
        return Icons.water_drop;
      case 'drizzle':
        return Icons.grain;
      case 'thunderstorm':
        return Icons.flash_on;
      case 'snow':
        return Icons.ac_unit;
      case 'mist':
      case 'fog':
      case 'haze':
        return Icons.cloud;
      default:
        return Icons.wb_sunny;
    }
  }

  String _getWeatherDescription(String main, String description) {
    final Map<String, String> detailedDescriptions = {
      'clear':
          'Clear skies with excellent visibility. Perfect weather for outdoor activities.',
      'clouds':
          'Cloud cover is present, which might affect temperature and sunlight.',
      'rain':
          'Rainfall is occurring. It\'s advisable to carry an umbrella or raincoat.',
      'drizzle':
          'Light rain is falling. The precipitation is finer than regular rain.',
      'thunderstorm':
          'Thunderstorm activity with possible lightning and heavy rain. Take shelter indoors.',
      'snow':
          'Snowfall is occurring. Roads may be slippery and visibility might be reduced.',
      'mist': 'Thin fog is present, which might slightly reduce visibility.',
      'fog':
          'Dense water vapor is reducing visibility significantly. Drive carefully.',
      'haze':
          'Atmospheric dust or smoke is causing reduced visibility and air quality.',
    };

    return detailedDescriptions[main.toLowerCase()] ??
        'Current weather condition is $_capitalizeEachWord(description).';
  }
}
