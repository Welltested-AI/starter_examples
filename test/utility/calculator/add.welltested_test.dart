import 'package:flutter_test/flutter_test.dart';
import 'package:starter_examples/utility/calculator.dart';

void main() {
  final calculator = Calculator();
  group('Calculator', () {
    test('add should return the correct sum of two positive doubles', () {
      expect(calculator.add(3.0, 5.0), 8.0);
    });

    test('add should return the correct sum of two negative doubles', () {
      expect(calculator.add(-3.0, -5.0), -8.0);
    });

    test(
        'add should return the correct sum of one positive and one negative double',
        () {
      expect(calculator.add(3.0, -5.0), -2.0);
    });

    test('add should return the correct sum of two zero doubles', () {
      expect(calculator.add(0.0, 0.0), 0.0);
    });

    test(
        'add should return the correct sum of one zero and one positive double',
        () {
      expect(calculator.add(0.0, 5.0), 5.0);
    });

    test(
        'add should return the correct sum of one zero and one negative double',
        () {
      expect(calculator.add(0.0, -5.0), -5.0);
    });

    test('add should return the correct sum of the maximum double values', () {
      expect(
          calculator.add(double.maxFinite, double.maxFinite), double.infinity);
    });

    test('add should return the correct sum of the minimum double values', () {
      expect(calculator.add(double.minPositive, double.minPositive),
          double.minPositive * 2);
    });
  });
}
