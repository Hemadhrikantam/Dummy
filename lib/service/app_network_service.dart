enum AppNetworkStatus { online, offline }

abstract class AppNetworkService {
  Future<bool> get isConnected;
  Stream<AppNetworkStatus> get onStatusChanged;
  Future<AppNetworkStatus> getCurrentStatus();
  void dispose();
}