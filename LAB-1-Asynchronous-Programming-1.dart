import 'dart:async';
import 'dart:math';

// Simulate fetching a quote from a network call
Future<String> fetchRandomQuote() async {
  // Introduce an artificial delay (e.g., 2 seconds)
  await Future.delayed(Duration(seconds: 2));

  // Generate a random quote (you can replace this with actual data)
  final quotes = [
    "Life is what happens when you're busy making other plans.",
    "In three words I can sum up everything I've learned about life: it goes on.",
    "The only way to do great work is to love what you do.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts."
  ];

  final randomIndex = Random().nextInt(quotes.length);
  return quotes[randomIndex];
}

void main() async {
  try {
    final quote = await fetchRandomQuote();
    print('Random Quote: $quote');
  } catch (error) {
    print('Error fetching quote: $error');
  }
}
