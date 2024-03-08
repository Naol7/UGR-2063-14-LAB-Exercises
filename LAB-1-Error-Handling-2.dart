double divideNumbers(double dividend, double divisor) {
  try {
    if (divisor == 0) {
      throw DivisionByZeroError();
    }
    return dividend / divisor;
  } catch (e) {
    if (e is DivisionByZeroError) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('An error occurred: $e');
    }
    return double.nan;
  }
}

class DivisionByZeroError {}

void main() {
  double number1 = 10;
  double number2 = 0;

  double result = divideNumbers(number1, number2);
  if (!result.isNaN) {
    print('Result: $result');
  }
}
