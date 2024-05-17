import 'dart:io';

const double speedOfLight = 299792458;

void main() {
  print("Enter the distance light will travel (in meters): ");
  String userInput = stdin.readLineSync()!;

  double distance = double.parse(userInput);

  double timeInSeconds = distance / speedOfLight;

  print(
      "It will take light approximately $timeInSeconds seconds to travel $distance meters.");
}
