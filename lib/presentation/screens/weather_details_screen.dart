import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_constants.dart';
import '../../domain/entities/forecast.dart';

class WeatherDetailsScreen extends ConsumerWidget {
  final DailyForecast forecast;
  final String units;

  const WeatherDetailsScreen({
    super.key,
    required this.forecast,
    this.units = 'metric',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    // Get temperature unit
    final tempUnit = AppConstants.temperatureUnits[units] ?? '°C';
    final speedUnit = AppConstants.speedUnits[units] ?? 'm/s';

    return Scaffold(
      appBar: AppBar(
        title: Text(DateFormat('EEEE, MMM d').format(forecast.dateTime)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Weather overview card
            Card(
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Weather icon and condition
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://openweathermap.org/img/wn/${forecast.icon}@2x.png',
                          width: 80,
                          height: 80,
                          errorBuilder:
                              (context, error, stackTrace) =>
                                  const Icon(Icons.cloud, size: 80),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(forecast.main, style: textTheme.headlineSmall),
                            Text(
                              _capitalizeFirst(forecast.description),
                              style: textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Temperature display
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Morning
                        _buildTemperatureItem(
                          context,
                          'Morning',
                          forecast.temperature.morning,
                          Icons.wb_twilight,
                          tempUnit,
                        ),

                        // Day
                        _buildTemperatureItem(
                          context,
                          'Day',
                          forecast.temperature.day,
                          Icons.wb_sunny,
                          tempUnit,
                        ),

                        // Evening
                        _buildTemperatureItem(
                          context,
                          'Evening',
                          forecast.temperature.evening,
                          Icons.nights_stay_outlined,
                          tempUnit,
                        ),

                        // Night
                        _buildTemperatureItem(
                          context,
                          'Night',
                          forecast.temperature.night,
                          Icons.nightlight_round,
                          tempUnit,
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Min/Max temperature
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: colorScheme.primary,
                          size: 20,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${forecast.temperature.min.toStringAsFixed(1)}$tempUnit',
                          style: textTheme.titleMedium,
                        ),
                        const SizedBox(width: 16),
                        Icon(
                          Icons.arrow_upward,
                          color: colorScheme.error,
                          size: 20,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${forecast.temperature.max.toStringAsFixed(1)}$tempUnit',
                          style: textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Feels like card
            Card(
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Feels Like', style: textTheme.titleMedium),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Morning
                        _buildTemperatureItem(
                          context,
                          'Morning',
                          forecast.feelsLike.morning,
                          Icons.wb_twilight,
                          tempUnit,
                        ),

                        // Day
                        _buildTemperatureItem(
                          context,
                          'Day',
                          forecast.feelsLike.day,
                          Icons.wb_sunny,
                          tempUnit,
                        ),

                        // Evening
                        _buildTemperatureItem(
                          context,
                          'Evening',
                          forecast.feelsLike.evening,
                          Icons.nights_stay_outlined,
                          tempUnit,
                        ),

                        // Night
                        _buildTemperatureItem(
                          context,
                          'Night',
                          forecast.feelsLike.night,
                          Icons.nightlight_round,
                          tempUnit,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Weather details card
            Card(
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Weather Details', style: textTheme.titleMedium),
                    const SizedBox(height: 16),
                    _buildWeatherDetailsGrid(context, tempUnit, speedUnit),
                  ],
                ),
              ),
            ),

            // Sun and precipitation card
            Card(
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sun & Precipitation', style: textTheme.titleMedium),
                    const SizedBox(height: 16),

                    // Sunrise & Sunset
                    Row(
                      children: [
                        Expanded(
                          child: _buildInfoItem(
                            context,
                            'Sunrise',
                            DateFormat('h:mm a').format(forecast.sunrise),
                            Icons.wb_sunny_outlined,
                          ),
                        ),
                        Expanded(
                          child: _buildInfoItem(
                            context,
                            'Sunset',
                            DateFormat('h:mm a').format(forecast.sunset),
                            Icons.nightlight_outlined,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // UV Index & Rain chance
                    Row(
                      children: [
                        Expanded(
                          child: _buildInfoItem(
                            context,
                            'UV Index',
                            _getUVIndexDescription(forecast.uvi),
                            Icons.wb_sunny,
                          ),
                        ),
                        Expanded(
                          child: _buildInfoItem(
                            context,
                            'Rain Chance',
                            '${(forecast.pop * 100).toInt()}%',
                            Icons.water_drop,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Rain amount if available
                    if (forecast.rain > 0)
                      _buildInfoItem(
                        context,
                        'Rain Amount',
                        '${forecast.rain.toStringAsFixed(1)} mm',
                        Icons.umbrella,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTemperatureItem(
    BuildContext context,
    String label,
    double temperature,
    IconData icon,
    String unit,
  ) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Icon(icon, size: 24),
        const SizedBox(height: 4),
        Text(label, style: textTheme.bodySmall),
        const SizedBox(height: 4),
        Text(
          '${temperature.toStringAsFixed(1)}$unit',
          style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildWeatherDetailsGrid(
    BuildContext context,
    String tempUnit,
    String speedUnit,
  ) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      children: [
        _buildDetailItem(
          context,
          icon: Icons.water_drop,
          label: 'Humidity',
          value: '${forecast.humidity}%',
        ),
        _buildDetailItem(
          context,
          icon: Icons.air,
          label: 'Wind',
          value: '${forecast.windSpeed.toStringAsFixed(1)} $speedUnit',
        ),
        _buildDetailItem(
          context,
          icon: Icons.compress,
          label: 'Pressure',
          value: '${forecast.pressure} hPa',
        ),
        _buildDetailItem(
          context,
          icon: Icons.cloud,
          label: 'Cloudiness',
          value: '${forecast.clouds}%',
        ),
      ],
    );
  }

  Widget _buildDetailItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon, size: 24, color: theme.colorScheme.primary),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(label, style: theme.textTheme.bodySmall),
              Text(
                value,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Icon(icon, size: 24, color: theme.colorScheme.primary),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: theme.textTheme.bodySmall),
            Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  String _getUVIndexDescription(double uvi) {
    if (uvi < 3) {
      return 'Low (${uvi.toStringAsFixed(1)})';
    } else if (uvi < 6) {
      return 'Moderate (${uvi.toStringAsFixed(1)})';
    } else if (uvi < 8) {
      return 'High (${uvi.toStringAsFixed(1)})';
    } else if (uvi < 11) {
      return 'Very High (${uvi.toStringAsFixed(1)})';
    } else {
      return 'Extreme (${uvi.toStringAsFixed(1)})';
    }
  }

  String _capitalizeFirst(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}
