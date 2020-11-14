import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keyring_store/keyring_store.dart';

void main() {
  const MethodChannel channel = MethodChannel('keyring_store');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await KeyringStore.platformVersion, '42');
  });
}
