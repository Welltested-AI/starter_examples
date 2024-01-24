import 'package:flutter_test/flutter_test.dart';
import 'package:starter_examples/utility/calculator.dart';

void main() {
  group('Calculator', () {
    test('multiply should return the correct product of two positive doubles',
        () {
      final calculator = Calculator();

      expect(calculator.multiply(3.0, 5.0), 15.0);
    });

    test('multiply should return the correct product of two negative doubles',
        () {
      final calculator = Calculator();

      expect(calculator.multiply(-3.0, -5.0), 15.0);
    });

    test(
        'multiply should return the correct product of one positive and one negative double',
        () {
      final calculator = Calculator();

      expect(calculator.multiply(3.0, -5.0), -15.0);
    });

    test('multiply should return the correct product of two zero doubles', () {
      final calculator = Calculator();

      expect(calculator.multiply(0.0, 0.0), 0.0);
    });

    test(
        'multiply should return the correct product of one zero and one positive double',
        () {
      final calculator = Calculator();

      expect(calculator.multiply(0.0, 5.0), 0.0);
    });

    test(
        'multiply should return the correct product of one zero and one negative double',
        () {
      final calculator = Calculator();

      expect(calculator.multiply(0.0, -5.0), 0.0);
    });
  });
}
