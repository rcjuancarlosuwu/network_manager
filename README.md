Wrapper for data_connection_checker.

[![Dart](https://github.com/JuanCarlosRC/network_manager/actions/workflows/dart.yml/badge.svg)](https://github.com/JuanCarlosRC/network_manager/actions/workflows/dart.yml)

- ✅  Null Safety
- ✅  Clean Architecture 
- ✅  Basic Testing

## Usage

```dart
Future<void> main() async {
  final internetConnectionChecker = InternetConnectionChecker();
  final networkManager = NetworkManager(internetConnectionChecker);

  log(await networkManager.isOnline);

  networkManager.isOnlineStream.take(1).listen(log);
}

void log(bool isOnline) {
  print('We are  ${isOnline ? 'online! 😎' : 'offline... 😓'}');
}

```


