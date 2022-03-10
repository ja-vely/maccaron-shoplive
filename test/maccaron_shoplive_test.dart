import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maccaron_shoplive/maccaron_shoplive.dart';

void main() {
  const MethodChannel channel = MethodChannel('maccaron_shoplive');

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
    expect(await MaccaronShoplive.platformVersion, '42');
  });
}
