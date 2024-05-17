class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a Product object
  Product product = Product("Apple", 1.5, 10);

  // Calculate and print the total cost of the product
  double totalCost = product.calculateTotalCost();

  print("Product:");
  print("Name: ${product.name}");
  print("Price: ${product.price}");
  print("Quantity: ${product.quantity}");
  print("Total Cost: $totalCost");
}
