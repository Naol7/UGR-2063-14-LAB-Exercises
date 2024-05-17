import 'dart:io';

void main() {
  double num1, num2, result;
  String? inputNum1, inputNum2, operator;

  // Get user input for the numbers and the operator
  print("Enter the first number: ");
  inputNum1 = stdin.readLineSync()!;
  num1 = double.parse(inputNum1);

  print("Enter the second number: ");
  inputNum2 = stdin.readLineSync()!;
  num2 = double.parse(inputNum2);

  print("Enter the operator (+, -, *, /): ");
  operator = stdin.readLineSync()!;

  // Perform the calculation based on the operator
  switch (operator) {
    case '+':
      result = num1 + num2;
      print("The result of $num1 + $num2 is $result");
      break;
    case '-':
      result = num1 - num2;
      print("The result of $num1 - $num2 is $result");
      break;
    case '*':
      result = num1 * num2;
      print("The result of $num1 * $num2 is $result");
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print("The result of $num1 / $num2 is $result");
      } else {
        print("Division by zero is not allowed.");
      }
      break;
    default:
      print("Invalid operator entered.");
  }
}
