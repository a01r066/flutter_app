import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/providers/weather_providers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../providers/location_provider.dart';

class SearchLocationScreen extends HookConsumerWidget {
  const SearchLocationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // State for search input
    final searchController = useTextEditingController();
    final isSearching = useState(false);

    // Get location state
    final locationState = ref.watch(locationProvider);
    final locationNotifier = ref.watch(locationProvider.notifier);
    final weatherNotifier = ref.watch(weatherStateProvider.notifier);

    // Use a focus node to auto-focus the search field
    final focusNode = useFocusNode()..requestFocus();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Location'),
        actions: [
          // Current location button
          IconButton(
            icon: const Icon(Icons.my_location),
            onPressed: () async {
              FocusScope.of(context).unfocus();
              isSearching.value = true;

              await locationNotifier.getCurrentLocation();

              isSearching.value = false;
              if (locationState.errorMessage == null) {
                if (context.mounted) {
                  Navigator.pop(context, true);
                }
              }
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: searchController,
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: 'Search for a city',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchController.text.isNotEmpty
                    ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    searchController.clear();
                  },
                )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              textInputAction: TextInputAction.search,
              onSubmitted: (value) async {
                if (value.trim().isNotEmpty) {
                  FocusScope.of(context).unfocus();
                  isSearching.value = true;

                  await locationNotifier.searchLocation(value.trim());

                  isSearching.value = false;
                  if (locationState.errorMessage == null) {
                    if (context.mounted) {
                      Navigator.pop(context, true);
                    }
                  }
                }
              },
            ),
          ),

          // Loading indicator or error
          if (isSearching.value)
            const Center(
              child: CircularProgressIndicator(),
            )
          else if (locationState.errorMessage != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 48,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    locationState.errorMessage!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            )
          else
          // Show search instructions
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.search,
                      size: 64,
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Search for a city to get weather information',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Or use your current location',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}