import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

enum ThemeType { system, vibrant, professional }

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeType themeType,
    required bool isDarkMode,
  }) = _ThemeState;

  factory ThemeState.initial() =>
      const ThemeState(themeType: ThemeType.system, isDarkMode: false);
}
