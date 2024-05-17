import 'dart:math';

void main() {
  // Create a random number generator
  var rng = Random();

  // Generate a list of 20 random numbers between 1 and 10
  List<int> numbers = List<int>.generate(20, (_) => rng.nextInt(10) + 1);

  print('Original list: $numbers');

  // Use a Set to remove duplicates
  Set<int> uniqueNumbers = numbers.toSet();

  print('Unique numbers: $uniqueNumbers');
}
