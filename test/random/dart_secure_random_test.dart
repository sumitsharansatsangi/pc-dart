library;

import 'package:pointycastle/pointycastle.dart';

import 'package:test/test.dart';

void main() {
  group('DartSecure:', () {
    final rnd = SecureRandom('DartSecure');

    test(rnd.algorithmName, () {
      var randomBytes = rnd.nextBytes(256);
      var allZero = true;
      for (var i = 0; i < randomBytes.length; i++) {
        if (randomBytes[i] != 0) {
          allZero = false;
          break;
        }
      }
      expect(allZero, false);
    });
  });
}