import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../states/theme_state.dart';
import 'providers.dart';

// Define a constant key for saving theme preferences
const String _themeTypeKey = 'theme_type';
const String _darkModeKey = 'dark_mode';

// Create a state notifier provider for theme state
final themeStateProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((
  ref,
) {
  final sharedPrefs = ref.watch(sharedPreferencesProvider);
  return ThemeNotifier(sharedPrefs);
});

class ThemeNotifier extends StateNotifier<ThemeState> {
  final SharedPreferences _prefs;

  ThemeNotifier(this._prefs) : super(ThemeState.initial()) {
    _loadSavedTheme();
  }

  // Load saved theme when initializing
  Future<void> _loadSavedTheme() async {
    final savedThemeTypeString = _prefs.getString(_themeTypeKey);
    final savedDarkMode = _prefs.getBool(_darkModeKey);

    ThemeType themeType = ThemeType.system;
    if (savedThemeTypeString != null) {
      themeType = ThemeType.values.firstWhere(
        (type) => type.toString() == savedThemeTypeString,
        orElse: () => ThemeType.system,
      );
    }

    state = ThemeState(
      themeType: themeType,
      isDarkMode: savedDarkMode ?? false,
    );
  }

  // Set theme type and save to shared preferences
  Future<void> setThemeType(ThemeType themeType) async {
    await _prefs.setString(_themeTypeKey, themeType.toString());
    state = state.copyWith(themeType: themeType);
  }

  // Toggle dark mode and save to shared preferences
  Future<void> toggleDarkMode() async {
    final isDarkMode = !state.isDarkMode;
    await _prefs.setBool(_darkModeKey, isDarkMode);
    state = state.copyWith(isDarkMode: isDarkMode);
  }

  // Set dark mode explicitly and save to shared preferences
  Future<void> setDarkMode(bool isDarkMode) async {
    await _prefs.setBool(_darkModeKey, isDarkMode);
    state = state.copyWith(isDarkMode: isDarkMode);
  }
}
