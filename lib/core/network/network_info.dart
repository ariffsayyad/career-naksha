import 'package:connectivity_plus/connectivity_plus.dart';

// Abstract class for checking internet connectivity
abstract class NetworkInfoI {
  Future<bool> isConnected();
  Future<ConnectivityResult> get connectivityResult;
  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  final Connectivity connectivity;

  // Singleton instance
  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());

  factory NetworkInfo() {
    return _networkInfo;
  }

  NetworkInfo._internal(this.connectivity);

  @override
  Future<bool> isConnected() async {
    final result = await connectivityResult;
    return result != ConnectivityResult.none;
  }

  // To check type of internet connectivity
  @override
  Future<ConnectivityResult> get connectivityResult async {
    return await connectivity.checkConnectivity();  // Return a single ConnectivityResult
  }

  // Check the type of internet connection when changed
  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;  // Stream of single ConnectivityResult
}
