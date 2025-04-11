import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_constants.dart';
import '../../domain/entities/forecast.dart';

class HourlyForecastList extends StatelessWidget {
  final List<HourlyForecast> hourlyForecasts;
  final String? units;

  const HourlyForecastList({
    super.key,
    required this.hourlyForecasts,
    this.units,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    // Get temperature unit
    final tempUnit = AppConstants.temperatureUnits[units ?? 'metric'] ?? '°C';

    // Take only the next 24 hours (24 items)
    final nextHours = hourlyForecasts.take(24).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              const Icon(Icons.access_time),
              const SizedBox(width: 8),
              Text('Hourly Forecast', style: textTheme.titleMedium),
            ],
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: nextHours.length,
            itemBuilder: (context, index) {
              final forecast = nextHours[index];
              final hour = DateFormat('ha').format(forecast.dateTime);

              return Container(
                width: 80,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        hour,
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.network(
                        'https://openweathermap.org/img/wn/${forecast.icon}.png',
                        width: 40,
                        height: 40,
                        errorBuilder:
                            (context, error, stackTrace) =>
                                const Icon(Icons.cloud, size: 40),
                      ),
                      Text(
                        '${forecast.temperature.toStringAsFixed(1)}$tempUnit',
                        style: textTheme.bodyLarge,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.water_drop,
                            size: 14,
                            color: Colors.blue,
                          ),
                          Text(
                            '${(forecast.pop * 100).toInt()}%',
                            style: textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class DailyForecastList extends StatelessWidget {
  final List<DailyForecast> dailyForecasts;
  final String? units;

  const DailyForecastList({
    super.key,
    required this.dailyForecasts,
    this.units,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    // Get temperature unit
    final tempUnit = AppConstants.temperatureUnits[units ?? 'metric'] ?? '°C';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              const Icon(Icons.calendar_today),
              const SizedBox(width: 8),
              Text('7-Day Forecast', style: textTheme.titleMedium),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: dailyForecasts.length,
          itemBuilder: (context, index) {
            final forecast = dailyForecasts[index];
            final date = forecast.dateTime;
            final dayName =
                index == 0
                    ? 'Today'
                    : index == 1
                    ? 'Tomorrow'
                    : DateFormat('EEEE').format(date);

            return InkWell(
              onTap: () {
                context.go(
                  '/details',
                  extra: {'forecast': forecast, 'units': units ?? 'metric'},
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      // Day name
                      Expanded(
                        flex: 2,
                        child: Text(
                          dayName,
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // Weather icon and condition
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Image.network(
                              'https://openweathermap.org/img/wn/${forecast.icon}.png',
                              width: 40,
                              height: 40,
                              errorBuilder:
                                  (context, error, stackTrace) =>
                                      const Icon(Icons.cloud, size: 40),
                            ),
                            Expanded(
                              child: Text(
                                forecast.main,
                                style: textTheme.bodySmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Rain chance
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.water_drop,
                              size: 16,
                              color: Colors.blue,
                            ),
                            Text(
                              '${(forecast.pop * 100).toInt()}%',
                              style: textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),

                      // Temperature range
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${forecast.temperature.min.toStringAsFixed(0)}$tempUnit',
                              style: textTheme.bodyMedium,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '${forecast.temperature.max.toStringAsFixed(0)}$tempUnit',
                              style: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class AlertsList extends StatelessWidget {
  final List<Alert> alerts;

  const AlertsList({super.key, required this.alerts});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    if (alerts.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Icon(Icons.warning_amber, color: colorScheme.error),
              const SizedBox(width: 8),
              Text(
                'Weather Alerts',
                style: textTheme.titleMedium?.copyWith(
                  color: colorScheme.error,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: alerts.length,
          itemBuilder: (context, index) {
            final alert = alerts[index];

            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: colorScheme.errorContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Alert title and source
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            alert.event,
                            style: textTheme.titleMedium?.copyWith(
                              color: colorScheme.onErrorContainer,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'From: ${alert.senderName}',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onErrorContainer.withOpacity(
                              0.7,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    // Alert time period
                    Row(
                      children: [
                        const Icon(Icons.access_time, size: 16),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            '${DateFormat('MMM d, h:mm a').format(alert.start)} - ${DateFormat('MMM d, h:mm a').format(alert.end)}',
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // Alert description
                    Text(
                      alert.description,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onErrorContainer,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Alert tags
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children:
                          alert.tags
                              .map(
                                (tag) => Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: colorScheme.error.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Text(
                                    tag,
                                    style: textTheme.labelSmall?.copyWith(
                                      color: colorScheme.onErrorContainer,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
