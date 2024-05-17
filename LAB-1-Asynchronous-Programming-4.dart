import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // API key and location for weather data
  String apiKey = 'https://openweathermap.org';
  String location = 'New York';

  try {
    // Fetch weather data from the API
    http.Response response = await http.get(Uri.parse(
        'https://api.weatherapi.com/v1/current.json?key=$apiKey&q=$location'));

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Parse the JSON response
      Map<String, dynamic> data = jsonDecode(response.body);

      // Extract the temperature and weather conditions
      double temperature = data['current']['temp_c'];
      String condition = data['current']['condition']['text'];

      // Display the weather information
      print('Current Temperature: $temperature°C');
      print('Weather Condition: $condition');
    } else {
      print(
          'Failed to fetch weather data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred while fetching weather data: $e');
  }
}
