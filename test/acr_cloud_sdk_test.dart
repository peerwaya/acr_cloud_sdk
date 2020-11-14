import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:acr_cloud_sdk/acr_cloud_sdk.dart';

void main() {
  const MethodChannel channel = MethodChannel('acr_cloud_sdk');

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
   // expect(await AcrCloudSdk.platformVersion, '42');
  });
}
