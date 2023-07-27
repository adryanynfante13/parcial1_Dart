import 'dart:math';
void main(){

void printNumberPrimes(int amountOfNumbers) {
  int counter = 0;
  int numberToEvaluate = 2;

  while (counter < amountOfNumbers) {
    if (isPrimeNumber(numberToEvaluate)) {
      print(numberToEvaluate);
      counter++;
    }
    numberToEvaluate++;
  }
}

bool isPrimeNumber(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
}