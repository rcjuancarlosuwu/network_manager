import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:network_manager/network_manager.dart';

Future<void> main() async {
  final internetConnectionChecker = InternetConnectionChecker();
  final networkManager = NetworkManager(internetConnectionChecker);

  log(await networkManager.isOnline);

  networkManager.isOnlineStream.take(1).listen(log);
}

void log(bool isOnline) {
  print('We are  ${isOnline ? 'online! 😎' : 'offline... 😓'}');
}
