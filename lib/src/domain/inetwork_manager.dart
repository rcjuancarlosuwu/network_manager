import 'package:internet_connection_checker/internet_connection_checker.dart';

/// Interface for [NetworkManager].
abstract class INetworkManager {
  /// Returns `true` if there is connection to internet.
  Future<bool> get isOnline;

  Stream<bool> get isOnlineStream;

  /// Casts [InternetConnectionStatus] to bool.
  bool checkStatus(InternetConnectionStatus status);
}
