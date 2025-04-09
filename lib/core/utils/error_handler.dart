import '../../domain/entities/failure.dart';

/// Utility class to handle failures and convert them to user-friendly messages
class ErrorHandler {
  /// Converts a Failure object to a user-friendly error message
  static String getErrorMessage(Failure failure) {
    // Since we can't rely on the generated when/map methods before code generation,
    // we'll use a simple switch statement based on the runtimeType
    if (failure is NetworkFailure) {
      return 'Network error: ${(failure as NetworkFailure).message}';
    } else if (failure is ServerFailure) {
      return 'Server error: ${(failure as ServerFailure).message}';
    } else if (failure is CacheFailure) {
      return 'Cache error: ${(failure as CacheFailure).message}';
    } else if (failure is LocationFailure) {
      return 'Location error: ${(failure as LocationFailure).message}';
    } else if (failure is UnauthorizedFailure) {
      return 'Authentication error: ${(failure as UnauthorizedFailure).message}';
    } else {
      return 'Unknown error: ${(failure as UnknownFailure).message}';
    }
  }

  /// Converts a Failure object to a user-friendly error message with custom handling for location failures
  static String getLocationErrorMessage(Failure failure) {
    // For location errors, we want to show the message directly without the prefix
    if (failure is LocationFailure) {
      return (failure as LocationFailure).message;
    }

    // For other failures, use the standard error message
    return getErrorMessage(failure);
  }
}