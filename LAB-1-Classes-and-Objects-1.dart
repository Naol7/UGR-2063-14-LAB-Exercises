class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
  // Create a Person object
  Person person1 = Person("Naol Gezahegne", 20, "Holeta");

  // Access and print the attributes of person1
  print("Person 1:");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");

  // Modify the attributes of person1
  person1.name = "Henok Kassa";
  person1.age = 35;
  person1.address = "Addis Ababa";

  // Access and print the modified attributes of person1
  print("\nModified Person 1:");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");

  // Create another Person object
  Person person2 = Person("Abebe Damtew", 25, "Jimma");

  // Access and print the attributes of person2
  print("\nPerson 2:");
  print("Name: ${person2.name}");
  print("Age: ${person2.age}");
  print("Address: ${person2.address}");
}
