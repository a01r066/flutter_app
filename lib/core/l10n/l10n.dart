import 'package:flutter/material.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

class L10n {
  L10n._();

  // Supported locales
  static const List<Locale> supportedLocales = [
    Locale('en'), // English
    Locale('ko'), // Korean
    Locale('vi'), // Vietnamese
  ];

  // Delegates for localization
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  // Helper method to get the current S instance in the given context
  static S of(BuildContext context) {
    return S.of(context);
  }

  // Get the locale name in the current language
  static String getDisplayLanguage(Locale locale, BuildContext context) {
    final s = S.of(context);

    switch (locale.languageCode) {
      case 'en':
        return s.englishLanguage;
      case 'ko':
        return s.koreanLanguage;
      case 'vi':
        return s.vietnameseLanguage;
      default:
        return s.systemLanguage;
    }
  }

  // Get current date formatted according to current locale
  static String formatDate(DateTime date, {String? pattern}) {
    final locale = Intl.getCurrentLocale();
    if (pattern != null) {
      return DateFormat(pattern, locale).format(date);
    }
    return DateFormat.yMMMd(locale).format(date);
  }

  // Get current time formatted according to current locale
  static String formatTime(DateTime time, {String? pattern}) {
    final locale = Intl.getCurrentLocale();
    if (pattern != null) {
      return DateFormat(pattern, locale).format(time);
    }
    return DateFormat.jm(locale).format(time);
  }

  // Get current date and time formatted according to current locale
  static String formatDateTime(DateTime dateTime, {String? pattern}) {
    final locale = Intl.getCurrentLocale();
    if (pattern != null) {
      return DateFormat(pattern, locale).format(dateTime);
    }
    return DateFormat.yMMMd(locale).add_jm().format(dateTime);
  }
}
