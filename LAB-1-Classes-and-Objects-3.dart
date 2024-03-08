class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rectangle = Rectangle(5.0, 3.0);

  // Calculate and print the area and perimeter of the rectangle
  double area = rectangle.calculateArea();
  double perimeter = rectangle.calculatePerimeter();

  print("Rectangle:");
  print("Width: ${rectangle.width}");
  print("Height: ${rectangle.height}");
  print("Area: $area");
  print("Perimeter: $perimeter");
}
