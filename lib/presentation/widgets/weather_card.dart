import 'package:flutter/material.dart';
import '../../core/constants/app_constants.dart';
import '../../domain/entities/weather.dart';
import 'package:intl/intl.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;
  final bool isFromCache;

  const WeatherCard({
    super.key,
    required this.weather,
    this.isFromCache = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    // Get the temperature unit symbol
    final tempUnit = AppConstants.temperatureUnits[weather.units ?? 'metric'] ?? '°C';
    final speedUnit = AppConstants.speedUnits[weather.units ?? 'metric'] ?? 'm/s';

    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Location row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.location_on, size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          weather.cityName,
                          style: textTheme.titleLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                // Time and cache indicator
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      DateFormat('E, MMM d, yyyy').format(weather.dateTime),
                      style: textTheme.bodySmall,
                    ),
                    Text(
                      DateFormat('h:mm a').format(weather.dateTime),
                      style: textTheme.bodySmall,
                    ),
                    if (isFromCache)
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'Cached',
                          style: textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Weather info
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Temperature section
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Current temperature
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${weather.temperature.toStringAsFixed(1)}',
                            style: textTheme.displayLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            tempUnit,
                            style: textTheme.headlineSmall,
                          ),
                        ],
                      ),

                      // Feels like
                      Text(
                        'Feels like ${weather.feelsLike.toStringAsFixed(1)}$tempUnit',
                        style: textTheme.bodyMedium,
                      ),

                      const SizedBox(height: 8),

                      // Min/Max temperatures
                      Row(
                        children: [
                          const Icon(Icons.arrow_downward, size: 16),
                          Text(
                            '${weather.tempMin.toStringAsFixed(1)}$tempUnit',
                            style: textTheme.bodyMedium,
                          ),
                          const SizedBox(width: 16),
                          const Icon(Icons.arrow_upward, size: 16),
                          Text(
                            '${weather.tempMax.toStringAsFixed(1)}$tempUnit',
                            style: textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Weather icon and condition
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Weather icon
                      Image.network(
                        'https://openweathermap.org/img/wn/${weather.icon}@2x.png',
                        width: 100,
                        height: 100,
                        errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.cloud, size: 100),
                      ),

                      // Weather condition
                      Text(
                        weather.main,
                        style: textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),

                      // Weather description
                      Text(
                        _capitalizeFirst(weather.description),
                        style: textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Additional weather details
            _buildWeatherDetailsGrid(theme, tempUnit, speedUnit),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherDetailsGrid(ThemeData theme, String tempUnit, String speedUnit) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      children: [
        _buildDetailItem(
          theme,
          icon: Icons.water_drop,
          label: 'Humidity',
          value: '${weather.humidity}%',
        ),
        _buildDetailItem(
          theme,
          icon: Icons.air,
          label: 'Wind',
          value: '${weather.windSpeed.toStringAsFixed(1)} $speedUnit',
        ),
        _buildDetailItem(
          theme,
          icon: Icons.compress,
          label: 'Pressure',
          value: '${weather.pressure} hPa',
        ),
        _buildDetailItem(
          theme,
          icon: Icons.cloud,
          label: 'Cloudiness',
          value: '${weather.clouds}%',
        ),
      ],
    );
  }

  Widget _buildDetailItem(
      ThemeData theme, {
        required IconData icon,
        required String label,
        required String value,
      }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: theme.textTheme.bodySmall,
              ),
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

  String _capitalizeFirst(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}