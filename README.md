# flutter_app

A clean architecture Flutter project with Hooks_Riverpod

# OpenWeather Flutter App

A Flutter weather application that uses the OpenWeather One Call API 3.0 to display current weather
and forecast data, with a clean architecture approach.

## Features

- Current weather conditions
- Hourly forecast (24 hours)
- Daily forecast (7 days)
- Weather alerts
- Search for locations
- Save and manage favorite locations
- Change temperature units (metric/imperial)
- Auto-detect current location
- Offline caching for when no internet connection is available
- Dark and light theme support

## Architecture

The app follows Clean Architecture principles with distinct layers:

1. **Core Layer** - Contains fundamental utilities, constants, and services
    - API client for network requests
    - Exception handling
    - Secure storage for sensitive data
    - Connectivity service

2. **Domain Layer** - Contains business logic and entities
    - Weather and forecast entities
    - Repository interfaces
    - Use cases

3. **Infrastructure Layer** - Implements the repositories and data sources
    - Remote data source (OpenWeather API)
    - Local data source (caching)
    - Models for serialization/deserialization
    - Repository implementations

4. **Presentation Layer** - Handles UI and state management
    - Screens
    - Widgets
    - Providers (using hooks_riverpod)
    - States

This architecture provides several benefits:

- Clear separation of concerns
- Testability
- Maintainability
- Scalability

## Dependencies

- **State Management**: hooks_riverpod, flutter_hooks
- **API & Network**: dio, connectivity_plus
- **Storage**: flutter_secure_storage, shared_preferences
- **Code Generation**: freezed, json_serializable
- **Location Services**: geolocator, geocoding
- **UI Components**: google_fonts, flutter_svg, shimmer
- **Utils**: intl

## Setup and Configuration

1. Clone the repository
2. Get an API key from [OpenWeather](https://openweathermap.org/api)
3. Run `flutter pub get` to install dependencies
4. Run `flutter pub run build_runner build --delete-conflicting-outputs` to generate the necessary
   code
5. Launch the app and enter your API key in the settings

## Code Generation

The app uses code generation for immutable classes and JSON serialization. After making changes to
entities or models, run:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

```bash# Development build
flutter run --flavor dev -t lib/main_dev.dart
```

```bash# Production build
flutter run --flavor prod -t lib/main_prod.dart
```

```Building Development APK
flutter build apk --flavor dev -t lib/main_dev.dart
```

```Building Production APK
flutter build apk --flavor prod -t lib/main_prod.dart
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.