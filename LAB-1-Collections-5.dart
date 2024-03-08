class Student {
  String name;
  List<int> marks;

  // Constructor
  Student(this.name, this.marks);

  // Method to calculate the average mark
  double calculateAverage() {
    int total = marks.reduce((value, element) => value + element);
    return total / marks.length;
  }
}

void main() {
  var student = Student('Naol', [85, 90, 95, 100]);
  print('The average mark of ${student.name} is ${student.calculateAverage()}');
}
