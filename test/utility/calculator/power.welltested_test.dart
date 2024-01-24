import 'package:flutter_test/flutter_test.dart';
import 'package:starter_examples/utility/calculator.dart';

void main() {
  final calculator = Calculator();
  group('Calculator', () {
    test('power should return the correct power of two positive numbers', () {
      expect(calculator.power(2.0, 3.0), 8.0);
    });

    test('power should return the correct power of two negative numbers', () {
      expect(calculator.power(-2.0, 3.0), -8.0);
    });

    test('power should return the correct power of a positive and a negative number', () {
      expect(calculator.power(2.0, -3.0), 0.125);
    });

    test('power should return 1 when the exponent is 0', () {
      expect(calculator.power(2.0, 0.0), 1.0);
    });
  });
}