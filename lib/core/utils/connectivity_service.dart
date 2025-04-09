import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  final _connectivityController = StreamController<bool>.broadcast();

  // Public stream that can be listened to for connectivity changes
  Stream<bool> get connectivityStream => _connectivityController.stream;

  ConnectivityService() {
    // Initialize with current connectivity status
    _checkConnectivity();

    // Listen for connectivity changes
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      _updateConnectionStatus(result);
    });
  }

  // Check current connectivity
  Future<void> _checkConnectivity() async {
    final ConnectivityResult result = await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);
  }

  // Update connection status and notify listeners
  void _updateConnectionStatus(ConnectivityResult result) {
    final bool isConnected = result != ConnectivityResult.none;
    _connectivityController.add(isConnected);
  }

  // Check if device is currently connected to the internet
  Future<bool> isConnected() async {
    final ConnectivityResult result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  // Dispose resources
  void dispose() {
    _connectivityController.close();
  }
}