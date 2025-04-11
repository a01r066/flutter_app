import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/constants/api_constants.dart';
import '../../core/constants/app_constants.dart';
import '../providers/providers.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Providers
    final secureStorageService = ref.watch(secureStorageProvider);
    final sharedPrefs = ref.watch(sharedPreferencesProvider);
    final apiKeyAsyncValue = ref.watch(apiKeyProvider);
    final unitPreference = ref.watch(unitPreferenceProvider);
    final unitPreferenceNotifier = ref.watch(unitPreferenceProvider.notifier);

    // State for API key input
    final apiKeyController = useTextEditingController();
    final isApiKeySaving = useState(false);
    final showApiKey = useState(false);

    // Set initial API key value
    useEffect(() {
      apiKeyAsyncValue.whenData((apiKey) {
        if (apiKey != null) {
          apiKeyController.text = apiKey;
        }
      });
      return null;
    }, [apiKeyAsyncValue]);

    // Has settings changed
    final hasChanges = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          TextButton(
            onPressed:
                hasChanges.value
                    ? () => context.pop(true)
                    : () => context.pop(),
            child: const Text('Done'),
          ),
        ],
      ),
      body: ListView(
        children: [
          // API Key Section
          ListTile(
            title: const Text('OpenWeather API Key'),
            subtitle: const Text(
              'Required for weather data. Get your free API key at openweathermap.org',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: apiKeyController,
              decoration: InputDecoration(
                labelText: 'API Key',
                hintText: 'Enter your OpenWeather API Key',
                border: const OutlineInputBorder(),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Toggle visibility
                    IconButton(
                      icon: Icon(
                        showApiKey.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        showApiKey.value = !showApiKey.value;
                      },
                    ),
                    // Save button
                    isApiKeySaving.value
                        ? Container(
                          width: 48,
                          height: 48,
                          padding: const EdgeInsets.all(12),
                          child: const CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        )
                        : IconButton(
                          icon: const Icon(Icons.save),
                          onPressed:
                              apiKeyController.text.isEmpty
                                  ? null
                                  : () async {
                                    isApiKeySaving.value = true;
                                    await secureStorageService.write(
                                      key: ApiConstants.apiKeyStorage,
                                      value: apiKeyController.text.trim(),
                                    );
                                    isApiKeySaving.value = false;
                                    hasChanges.value = true;
                                  },
                        ),
                  ],
                ),
              ),
              obscureText: !showApiKey.value,
              enableSuggestions: false,
              autocorrect: false,
              onChanged: (_) => hasChanges.value = true,
            ),
          ),

          const Divider(height: 32),

          // Units Section
          ListTile(
            title: const Text('Temperature Units'),
            subtitle: Text(
              'Current: ${AppConstants.unitLabels[unitPreference] ?? "Metric (°C)"}',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              child: Column(
                children:
                    AppConstants.availableUnits.map((unit) {
                      return RadioListTile<String>(
                        title: Text(AppConstants.unitLabels[unit] ?? unit),
                        value: unit,
                        groupValue: unitPreference,
                        onChanged: (value) async {
                          if (value != null) {
                            // Update provider
                            unitPreferenceNotifier.state = value;

                            // Save to preferences
                            await sharedPrefs.setString(
                              ApiConstants.unitPreference,
                              value,
                            );

                            hasChanges.value = true;
                          }
                        },
                      );
                    }).toList(),
              ),
            ),
          ),

          const Divider(height: 32),

          // Cache Section
          ListTile(
            title: const Text('Cache Settings'),
            subtitle: Text(
              'Weather data is cached for ${AppConstants.cacheDurationInMinutes} minutes',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.delete),
              label: const Text('Clear Cache'),
              onPressed: () async {
                // Show confirmation dialog
                final confirmed = await showDialog<bool>(
                  context: context,
                  builder:
                      (context) => AlertDialog(
                        title: const Text('Clear Cache'),
                        content: const Text(
                          'This will clear all cached weather data. You will need to fetch new data.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, true),
                            child: const Text('Clear'),
                          ),
                        ],
                      ),
                );

                if (confirmed == true) {
                  // Clear cache
                  await sharedPrefs.remove(ApiConstants.lastWeatherData);
                  await sharedPrefs.remove(ApiConstants.lastForecastData);
                  await sharedPrefs.remove(ApiConstants.lastUpdateTime);

                  hasChanges.value = true;

                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Cache cleared successfully'),
                      ),
                    );
                  }
                }
              },
            ),
          ),

          const SizedBox(height: 32),

          // App Info
          ListTile(
            title: const Text('About'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text(
                  'OpenWeather App ${AppConstants.appVersion}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  'This app uses the OpenWeather One Call API 3.0',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 4),
                Text(
                  'Weather data is provided by OpenWeather',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
