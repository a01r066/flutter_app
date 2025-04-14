import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'providers.dart';

// Define a constant key for saving language preferences
const String _languagePrefsKey = 'app_language';

// Language options enum
enum LanguageOption { system, english, korean, vietnamese }

// Extension to get locale from language option
extension LanguageOptionExt on LanguageOption {
  Locale? get locale {
    switch (this) {
      case LanguageOption.english:
        return const Locale('en');
      case LanguageOption.korean:
        return const Locale('ko');
      case LanguageOption.vietnamese:
        return const Locale('vi');
      case LanguageOption.system:
        return null; // System locale is handled differently
      default:
        return null;
    }
  }

  String get code {
    switch (this) {
      case LanguageOption.english:
        return 'en';
      case LanguageOption.korean:
        return 'ko';
      case LanguageOption.vietnamese:
        return 'vi';
      case LanguageOption.system:
        return 'system';
      default:
        return 'system';
    }
  }

  static LanguageOption fromCode(String code) {
    switch (code) {
      case 'en':
        return LanguageOption.english;
      case 'ko':
        return LanguageOption.korean;
      case 'vi':
        return LanguageOption.vietnamese;
      case 'system':
      default:
        return LanguageOption.system;
    }
  }
}

// Create a state notifier provider for language state
final languageProvider =
    StateNotifierProvider<LanguageNotifier, LanguageOption>((ref) {
      final sharedPrefs = ref.watch(sharedPreferencesProvider);
      return LanguageNotifier(sharedPrefs);
    });

class LanguageNotifier extends StateNotifier<LanguageOption> {
  final SharedPreferences _prefs;

  LanguageNotifier(this._prefs) : super(LanguageOption.system) {
    _loadSavedLanguage();
  }

  // Load saved language when initializing
  void _loadSavedLanguage() {
    final savedLanguage = _prefs.getString(_languagePrefsKey);
    if (savedLanguage != null) {
      state = LanguageOptionExt.fromCode(savedLanguage);
    }
  }

  // Set language and save to shared preferences
  Future<void> setLanguage(LanguageOption language) async {
    await _prefs.setString(_languagePrefsKey, language.code);
    state = language;
  }
}

// Locale provider for MaterialApp
final localeProvider = Provider<Locale?>((ref) {
  final languageOption = ref.watch(languageProvider);
  return languageOption.locale;
});
