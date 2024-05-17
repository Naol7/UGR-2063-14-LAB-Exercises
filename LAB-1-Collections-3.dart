void main() {
  // Create a map to store student names and their marks
  Map<String, int> studentMarks = {
    'Naol': 85,
    'Henok': 90,
    'Chala': 95,
  };

  print('Initial map: $studentMarks');

  // Add a student to the map using putIfAbsent
  studentMarks.putIfAbsent('David', () => 80);
  print('After adding a student: $studentMarks');

  // Iterate over the map using forEach
  print('Student marks:');
  studentMarks.forEach((student, mark) {
    print('$student: $mark');
  });

  // Check for a student in the map using containsKey
  bool hasEve = studentMarks.containsKey('Eve');
  print('Does the map contain Eve? $hasEve');
}
