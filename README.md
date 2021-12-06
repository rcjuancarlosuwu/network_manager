Inspired by NoScopeDevs [network_manager](https://github.com/NoScopeDevs/network_manager) implementation using internet_connection_checker instead of data_connection_checker.

[![Dart](https://github.com/JuanCarlosRC/network_manager/actions/workflows/dart.yml/badge.svg)](https://github.com/JuanCarlosRC/network_manager/actions/workflows/dart.yml)

- ✅  Null Safety
- ✅  Clean Architecture 
- ✅  Basic Testing

## Usage

```dart
Future<void> main() async {
  final internetConnectionChecker = InternetConnectionChecker();
  final networkManager = NetworkManager(internetConnectionChecker);

  logResult(await networkManager.isOnline);

  networkManager.isOnlineStream
      .take(1)
      .listen((isOnline) => logResult(isOnline));
}

void logResult(bool isOnline) => log(isOnline ? 'We are online! 😎' : 'We are offline... 😓');
```


