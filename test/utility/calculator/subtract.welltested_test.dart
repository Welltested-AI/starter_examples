import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:starter_examples/utility/calculator.dart';

@GenerateMocks([Calculator])
void main() {
  final calculator = Calculator();
  group('Calculator', () {
    test(
        'subtract should return the correct difference of two positive doubles',
        () {
      expect(calculator.subtract(5.0, 3.0), 2.0);
    });

    test(
        'subtract should return the correct difference of two negative doubles',
        () {
      expect(calculator.subtract(-3.0, -5.0), 2.0);
    });

    test(
        'subtract should return the correct difference of one positive and one negative double',
        () {
      expect(calculator.subtract(3.0, -5.0), 8.0);
    });

    test('subtract should return the correct difference of two zero doubles',
        () {
      expect(calculator.subtract(0.0, 0.0), 0.0);
    });

    test(
        'subtract should return the correct difference of one zero and one positive double',
        () {
      expect(calculator.subtract(0.0, 5.0), -5.0);
    });

    test(
        'subtract should return the correct difference of one zero and one negative double',
        () {
      expect(calculator.subtract(0.0, -5.0), 5.0);
    });
  });
}
