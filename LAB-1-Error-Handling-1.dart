import 'dart:io';

void main() {
  print('Please enter a number:');
  String userInput = stdin.readLineSync() ?? '';

  try {
    int number = int.parse(userInput);
    print('The input has been converted to an integer: $number');
  } catch (e) {
    print('FormatException: The input is not a valid number.');
  }
}
