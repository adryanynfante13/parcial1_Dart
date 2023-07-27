void  main(List<String> args) {

void Algoritmo_factorial(int n) {
  int result = 1;
  if (n != 0) {
    for (int i = 1; i <= n; i++) {
      result *= i;
    }
  }
  print('El factorial es: $result');
}
}