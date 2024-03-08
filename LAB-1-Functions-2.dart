import 'dart:math';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

List<int> findPrimesInRange(int start, int end) {
  List<int> primes = [];

  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      primes.add(number);
    }
  }

  return primes;
}

void main() {
  int start = 1;
  int end = 50;

  List<int> primes = findPrimesInRange(start, end);

  print("Prime numbers between $start and $end:");
  print(primes);
}
