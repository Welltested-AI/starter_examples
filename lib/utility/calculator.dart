import 'dart:math' as math;

class Calculator {
  // Define add function
  double add(double a, double b) {
    return a + b;
  }

  // Define subtract function
  double subtract(double a, double b) {
    return a - b;
  }

  // Define multiply function
  double multiply(double a, double b) {
    return a * b;
  }

  // Define divide function
  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Division by zero is not allowed");
    }
    return a / b;
  }

  // Define power (x,y) function
  double power(double x, double y) {
    return math.pow(x, y).toDouble();
  }
}
