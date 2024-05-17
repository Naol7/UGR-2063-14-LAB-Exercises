void main() {
  // Create a list of hobbies
  List<String> hobbies = ['Reading', 'Hiking', 'Photography'];

  // Print the initial list
  print('Initial list: $hobbies');

  // Add a hobby to the list
  hobbies.add('Coding');
  print('After adding a hobby: $hobbies');

  // Remove a hobby from the list
  hobbies.remove('Hiking');
  print('After removing a hobby: $hobbies');

  // Sort the list
  hobbies.sort();
  print('After sorting: $hobbies');

  // Check if the list is empty
  bool isEmpty = hobbies.isEmpty;
  print('Is the list empty? $isEmpty');
}
