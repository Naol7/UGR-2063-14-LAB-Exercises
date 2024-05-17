import 'dart:io';

int sumOfNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  int number1, number2;

  print("Enter the first number: ");
  number1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  number2 = int.parse(stdin.readLineSync()!);

  int sum = sumOfNumbers(number1, number2);
  print("The sum of $number1 and $number2 is $sum");
}
