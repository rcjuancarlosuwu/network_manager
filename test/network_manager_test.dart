import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:network_manager/network_manager.dart';
import 'package:test/test.dart';

void main() {
  late InternetConnectionChecker internetConnectionChecker;
  late NetworkManager networkManager;

  group('NetworkManager', () {
    setUp(() {
      internetConnectionChecker = InternetConnectionChecker();
      networkManager = NetworkManager(internetConnectionChecker);
    });

    test('hasConnection and isOnline getters should return same bool result.', () async {
      // Arrange
      final hasConnection = await internetConnectionChecker.hasConnection;
      final isOnline = await networkManager.isOnline;

      // Act

      // Assert
      expect(isOnline, hasConnection);
    });

    test('checkStatus(InternetConnectionStatus.connected) should return `true`.', () async {
      // Arrange
      final status = InternetConnectionStatus.connected;
      final checkStatus = networkManager.checkStatus(status);

      // Act

      // Assert
      expect(checkStatus, true);
    });

    test('checkStatus(InternetConnectionStatus.disconnected) should return `false`', () async {
      // Arrange
      final status = InternetConnectionStatus.disconnected;
      final checkStatus = networkManager.checkStatus(status);

      // Act

      // Assert
      expect(checkStatus, false);
    });
  });
}
