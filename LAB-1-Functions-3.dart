String reverseString(String input) {
  List<String> characters = input.split('');
  List<String> reversedCharacters = characters.reversed.toList();
  String reversedString = reversedCharacters.join('');
  return reversedString;
}

void main() {
  String inputString = "Flutter";
  String reversedString = reverseString(inputString);
  print("Original string: $inputString");
  print("Reversed string: $reversedString");
}
