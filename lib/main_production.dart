import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/util/platform_type.dart';
import 'package:flutter_boilerplate/start.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  final platformType = detectPlatformType();
  runApp(
    ProviderScope(
      overrides: [
        platformProvider.overrideWithValue(platformType),
      ],
      child: const Start(),
    ),
  );
}
