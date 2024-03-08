Future<List<String>> fetchDataFromDatabase() async {
  // Simulate a database query with a 2-second delay
  await Future.delayed(Duration(seconds: 2));

  // Return a list of sample data (you can replace this with actual database results)
  return [
    'Naol',
    'Will Smith',
    'Bob Johnson',
    'Emily Blunt',
  ];
}

void main() async {
  try {
    final data = await fetchDataFromDatabase();
    print('Data loaded successfully:');
    for (var item in data) {
      print('- $item');
    }
  } catch (error) {
    print('Error loading data: $error');
  }
}
