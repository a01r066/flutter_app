import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/theme_provider.dart';
import '../states/theme_state.dart';

class ThemeSelectionScreen extends ConsumerWidget {
  const ThemeSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeStateProvider);
    final themeNotifier = ref.watch(themeStateProvider.notifier);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Theme Settings')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Theme Selection Section
            Text('Select Theme', style: theme.textTheme.titleLarge),
            const SizedBox(height: 16),
            Card(
              child: Column(
                children: [
                  // System Theme Option
                  _buildThemeOption(
                    context: context,
                    title: 'System Default',
                    subtitle: 'Follow your device theme settings',
                    icon: Icons.brightness_auto,
                    isSelected: themeState.themeType == ThemeType.system,
                    onTap: () => themeNotifier.setThemeType(ThemeType.system),
                  ),
                  const Divider(),

                  // Vibrant Theme Option
                  _buildThemeOption(
                    context: context,
                    title: 'Vibrant',
                    subtitle: 'Bold and colorful theme',
                    icon: Icons.color_lens,
                    isSelected: themeState.themeType == ThemeType.vibrant,
                    onTap: () => themeNotifier.setThemeType(ThemeType.vibrant),
                  ),
                  const Divider(),

                  // Professional Theme Option
                  _buildThemeOption(
                    context: context,
                    title: 'Professional',
                    subtitle: 'Clean and sophisticated theme',
                    icon: Icons.work,
                    isSelected: themeState.themeType == ThemeType.professional,
                    onTap:
                        () =>
                            themeNotifier.setThemeType(ThemeType.professional),
                  ),
                ],
              ),
            ),

            // Dark Mode Toggle (only if not system theme)
            if (themeState.themeType != ThemeType.system) ...[
              const SizedBox(height: 32),

              Text('Appearance', style: theme.textTheme.titleLarge),
              const SizedBox(height: 16),

              SwitchListTile(
                title: const Text('Dark Mode'),
                subtitle: const Text('Enable dark theme'),
                value: themeState.isDarkMode,
                onChanged: (_) => themeNotifier.toggleDarkMode(),
                secondary: Icon(
                  themeState.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                ),
              ),
            ],

            // Theme Preview Section
            const SizedBox(height: 32),
            Text('Preview', style: theme.textTheme.titleLarge),
            const SizedBox(height: 16),

            _buildThemePreview(context, themeState),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeOption({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);

    return ListTile(
      leading: Icon(icon, color: isSelected ? theme.colorScheme.primary : null),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing:
          isSelected
              ? Icon(Icons.check_circle, color: theme.colorScheme.primary)
              : null,
      onTap: onTap,
      selected: isSelected,
    );
  }

  Widget _buildThemePreview(BuildContext context, ThemeState themeState) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.colorScheme.outline.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sample app bar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Text(
                  'App Bar',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
                const Spacer(),
                Icon(Icons.menu, color: theme.colorScheme.onPrimary, size: 20),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Sample card
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: theme.shadowColor.withOpacity(0.1),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Card Title', style: theme.textTheme.titleMedium),
                const SizedBox(height: 8),
                Text(
                  'This is a sample card with the selected theme applied.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('CANCEL')),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('CONFIRM'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Color palette
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _colorCircle(theme.colorScheme.primary, 'Primary'),
              _colorCircle(theme.colorScheme.secondary, 'Secondary'),
              _colorCircle(theme.colorScheme.tertiary, 'Tertiary'),
              _colorCircle(theme.colorScheme.error, 'Error'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _colorCircle(Color color, String label) {
    return Column(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.3),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 10)),
      ],
    );
  }
}
