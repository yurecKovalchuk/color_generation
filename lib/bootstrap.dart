import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';


/// The [bootstrap] provides methods for initializing and configuring
/// the Flutter application, such as setting up logging and handling errors.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(() async => _initialize(builder), _handleError);
}

Future<void> _initialize(FutureOr<Widget> Function() builder) async {

  _initLogger();

  return runApp(await builder());
}

void _initLogger() {
  Logger.root.level = kDebugMode ? Level.ALL : Level.INFO;
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });
}

void _handleError(Object error, StackTrace stack) {
  final logger = Logger('_handleError');

  if (kDebugMode) {
    logger.warning('Error: $error; stack: $stack');
  }
}
