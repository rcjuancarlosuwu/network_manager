import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:network_manager/src/domain/inetwork_manager.dart';

///Implementation of [INetworkManager]
class NetworkManager implements INetworkManager {
  /// Receives [InternetConnectionChecker] as a constructor's parameter.
  NetworkManager(this._checker);

  final InternetConnectionChecker _checker;

  @override
  Future<bool> get isOnline async =>
      checkStatus(await _checker.connectionStatus);

  @override
  Stream<bool> get isOnlineStream =>
      _checker.onStatusChange.map((status) => checkStatus(status));

  @override
  bool checkStatus(InternetConnectionStatus status) {
    switch (status) {
      case InternetConnectionStatus.disconnected:
        return false;
      case InternetConnectionStatus.connected:
        return true;
    }
  }
}
