import 'package:flutter_test/flutter_test.dart';
import 'package:starter_examples/utility/calculator.dart';

void main() {
  final calculator = Calculator();

  group('Calculator', () {
    test('divide should return the correct division result', () {
      expect(calculator.divide(10, 2), 5.0);
    });

    test('divide should throw an ArgumentError when dividing by zero', () {
      expect(() => calculator.divide(10, 0), throwsA(isA<ArgumentError>()));
    });
  });
}