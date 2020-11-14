
import 'dart:async';

import 'package:flutter/services.dart';

class KeyringStore {
  static const MethodChannel _channel =
      const MethodChannel('keyring_store');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
