import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../generated/l10n.dart';
import '../providers/language_provider.dart';

class LanguageSelectionScreen extends ConsumerWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languageOption = ref.watch(languageProvider);
    final languageNotifier = ref.watch(languageProvider.notifier);
    final s = S.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(s.language)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Language Selection Section
            Text(s.languageDescription, style: theme.textTheme.bodyLarge),
            const SizedBox(height: 24),

            Card(
              child: Column(
                children: [
                  // System language option
                  _buildLanguageOption(
                    context: context,
                    title: s.systemLanguage,
                    subtitle: s.followSystemTheme,
                    icon: Icons.language,
                    isSelected: languageOption == LanguageOption.system,
                    onTap:
                        () =>
                            languageNotifier.setLanguage(LanguageOption.system),
                  ),
                  const Divider(),

                  // English language option
                  _buildLanguageOption(
                    context: context,
                    title: s.englishLanguage,
                    subtitle: 'English',
                    icon: Icons.language,
                    isSelected: languageOption == LanguageOption.english,
                    onTap:
                        () => languageNotifier.setLanguage(
                          LanguageOption.english,
                        ),
                  ),
                  const Divider(),

                  // Korean language option
                  _buildLanguageOption(
                    context: context,
                    title: s.koreanLanguage,
                    subtitle: '한국어',
                    icon: Icons.language,
                    isSelected: languageOption == LanguageOption.korean,
                    onTap:
                        () =>
                            languageNotifier.setLanguage(LanguageOption.korean),
                  ),
                  const Divider(),

                  // Vietnamese language option
                  _buildLanguageOption(
                    context: context,
                    title: s.vietnameseLanguage,
                    subtitle: 'Tiếng Việt',
                    icon: Icons.language,
                    isSelected: languageOption == LanguageOption.vietnamese,
                    onTap:
                        () => languageNotifier.setLanguage(
                          LanguageOption.vietnamese,
                        ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Language information
            _buildLanguageInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption({
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

  Widget _buildLanguageInfo(BuildContext context) {
    final theme = Theme.of(context);
    final s = S.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.outline.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 20,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(s.about, style: theme.textTheme.titleSmall),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'This app supports multiple languages and respects the device locale when set to System Language.',
            style: theme.textTheme.bodySmall,
          ),
          const SizedBox(height: 4),
          Text(
            'Settings and preferences are saved and will persist across app restarts.',
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
