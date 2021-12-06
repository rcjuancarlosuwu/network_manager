import 'dart:developer';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:network_manager/network_manager.dart';

Future<void> main() async {
  final internetConnectionChecker = InternetConnectionChecker();
  final networkManager = NetworkManager(internetConnectionChecker);

  logResult(await networkManager.isOnline);

  networkManager.isOnlineStream
      .take(1)
      .listen((isOnline) => logResult(isOnline));
}

void logResult(bool isOnline) => log(isOnline ? 'We are online! 😎' : 'We are offline... 😓');
