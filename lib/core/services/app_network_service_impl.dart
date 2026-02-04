import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


import '../../service/app_network_service.dart';
import '../utils/log_utility.dart';

class AppNetworkServiceImpl implements AppNetworkService {
  final Connectivity _connectivity;
  final InternetConnectionChecker _connectionChecker;

  late final StreamController<AppNetworkStatus> _statusController;
  late final StreamSubscription<AppNetworkStatus> _connectivitySubscription;

  AppNetworkServiceImpl({
    Connectivity? connectivity,
    InternetConnectionChecker? connectionChecker,
  })  : _connectivity = connectivity ?? Connectivity(),
        _connectionChecker = connectionChecker ?? InternetConnectionChecker.instance {
    _statusController = StreamController<AppNetworkStatus>.broadcast();
    _init();
    LogUtility.info('INIT App Network');
  }

  void _init() {
    // Listen to connectivity changes and map to AppNetworkStatus
    _connectivitySubscription = _connectivity.onConnectivityChanged
        .asyncMap((result) => _getStatusFromResult(result.first)) // result is ConnectivityResult
        .listen((status) => _statusController.add(status));
  }

  @override
  Future<bool> get isConnected async => _connectionChecker.hasConnection;

  @override
  Stream<AppNetworkStatus> get onStatusChanged => _statusController.stream;

  @override
  Future<AppNetworkStatus> getCurrentStatus() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return _getStatusFromResult(connectivityResult.first); // single ConnectivityResult
  }

  Future<AppNetworkStatus> _getStatusFromResult(ConnectivityResult result) async {
    if (result == ConnectivityResult.none) return AppNetworkStatus.offline;
    return await _connectionChecker.hasConnection
        ? AppNetworkStatus.online
        : AppNetworkStatus.offline;
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    _statusController.close();
  }
}

/*
StreamBuilder<NetworkStatus>(
          stream: _networkChecker.onStatusChanged,
          initialData: NetworkStatus.online,
          builder: (context, snapshot) {
            return Column(
              children: [
                NetworkStatusBanner(status: snapshot.data ?? NetworkStatus.online),
                Expanded(
                  child: Center(
                    child: Text(
                      snapshot.data == NetworkStatus.offline
                        ? 'You are offline'
                        : 'You are online',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
              ],
            );
          },
        ),

 */



class AppNetworkCheckerImpl implements AppNetworkService {
  final Connectivity _connectivity;
  final InternetConnectionChecker _connectionChecker;

  late final StreamController<AppNetworkStatus> _statusController;
  late final StreamSubscription<AppNetworkStatus> _connectivitySubscription;

  AppNetworkCheckerImpl({
    Connectivity? connectivity,
    InternetConnectionChecker? connectionChecker,
  })  : _connectivity = connectivity ?? Connectivity(),
        _connectionChecker = connectionChecker ?? InternetConnectionChecker.instance {
    _statusController = StreamController<AppNetworkStatus>.broadcast();
    _init();
  }

void _init() {
  _connectivitySubscription = _connectivity.onConnectivityChanged
      .asyncMap((List<ConnectivityResult> results) async {
        // pick the first result (or ConnectivityResult.none if empty)
        final result = results.isNotEmpty ? results.first : ConnectivityResult.none;

        if (result == ConnectivityResult.none) return AppNetworkStatus.offline;
        final hasInternet = await _connectionChecker.hasConnection;
        return hasInternet ? AppNetworkStatus.online : AppNetworkStatus.offline;
      })
      .listen((status) {
        _statusController.add(status);
      });
}


  @override
  Future<bool> get isConnected async {
    return _connectionChecker.hasConnection;
  }

  @override
  Stream<AppNetworkStatus> get onStatusChanged => _statusController.stream;

  @override
  Future<AppNetworkStatus> getCurrentStatus() async {
    final result = await _connectivity.checkConnectivity();
    if (result == ConnectivityResult.none) return AppNetworkStatus.offline;
    final hasInternet = await _connectionChecker.hasConnection;
    return hasInternet ? AppNetworkStatus.online : AppNetworkStatus.offline;
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    _statusController.close();
  }
}



/*
StreamBuilder<NetworkStatus>(
          stream: _networkChecker.onStatusChanged,
          initialData: NetworkStatus.online,
          builder: (context, snapshot) {
            return Column(
              children: [
                NetworkStatusBanner(status: snapshot.data ?? NetworkStatus.online),
                Expanded(
                  child: Center(
                    child: Text(
                      snapshot.data == NetworkStatus.offline
                        ? 'You are offline'
                        : 'You are online',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
 */


