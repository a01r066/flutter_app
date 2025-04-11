import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Theme configuration for the app providing different theme options
class ThemeConfig {
  ThemeConfig._();

  // ---------------------- VIBRANT THEME ----------------------
  /// Vibrant Light Theme - Bold and colorful
  static ThemeData vibrantLightTheme() {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF00B4D8),
      // Bright blue
      brightness: Brightness.light,
      primary: const Color(0xFF00B4D8),
      onPrimary: Colors.white,
      secondary: const Color(0xFFFF5C8D),
      // Pink
      onSecondary: Colors.white,
      tertiary: const Color(0xFFFFBE0B),
      // Yellow
      background: const Color(0xFFF8F9FA),
      error: const Color(0xFFE71D36),
    );

    return _baseTheme(colorScheme).copyWith(
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
      cardTheme: CardTheme(
        elevation: 4,
        shadowColor: colorScheme.primary.withOpacity(0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      iconTheme: IconThemeData(color: colorScheme.primary, size: 24),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.onSecondary,
        elevation: 8,
      ),
    );
  }

  /// Vibrant Dark Theme - Bold and colorful dark variant
  static ThemeData vibrantDarkTheme() {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF00B4D8),
      // Bright blue
      brightness: Brightness.dark,
      primary: const Color(0xFF03DAC6),
      // Teal
      onPrimary: Colors.black,
      secondary: const Color(0xFFFF5C8D),
      // Pink
      onSecondary: Colors.black,
      tertiary: const Color(0xFFFFD166),
      // Light yellow
      background: const Color(0xFF121212),
      surface: const Color(0xFF1E1E1E),
      error: const Color(0xFFEF476F),
    );

    return _baseTheme(colorScheme).copyWith(
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      cardTheme: CardTheme(
        elevation: 4,
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      iconTheme: IconThemeData(color: colorScheme.primary, size: 24),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondary,
        foregroundColor: colorScheme.onSecondary,
        elevation: 8,
      ),
    );
  }

  // ---------------------- PROFESSIONAL THEME ----------------------
  /// Professional Light Theme - Clean and corporate
  static ThemeData professionalLightTheme() {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF3A506B),
      // Navy blue
      brightness: Brightness.light,
      primary: const Color(0xFF3A506B),
      onPrimary: Colors.white,
      secondary: const Color(0xFF5BC0BE),
      // Teal
      onSecondary: Colors.black,
      tertiary: const Color(0xFF6FFFE9),
      // Light teal
      background: Colors.white,
      surface: const Color(0xFFF5F7FA),
      error: const Color(0xFFD62828),
    );

    return _baseTheme(colorScheme).copyWith(
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
      cardTheme: CardTheme(
        elevation: 2,
        shadowColor: Colors.black12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      iconTheme: IconThemeData(color: colorScheme.primary, size: 24),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 4,
      ),
    );
  }

  /// Professional Dark Theme - Sophisticated and subtle dark variant
  static ThemeData professionalDarkTheme() {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF3A506B),
      // Navy blue
      brightness: Brightness.dark,
      primary: const Color(0xFF5BC0BE),
      // Teal
      onPrimary: Colors.black,
      secondary: const Color(0xFF3A506B),
      // Navy blue
      onSecondary: Colors.white,
      tertiary: const Color(0xFF6FFFE9),
      // Light teal
      background: const Color(0xFF0B132B),
      surface: const Color(0xFF1C2541),
      error: const Color(0xFFD62828),
    );

    return _baseTheme(colorScheme).copyWith(
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      cardTheme: CardTheme(
        elevation: 2,
        shadowColor: Colors.black45,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      iconTheme: IconThemeData(color: colorScheme.primary, size: 24),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 4,
      ),
    );
  }

  // ---------------------- BASE THEME ----------------------
  /// Base theme with common settings for all themes
  static ThemeData _baseTheme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      brightness: colorScheme.brightness,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 1,
        space: 1,
      ),
      listTileTheme: ListTileThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}
