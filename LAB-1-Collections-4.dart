void main() {
  List<Map<String, dynamic>> shoppingCart = [];

  // Function to add an item to the cart
  void addItem(String productName, double price, int quantity) {
    Map<String, dynamic> item = {
      'name': productName,
      'price': price,
      'quantity': quantity,
    };
    shoppingCart.add(item);
    print('Added $productName to the cart.');
  }

  // Function to remove an item from the cart
  void removeItem(String productName) {
    shoppingCart.removeWhere((item) => item['name'] == productName);
    print('Removed $productName from the cart.');
  }

  // Function to calculate the total price of the cart
  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var item in shoppingCart) {
      double price = item['price'];
      int quantity = item['quantity'];
      totalPrice += price * quantity;
    }
    return totalPrice;
  }

  // Add items to the cart
  addItem('Product 1', 10.99, 2);
  addItem('Product 2', 5.99, 1);
  addItem('Product 3', 7.49, 3);

  // Calculate and print the total price
  double total = calculateTotalPrice();
  print('Total Price: \$${total.toStringAsFixed(2)}');

  // Remove an item from the cart
  removeItem('Product 2');

  // Calculate and print the updated total price
  total = calculateTotalPrice();
  print('Updated Total Price: \$${total.toStringAsFixed(2)}');
}
