import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:dartz/dartz.dart';
import '../../domain/entities/failure.dart';
import '../../core/constants/app_constants.dart';

class LocationService {
  Future<Either<Failure, ({double latitude, double longitude, String cityName})>>
  getCurrentLocation() async {
    try {
      // Check location permission
      final permission = await _checkLocationPermission();
      if (permission.isLeft()) {
        return Left(permission.fold(
              (failure) => failure,
              (_) => Failure.location('Unknown error'),
        ));
      }

      // Get current position
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // Get place details using geocoding
      final placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      String cityName = AppConstants.defaultCity;
      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        if (placemark.locality != null && placemark.locality!.isNotEmpty) {
          cityName = placemark.locality!;
        } else if (placemark.administrativeArea != null && placemark.administrativeArea!.isNotEmpty) {
          cityName = placemark.administrativeArea!;
        }
      }

      return Right((
      latitude: position.latitude,
      longitude: position.longitude,
      cityName: cityName,
      ));
    } catch (e) {
      return Left(Failure.location('Could not determine location: $e'));
    }
  }

  Future<Either<Failure, Unit>> _checkLocationPermission() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled
        return Left(Failure.location(
            'Location services are disabled. Please enable location services in your device settings.'
        ));
      }

      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Permission denied
          return Left(Failure.location(
              'Location permission denied. Please allow location access to get weather for your current location.'
          ));
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permission permanently denied
        return Left(Failure.location(
            'Location permission permanently denied. Please enable location access in app settings.'
        ));
      }

      // Permission granted
      return const Right(unit);
    } catch (e) {
      return Left(Failure.location('Error checking location permission: $e'));
    }
  }

  Future<Either<Failure, String>> getCityNameFromCoordinates(
      double latitude,
      double longitude,
      ) async {
    try {
      final placemarks = await placemarkFromCoordinates(latitude, longitude);

      String cityName = AppConstants.defaultCity;
      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        if (placemark.locality != null && placemark.locality!.isNotEmpty) {
          cityName = placemark.locality!;
        } else if (placemark.administrativeArea != null && placemark.administrativeArea!.isNotEmpty) {
          cityName = placemark.administrativeArea!;
        }
      }

      return Right(cityName);
    } catch (e) {
      return Left(Failure.location('Error getting location details: $e'));
    }
  }

  Future<Either<Failure, ({double latitude, double longitude})>> getCoordinatesFromCityName(
      String cityName,
      ) async {
    try {
      final locations = await locationFromAddress(cityName);

      if (locations.isEmpty) {
        return Left(Failure.location('Could not find location for $cityName'));
      }

      final location = locations.first;
      return Right((
      latitude: location.latitude,
      longitude: location.longitude,
      ));
    } catch (e) {
      return Left(Failure.location('Error getting coordinates for $cityName: $e'));
    }
  }
}