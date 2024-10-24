import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final platformProvider =
    Provider<PlatformType>((ref) => throw UnimplementedError());

enum PlatformType { iOS, android, windows, web, fuchsia, linux, macOS, other }

PlatformType detectPlatformType() {
  PlatformType platformType;

  if (kIsWeb) {
    platformType = PlatformType.web;
  } else {
    if (Platform.isAndroid) {
      platformType = PlatformType.android;
    } else if (Platform.isIOS) {
      platformType = PlatformType.iOS;
    } else if (Platform.isFuchsia) {
      platformType = PlatformType.fuchsia;
    } else if (Platform.isMacOS) {
      platformType = PlatformType.macOS;
    } else if (Platform.isLinux) {
      platformType = PlatformType.linux;
    } else if (Platform.isWindows) {
      platformType = PlatformType.windows;
    } else {
      platformType = PlatformType.other;
    }
  }

  return platformType;
}
